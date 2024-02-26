require 'appium_lib'

#Load selectors based on platform
case ENV['PLATFORM']
when 'android'
  require '../android_obj_repo'
when 'ios'
  require '../android_obj_repo'
else
  raise "Unsupported platform: #{ENV['PLATFORM']}"
end

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
          'username' => ENV['SAUCE_NAME'],
          'accessKey' => ENV['SAUCE_KEY'],
          'name' => 'Saucelab',
          'deviceOrientation' => 'PORTRAIT'
        }
      },
      appium_lib: {
        server_url: 'https://ondemand.us-west-1.saucelabs.com:443/wd/hub'
      }
    }
  else
    # Loads appium.txt file for local run
    appium_txt = File.join(Dir.pwd, 'appium.txt')
    opts = Appium.load_appium_txt(file: appium_txt, verbose: true)
  end

  $driver = Appium::Driver.new(opts, true)
  $driver.start_driver
  $driver.extend Appium::Core::Base::Device
end

After do
  $driver.quit_driver
end
