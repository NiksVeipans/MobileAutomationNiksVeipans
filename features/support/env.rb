require "appium_lib"
require "cucumber"

opts = {
    caps: {
        deviceName: 'Test Device',
        automationName: 'UiAutomator2',
        platformName: 'Android',
        udid: 'emulator-5554',
        app: '/Users/niksveipans/Downloads/Foreveryng.apk',
        autoGrantPermissions: true
    },
    appium_lib: {
        server_url: "http://localhost:4723/wd/hub"
    }
}

$driver = Appium::Driver.new(opts, true)
Selenium::WebDriver.logger.level = :error

Before do
  @screens = Screens.new
  $driver.start_driver
end