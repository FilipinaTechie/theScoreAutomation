require_relative 'page_routes'

Given('I navigate to favorites') do
  navigate_to_favorites('Golden State Warriors')
end

When('I tap on the search field') do
  dashboard_screen.tap_search_field
end

When('I search for {string}') do |string|
  reusable_func.search_for_options(string)
  reusable_func.choose_an_option(string)
end

Then('I should see the {string} screen displayed') do |string|
  team_screen.assert_team_name(string)
end

When('I tap on the {string} sub-tab') do |string|
  reusable_func.choose_a_tab(string)
end

Then('I should be on the {string} sub-tab') do |string|
  team_screen.assert_offense_stats_header(string)
end

When('I perform back navigation') do
  reusable_func.navigate_back_btn
end

Then('I should be returned to the previous page correctly') do
  reusable_func.assert_search_for_options_tf
end
