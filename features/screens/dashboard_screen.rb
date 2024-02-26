require_relative '../android_obj_repo'
require_relative '../ios_obj_repo'
require_relative '../text_data'

class DashboardScreen
  def tap_favorite_star_btn
    $driver.find_element(:id, OR::STAR_ICON).click
  end

  def tap_search_field
    $driver.wait(timeout: 10) { $driver.find_element(:id, OR::DASHBOARD_SEARCH_BAR_VIEW).displayed? }
    $driver.find_element(:id, OR::DASHBOARD_SEARCH_BAR_VIEW).click
  end
end
