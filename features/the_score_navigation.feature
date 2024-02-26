Feature: Verify navigation and information for League, Team, or Player screens

  As a user of theScore app
  I want to navigate to specific screen for leagues, teams, or players
  And verify that the information is displayed correctly

  Background:
    Given I navigate to favorites

  Scenario Outline: Open and Verify League, Team, or Player Page
    When I tap on the search field
    When I search for "<Name>"
    Then I should see the "<Name>" screen displayed

    When I tap on the "<SubTab>" sub-tab
    When I perform back navigation
    Then I should be returned to the previous page correctly

    Examples:
      | Type      | Name           | SubTab         |
      | LEAGUE    | Dallas Cowboys | TEAM STATS     |
#      | TEAMS     | Liverpool FC   | Stats          |
#      | PLAYERS   | Lionel Messi   | Career Stats   |
