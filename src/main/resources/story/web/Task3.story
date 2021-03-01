Description: Sigh In story

Scenario: Open application Trello.com
Given I am on the main application page

Scenario: Verify page title
Then the page title is equal to 'Trello'

Scenario: Finding element(captcha)
When I find = `1` elements by `By.xpath(//div[@class="d-none d-md-block col-md-7 pr-md-2"]/input[@name="email"])` and for each element do
|step|
|When I enter `#{generate(regexify'[a-z]{7}')}@gmail.com` in field located `By.xpath(//div[@class="d-none d-md-block col-md-7 pr-md-2"]/input[@name="email"])`|
|When I click on element located `By.xpath(//div[@class="col-md-5 pl-md-2"]/button[@type="submit"])`|
|When I enter `#{generate(Name.firstName')}` in field located `By.xpath(//*[@id="displayName"])`|
|When I enter `#{generate(regexify'[a-z]{10}')}` in field located `By.xpath(//*[@id="password"])`|
|When I click on element located `By.xpath(//*[@id="signup-submit"])`|

When I wait until the page title contains the text 'Atlassian'

When I wait until element located `By.xpath(//html/body/div[3]/div[2]/iframe)` appears

Scenario: Creating new Board (in case when total boards q-ty<10)
Given I am on the main application page
When I click on element located `By.xpath(//*[@class="float-right buttons"]/a[1])`
When I sign in as an existing user
When I wait until the page title contains the text 'Boards | Trello'
When I find < '11' elements By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[2]/div/div/div[3]/div[2]/ul/li) and while they exist do up to 2 iteration of
|step|
|When I click on element located `By.xpath(//span[text()="Create new board"])`|
|When I enter `#{generate(regexify'[a-z]{7}')}` in field located `By.xpath(//input[@data-test-id="create-board-title-input"])`|
|When I wait until element located `By.xpath(//button[text()="Create Board"])` appears|
|When I click on element located `By.xpath(//button[text()="Create Board"])`|
|When I click on element located `By.xpath(//span[@aria-label="HouseIcon"])`|

