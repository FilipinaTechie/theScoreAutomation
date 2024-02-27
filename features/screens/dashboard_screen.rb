require_relative '../android_obj_repo'
require_relative '../ios_obj_repo'
require_relative '../text_data'

class DashboardScreen
  include ScreenHelper
  def tap_favorite_star_btn
    common_func.wait_for_element_id(OR::STAR_ICON)
    $driver.find_element(:id, OR::STAR_ICON).click
  end

  def tap_search_field
    common_func.wait_for_element_id(OR::DASHBOARD_SEARCH_BAR_VIEW)
    $driver.find_element(:id, OR::DASHBOARD_SEARCH_BAR_VIEW).click
  end
end
