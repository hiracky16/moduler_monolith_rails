require 'draper'

Draper.configure do |config|
  config.default_controller = Users::ApplicationController
end
