Feature: View All Teams

	As a prospective user of the service
	I should be able to view all teams

	Background: Database is currently empty

	Given the following teams exist:
	|    Name    |     Type      |
	|  Lahore    |   domestic    |
	|  India     | international |

	And I am on the all matches page

	Scenario: View All Teams
	
	When I follow "View All Teams"
	Then I should see Lahore
	And I should see India
