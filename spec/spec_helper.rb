require "simplecov"
SimpleCov.start {
  add_filter "/spec/"
  add_filter "/playground/"
}

require "rails"
require "js_from_routes"
require "rspec/given"

puts "------"*10
ENV.each { |k, v| puts "#{k}=#{v}" }
puts "------"*10
unless ENV["CI"] == "true" || ENV["GITHUB_ACTIONS"] == "true"
  require "pry-byebug"
end

$LOAD_PATH.push File.expand_path("../playground", __dir__)
