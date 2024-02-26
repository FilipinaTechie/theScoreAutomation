require 'appium_lib'

# #Load selectors based on platform
# case ENV['PLATFORM']
# when 'android'
#   require '../android_obj_repo'
# else
#   raise "Unsupported platform: #{ENV['PLATFORM']}"
# end

Before do
  if ENV['TEST_ENV'] == 'sauce'
    opts = {
      caps: {
        "platformName" => "android",
        "appium:automationName" => "uiautomator2",
        "appium:platformVersion" => "10.0",
        "appium:deviceName" => "Android GoogleAPI Emulator",
        "appium:app" => "storage:filename=com.fivemobile.thescore.apk",
        "appium:noReset" => false,
        "appium:newCommandTimeout" => 3600,
        'sauce:options' => {
          'appium_version' => '2.0.0',
          'automationVersion' => '3.0.0',
          'username' => 'oauth-cbbersamin-f2f15',
          'accessKey' => '7fa1651e-e1b0-4208-a37b-dfa4464a7335',
          'name' => 'Saucelab',
          'deviceOrientation' => 'PORTRAIT'
        }
      },
      appium_lib: {
        server_url: 'https://ondemand.us-west-1.saucelabs.com:443/wd/hub'
      }
    }
  else
    # # Corrected local configuration
    # appium_txt = File.join(Dir.pwd, 'appium.txt')
    # opts = Appium.load_appium_txt(file: appium_txt, verbose: true)
    opts = {
      caps: {
        "platformName" => "Android",
        "appium:automationName" => "UiAutomator2",
        "appium:platformVersion" => "14",
        "appium:deviceName" => "Pixel 6",
        "appium:app" => "/Users/davidtorquiano/Downloads/com.fivemobile.thescore.apk",
        "appium:noReset" => false,
        "appium:newCommandTimeout" => 3600,
      },
      appium_lib: {
        server_url: 'http://192.168.1.78:4723/'
      }
    }
  end

  $driver = Appium::Driver.new(opts, true)
  $driver.start_driver
  $driver.extend Appium::Core::Base::Device
end

After do
  $driver.quit_driver
end
