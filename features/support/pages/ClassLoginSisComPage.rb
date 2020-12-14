require "selenium-webdriver"

class LoginSisComPage < BaseTest

    def map
        sleep 1
        #mapeamento de elementos de pagina
        @@txtUser = @driver.find_element(:id, 'nomeUsuario')
        @@txtPass = @driver.find_element(:id, 'senha')
        @@btnEntrar = @driver.find_element(:class, "elementos_soltos")
    end

    def visitar
        @driver.navigate.to BASE_URL
    end

    def visitarPrd
        @driver.navigate.to BASE_URL_PRD
    end

    def setuser(user)
        map
        @@txtUser.send_keys user
    end

    def setpass(pass)
        map
        @@txtPass.send_keys pass
    end

    def autenticar
        map
        @@btnEntrar.click
    end

    def loginPadrao
        setuser("gisele.meta")
        sleep 0.3
        setpass("mEgI0202")
        sleep 0.3
        autenticar
    end

    def loginPadraoPrd
    setuser("gisele.meta")
    sleep 0.3
    setpass("Gisf1808")
    sleep 0.3
    autenticar
    end

    def loginPadraoiePrd
        setuser("gisele.meta")
        sleep 0.3
        @@txtPass.send_keys "Gisf1808", :return
        # sleep 0.3
    end

    def aceite
        @driver.switch_to.alert.accept
    end
end