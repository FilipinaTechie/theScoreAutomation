module PageRoutes
  def navigate_to_favorites(team)
    splash_page.tap_get_started_btn
    splash_page.tap_accept_terms
    splash_page.tap_get_started_btn
    splash_page.tap_continue_btn
    splash_page.tap_disallow_location_btn
    reusable_func.choose_an_option(team)
    splash_page.tap_continue_btn
    splash_page.tap_get_started_btn
  end
end