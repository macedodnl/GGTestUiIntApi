require 'selenium-webdriver'

class HomeSisComPage < BaseTest

    def visitar_home
        @driver.navigate.to AUTH_URL
    end
end