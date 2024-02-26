require_relative '../screens/splash_screen'

Given('I have launched the app') do
  splash_page.click_get_started_btn
end

When('I do something') do
  splash_page.click_get_started_btn
end

Then('I expect to see something') do
  # Verify an element is present
end
