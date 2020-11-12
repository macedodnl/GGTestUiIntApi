require 'selenium-webdriver'
require "base64"
require "report_builder"
require 'cucumber'

class BaseTest


  def initialize(driver)
    @driver = driver
  end

  def print()
    shot_file = @driver.save_screenshot("log/screenshot.png")
    return shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
  end

  def close_browser()
    @driver.bridge.close
  end

end
