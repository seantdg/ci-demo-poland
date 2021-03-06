Feature: 
	As an API User
	I want to do currency conversion
	So that I can get the best rate

	Scenario Outline: I should get an error for invalid date format
		When I request all exchange rates for <invalid_date>
		Then I should get a 400 error with "Invalid date" message and code "400.01.001"

		Examples:
			| invalid_date |
			| 2            |
			| 20           |
			| 2016         |
			| 2016-        |
			| 2016-01      |
			| 2016-01-     |
			| 2016-01-1    |
			| abcd         |
