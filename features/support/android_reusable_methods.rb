require_relative '../android_obj_repo'
require_relative '../ios_obj_repo'

# Reusable methods for android specific flow
class AndroidReusableFunc
  include ScreenHelper
  def choose_an_option(option)
    element = "//android.widget.TextView[@resource-id='com.fivemobile.thescore:id/txt_name' and @text='#{option}']"
    common_func.wait_for_element_xpath(element)
    $driver.find_element(:xpath, element).click
  end

  def assert_team_name(team)
    el = $driver.find_element(:id, TEAM_NAME_TXT)
    assert_equal(team, el.text, "Texts do not match")
  end

  def choose_a_tab(tab)
    element = "//android.widget.TextView[@text='#{tab}']"
    common_func.wait_for_element_xpath(element)
    $driver.find_element(:xpath, element).click
  end

  def assert_search_for_options_tf
    common_func.wait_for_element_id(OR::MAIN_SEARCH_TF)
  end

  def search_for_options(opts)
    common_func.wait_for_element_id(OR::MAIN_SEARCH_TF)
    $driver.find_element(:id, OR::MAIN_SEARCH_TF).send_keys(opts)
  end

  def navigate_back_btn
    common_func.wait_for_element_accessibility_id(OR::NAVIGATE_BACK_BTN)
    $driver.find_element(:accessibility_id, OR::NAVIGATE_BACK_BTN ).click
  end
end