Feature: Todos
    As a WCCI Student
    I want a place to keep track of my Todos
    So that I can learn entity framework code first & migrations

    Background: 
        Given I am at the home screen

    Scenario: Viewing all Todos
        Given the following todos exist:
            | Name         |
            | Feed the dog |
            | Feed the cat |
        When I launch the app 
        Then I should be at the home screen
        Then I should see the following todos:
            | Name         |
            | Feed the dog |
            | Feed the cat |

    Scenario: Refreshing my todos
        Given the following todos exist:
            | Name         |
            | Feed the dog |
            | Feed the cat |
        When I select the following option: "Refresh"
        Then the screen should refresh and show an updated list of Todos

    Scenario: Viewing details of a specific todo
        Given the following Todos exist:
            | Name | Details |
            | Cat  | Feed it |
        When I view details for todo number "1"
        Then I should see the following details:
            | Name | Details |
            | Cat  | Feed it |

    Scenario: Deleting a todo
        Given the following Todos exist:
            | Name         |
            | Feed the dog |
            | Feed the cat |
        When I delete todo number "1"
        Then I am at the home screen
        And I should see the following list of Todos:
            | Name         |
            | Feed the cat |

    Scenario: Adding a new todo
        Given the following todos exist:
            | Name         |
            | Feed the dog |
        When I create the following Todo:
            | Name            |
            | Feed the rabbit |
        Then I am at the home screen
        And I should see the following list of Todos:
            | Name            |
            | Feed the cat    |
            | Feed the rabbit |

# Next, write a scenario for updating a todo.
# After you've written the scenario here,
# go ahead and implement the code to make that scenario pass.