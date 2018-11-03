*** Settings ***
Documentation  Some info about test suite

Library  SeleniumLibrary
#Library  SauceLabs

#Test Setup  Open test browser
#Test Teardown  Close test browser

*** Variables ***
${TestBrowser}  ie
${REMOTE_URL}
#http://rkthangaraj:e9b6fb7e-8955-470c-ab95-590081361ef2@ondemand.saucelabs.com:80/wd/hub
${DESIRED_CAPABILITIES}
#name:AmazonTest,platform:windows 10,browserName:chrome,version:70

*** Test Cases ***
Users should be required to sign in when checking out
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    open browser  http://www.amazon.com  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  assasins creed odyssey
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for
    click link  css=#result_1 a.s-access-detail-page
    wait until page contains  Back to search results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart
    click link  Cart
    page should contain element  a-autoid-0-announce
    element text should be  a-autoid-0-announce  1
    sleep  3s
    close browser
*** Keywords ***

##Open test browser
    #Open browser  about:  ${TestBrowser}
   # ...  remote_url=${REMOTE_URL}
   # ...  desired_capabilities=${DESIRED_CAPABILITIES}

#Close test browser
    #Run keyword if  '${REMOTE_URL}' != ''
   # ...  Report Sauce status
  #  ...  ${SUITE_NAME} | ${TEST_NAME}
 #   ...  ${TEST_STATUS}  ${TEST_TAGS}  ${REMOTE_URL}
    #Close all browsers
