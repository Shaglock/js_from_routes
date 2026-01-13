require "vanilla/config/application"
require "vanilla/config/routes"

describe JsFromRoutes::ControllerRoutes do
  # Array of controller paths to be tested
  let(:controllers) { %w[comments settings/user_preferences video_clips some/deeply/nested/controller] }
  # Array of expected filenames in kebab-case format for each controller
  let(:basenames_kebab) { %w[comments-api.js settings/user-preferences-api.js video-clips-api.js some/deeply/nested/controller-api.js] }
  # Array of expected filenames in CamelCase format for each controller
  let(:basenames_camel) { %w[CommentsApi.js Settings/UserPreferencesApi.js VideoClipsApi.js Some/Deeply/Nested/ControllerApi.js] }
  let(:routes) { [] }
  let(:config) { JsFromRoutes::Configuration.new(::Rails.root || Pathname.new(Dir.pwd)) }

  describe "#basename" do
    context "with kebab-case filename configuration" do
      it "returns the correct basename" do
        config.filename_for_controller = ->(controller:, config:) {
          "#{controller.underscore.tr('_', '-')}-#{config.file_suffix.downcase}"
        }

        controllers.each_with_index do |controller, index|
          controller_routes = described_class.new(controller, routes, config)
          expect(controller_routes.send(:basename)).to eq(basenames_kebab[index])
        end
      end
    end

    context "with camel-case filename configuration" do
      it "returns the correct basename" do
        config.filename_for_controller = ->(controller:, config:) {
          "#{controller.camelize}#{config.file_suffix}".tr_s(":", "/")
        }

        controllers.each_with_index do |controller, index|
          controller_routes = described_class.new(controller, routes, config)
          expect(controller_routes.send(:basename)).to eq(basenames_camel[index])
        end
      end
    end

    context "when filename_for_controller is default" do
      it "returns the correct basename" do
        controllers.each_with_index do |controller, index|
          controller_routes = described_class.new(controller, routes, config)
          expect(controller_routes.send(:basename)).to eq(basenames_camel[index])
        end
      end
    end

    context "with custom filename configuration" do
      it "returns the correct basename" do
        config.filename_for_controller = ->(controller:, config:) {
          "custom_#{controller.underscore}_#{config.file_suffix}"
        }

        controller_routes = described_class.new("comments", routes, config)
        expect(controller_routes.send(:basename)).to eq("custom_comments_Api.js")
      end
    end
  end
end
