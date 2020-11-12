require 'selenium-webdriver'

class HomePage < BaseTest

    def visitar_home
        @driver.navigate.to AUTH_URL
    end
end