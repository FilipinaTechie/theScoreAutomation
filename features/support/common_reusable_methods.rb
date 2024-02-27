require_relative '../android_obj_repo'
require_relative '../ios_obj_repo'

# Reusable methods for common flow
class CommonReusableFunc
  def wait_for_element_id(element, timeout: 30)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    wait.until { $driver.find_element(:id, element).displayed? }
  end

  def wait_for_element_xpath(element, timeout: 30)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    wait.until { $driver.find_element(:xpath, element).displayed? }
  end

  def wait_for_element_accessibility_id(element, timeout: 30)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    wait.until { $driver.find_element(:accessibility_id, element).displayed? }
  end
end