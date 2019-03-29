package pages
import geb.Page


class SauceProductsPage extends Page  {

    static url = "/inventory.html"

    static at = {
        productsHeading { $("#inventory_filter_container > div") }

    }

    static content = {

        //Body Content
        productsHeading { $("#inventory_filter_container > div") }

    }

}
