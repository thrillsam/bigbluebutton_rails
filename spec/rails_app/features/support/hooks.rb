Before do
  FeaturesConfig.load # load the global configs
end

After do |scenario|
  BigBlueButtonBot.finalize
end

Before('@webkit') do
  Capybara.current_driver = :webkit
end
After('@webkit') do
  Capybara.use_default_driver
end
