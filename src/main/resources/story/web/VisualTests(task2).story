Description: Navigate to 5 pages and add visual check for each of them 

Scenario: Take screenshot of registration form 
Given I am on the main application page
When I click on element located `By.xpath(//button[@class="btn btn-wrap btn-primary btn-block px-4"])`

When I establish baseline with `Main_page`


Scenario: Comparing registration form (clicking by another button)
Given I am on the main application page
When I click on element located `By.xpath(//button[@class="btn btn-block btn-secondary"])`
When I compare against baseline with `Main_page`

Scenario: Comparing registration form (clicking by another button)
Given I am on the main application page
When I click on element located `By.xpath(//a[@data-analytics-button="whiteSignupHeroButton"])`
When I compare against baseline with `Main_page`

Scenario: Comparing NewBoardCreation pop up
Given I am on the main application page
When I click on element located `By.xpath(//*[@class="float-right buttons"]/a[1])`
When I sign in as an existing user
When I wait until the page title contains the text 'Trello'

When I click on element located `By.xpath(//span[text()="Create new board"])`
When I establish baseline with `NewBoardCreationPopUp`
When I refresh the page
When I click on element located `By.xpath(//button[@aria-label="Create Board or Team"])`
When I click on element located `By.xpath(//span[text()="Create board"])`
When I compare against baseline with `NewBoardCreationPopUp`