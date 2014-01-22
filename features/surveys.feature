Feature: Surveys
  as a user
  I want to manage surveys
  so I can make them useful

  Scenario: Creating Surveys
    When a user creates a new survey
    Then they see the survey they created
    And the survey is listed on the survey index

  Scenario: Editing Surveys
    Given a user has created a survey
    When a user edits the survey
    Then they see their changes