require_relative '../android_obj_repo'
require_relative '../ios_obj_repo'
require_relative '../text_data'

class SplashScreen
  def tap_get_started_btn
    # @driver.find_element(:id, 'com.fivemobile.thescore:id/action_button_text').click()
    $driver.find_element(:id, OR::GET_STARTED_BTN).click
  end

  def tap_sign_in_link
    $driver.find_element(:id, OR::SIGN_IN_LINK).click
  end

  def assert_welcome_icon
    $driver.find_element(:id, OR::SCORE_ICON_WELCOME).click
  end

  def tap_continue_btn
    $driver.find_element(:id, OR::CONTINUE_BTN).click
  end

  def tap_disallow_location_btn
    $driver.find_element(:id,OR::DISALLOW_LOCATION_BTN).click
  end

  def assert_notification_permission_text
    el = $driver.find_element(:id, OR::ALLOW_PERMISSION_NOTIFICATIONS).text
    assert_equal(TD::ALLOW_THESCORE_NOTIFICATION, el, "Texts do not match")
  end

  def tap_allow_notification_permission
    $driver.find_element(:id, OR::ALLOW_PERMISSION_BTN).click
  end

  def tap_disallow_notification_permission
    puts $driver.find_element(:id, OR::DISALLOW_PERMISSION_BTN).displayed?
    $driver.find_element(:id, OR::DISALLOW_PERMISSION_BTN).click
  end
end
