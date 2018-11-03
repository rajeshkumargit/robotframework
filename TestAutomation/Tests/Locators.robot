*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER} ie

*** Test Cases ***
Should be able to search for a product
    open browser  http://amazon.com  ${BROWSER}
    sleep  3s
    click image  Men's Watches. Explore must-have styles for this season.
*** Keywords ***
