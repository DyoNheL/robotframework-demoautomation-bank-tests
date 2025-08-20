from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from robot.libraries.BuiltIn import BuiltIn

class WebDriverLibrary:

    def open_chrome_browser(self, url="https://example.com"):
        options = webdriver.ChromeOptions()
        options.add_argument("--start-maximized")
        service = Service(ChromeDriverManager().install())
        driver = webdriver.Chrome(service=service, options=options)

        # Attach driver instance to SeleniumLibrary
        seleniumlib = BuiltIn().get_library_instance("SeleniumLibrary")
        seleniumlib.register_driver(driver, alias="chrome")

        # Open target URL
        seleniumlib.go_to(url)
