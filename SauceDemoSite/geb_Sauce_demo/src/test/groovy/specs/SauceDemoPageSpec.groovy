package specs


import pages.SauceDemoHomePage
import pages.SauceProductsPage
import geb.spock.GebSpec
import spock.lang.Stepwise

@Stepwise
class SauceDemoPageSpec extends GebSpec {

    def "...and user can login on the Sauce Demo page"() {
        given: to SauceDemoHomePage
        when: signIn "standard_user", "secret_sauce"
        then: at SauceProductsPage

    }

    def "...and user is locked out of the Sauce Demo site"() {
        given: to SauceDemoHomePage
        sleep(3000)
        when: lockedOutUser "locked_out_user", "secret_sauce"
        sleep(3000)
        then: lockedOutUseMessage == true

    }


}
