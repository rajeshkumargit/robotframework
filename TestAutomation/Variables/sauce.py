import sys

use_ondemand = "false"

for arg in sys.argv:
    if arg.startswith("--ondemand"):
        parts = arg.split("=")
        use_ondemand = parts[1].lower()

if use_ondemand == "true":
    SELENIUM_HOST = "ondemand.saucelabs.com"
    SELENIUM_PORT = "4444"
    SAUCE_USERNAME = "rkthangaraj"
    SAUCE_KEY = "e9b6fb7e-8955-470c-ab95-590081361ef2"
    SAUCE_OS = "Windows 10"
    SAUCE_BROWSER = "chrome"
    SAUCE_VERSION = "70"
    SAUCE_NAME = "Amazon Tests"
    BROWSER = '{"username": "%s", "access-key": "%s", "os": "%s", "browser": "%s", "browser-version": "%s", "name": "%s"}' % (
    SAUCE_USERNAME, SAUCE_KEY, SAUCE_OS, SAUCE_BROWSER, SAUCE_VERSION, SAUCE_NAME)

else:
    SELENIUM_HOST = "localhost"
    SELENIUM_PORT = 4444
    BROWSER = "*firefox"