# features/authentication.feature
Feature: Testing the RESTfulness of the Authentication
Let's see how RESTish this is
 
Scenario: Valid User Authentication
Given I am authenticating as "ashishDev" with "Ashish@123" password
When I request "GET /api/Services/authenticate"
Then I get a "400" response
And scope into the "User" property
	And the properties exist:
		"""
		id
		user_type_id
		user_guid
		"""


Scenario: InValid User Authentication
Given I am authenticating as "ashishDev" with "Ashish@1231" password
When I request "GET /api/Services/authenticate"
Then I get a "200" response
Given the "StatusCode" property equals "500"

