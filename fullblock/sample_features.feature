Feature: Block all instances of a users messages

  As a user of Twitter
  I want none of the tweets of the target user
  To ever show up in my timeline
  Even if retweeted by others
  And I should also have the option
  To block all tweets that mention them

  Scenario: Block a user

    Given I have blocked a user
    When I see my timeline
    Then I should not see any of their messages

  Scenario: Block a user and retweets of them

    Given I have blocked a user
    And someone I follow retweets their message
    When I see my timeline
    Then I should not see that retweet

  Scenario: Block a user and mentions of them

    Given I have blocked a user
    And I have chosen to block mentions of them as well
    And someone I follow mentions them in their message
    And I am also mentioned in that message
    When I see my timeline
    Then I should not see that message