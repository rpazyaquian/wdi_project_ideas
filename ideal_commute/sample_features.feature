Feature: Determine whether to take the C train or D train

  As a commuter on the Green Line
  And in the interest of getting to class on time
  I would like to know if I should take
  The C train or the D train in the morning
  Based on the time it takes to get to South Station
  Including walking time

  Scenario: C train is quicker

    Given that the C train will be quicker
    When I ask for the better route
    Then the program will suggest the C train

  Scenario: D train is quicker

    Given that the D train will be quicker
    When I ask for the better route
    Then the program will suggest the D train