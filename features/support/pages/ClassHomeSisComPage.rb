require 'selenium-webdriver'

class HomeSisComPage < BaseTest

    def visitar_home
        @driver.navigate.to AUTH_URL
    end

    def visitar_home_Prd
        @driver.navigate.to AUTH_URL_PRD
    end
end