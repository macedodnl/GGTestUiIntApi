require "selenium-webdriver"

class LoginPage < BaseTest

    def visitar
        @driver.navigate.to BASE_URL
    end

    def setuser(user)
        @driver.find_element(name: "nomeUsuario").send_keys(user)
    end

    def setpass(pass)
        @driver.find_element(name: "senha").send_keys(pass)
    end

    def autenticar
        sleep 0.3
        @driver.find_element(class: "elementos_soltos").click
    end

    def loginPadrao
        setuser("gisele.meta")
        sleep 0.3
        setpass("mEgI0202")
        sleep 0.3
        autenticar
    end

    def aceite
        @driver.switch_to.alert.accept
    end
end