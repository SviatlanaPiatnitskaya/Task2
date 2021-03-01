Description: Sigh In story

Scenario: Open application Trello.com
Given I am on the main application page

Scenario: Verify page title
Then the page title is equal to 'Trello'

Scenario: Sign In (with composite steps) 
When I click on element located `By.xpath(//*[@class="float-right buttons"]/a[1])`
When I sign in as an existing user
When I wait until the page title contains the text 'Trello'
Then the page with the URL containing 'boards' is loaded