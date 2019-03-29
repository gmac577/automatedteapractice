package pages
import geb.Page


class SauceDemoHomePage extends Page {

    static url = "/index.html"

    static at = { title == "Swag Labs" }

    static content = {

        usernameTextField { $("#user-name")}
        userpasswordTextField { $("#password")}
        loginButton { $("#login_button_container > div > form > input.btn_action")}
        lockedOUtUserError { $("#login_button_container > div > form > h3")}

    }

    void signIn(username, password) {
        waitFor(wait: true) { usernameTextField.displayed }
        usernameTextField.value(username)
        userpasswordTextField.value(password)
        loginButton.click()
    }

    void lockedOutUser(username, password) {
        waitFor(wait: true) { usernameTextField.displayed }
        usernameTextField.value(username)
        userpasswordTextField.value(password)
        loginButton.click()
    }

    void lockedOutUseMessage() {
        lockedOUtUserError.contains("Sorry, this user has been locked out.")
    }

}
