Description: Sigh In story with composite steps

Scenario: Open application Trello.com
Given I am on the main application page

Scenario: Verify page title
Then the page title is equal to 'Trello'

Scenario: Sign In 
When I click on element located `By.xpath(//*[@class="float-right buttons"]/a[1])`
When I enter `${email}` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I wait until the page has the title 'Log in to continue - Log in with Atlassian account'
When I enter `${password}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait until the page title contains the text 'Trello'
Then the page with the URL containing 'boards' is loaded


Scenario: Verify user Profile (not completed)

When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4])`

When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4])`
When I click on element located `By.xpath(//a[@data-test-id="header-member-menu-settings"]/span[text()="Settings"])`
When I wait until the page has the title 'Settings | Trello'
When I click on element located `By.xpath(//a[text()="go to your Atlassian account."])`
When I switch to a new window
When I wait until the page has the title 'Atlassian account'


 





