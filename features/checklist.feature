# features/checklist.feature
Feature: Testing the RESTfulness of the Checklist Data
Let's see how RESTish this is

 
Scenario: Get Checklist By Guid - Valid Data
Given I am authenticating as "ashishDev" with "Ashish@123" password
And I have the payload:
	"""
	{"checklist_guid":"dbbeadb6-85e1-4ae5-9687-ce3ca502e58f"}
	"""
When I request "POST /api/Checklist/getchecklistbyguid.json"
Then I get a "200" response
And scope into the "Checklist" property
	And the properties exist:
		"""
		id
		checklist_guid
		department_id
		das
		"""

Scenario: Get Checklist By Guid - Valid Data
Given I am authenticating as "ashishDev" with "Ashish@123" password
And I have the payload:
	"""
	{"checklist_id":17}
	"""
When I request "POST /api/Checklist/getchecklistnote.json"
Then I get a "200" response
And scope into the "Note" property
	And the properties exist:
		"""
		id
		note_guid
		checklist_id
		"""




