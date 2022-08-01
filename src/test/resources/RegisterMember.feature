Feature: Register Member

  Scenario: Success
    When new member registers with username "donmc" and email "don@improving.com"
    Then should have username "donmc"
    And  should have email "don@improving.com"
    And should have ytdMiles 0
    And should have balanceMiles 10000
    And should have status "Red"

    Scenario: Duplicate Email
      Given a new member registers with username "donmc" and email "don@improving.com"
      When a new member registers with username "donmc" and email "don@chase.com"
      Then should produce error "Duplicate Username! Please try again!"

    Scenario Outline: Bad Emails
      When new member registers with username <username> and email <email>
      Then should produce error "Bad Email!"

      Examples:
        | username | email |
        |"bob"   |"bob"  |
        |"don"   |"bob@bob"|
        |"mary"  |"mary@.com"|
