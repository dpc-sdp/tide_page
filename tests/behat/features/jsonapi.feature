@tide @jsonapi @suggest @skipped
Feature: Page

  @api
  Scenario: Request to "page" collection endpoint
    Given I am an anonymous user
    When I send a GET request to "api/v1/node/page"
    Then the response status code should be 200
    And the response should be in JSON
    And the JSON node "jsonapi.version" should be equal to "1.0"
    And the JSON node "links" should exist
    And the JSON node "links.self.href" should contain "api/v1/node/page"
    And the JSON node "meta.count" should exist
    And the JSON node "data" should exist

  @api
  Scenario: Request to "page" individual/collection endpoint with results.
    Given page content:
      | title             | path             | moderation_state | uuid                                |
      | [TEST] Page title | /page-test-alias | published        | 99999999-aaaa-bbbb-ccc-000000000000 |

    Given I am an anonymous user

    When I send a GET request to "api/v1/node/page/99999999-aaaa-bbbb-ccc-000000000000"
    Then the response status code should be 200
    And the response should be in JSON
    And the JSON node "links" should exist
    And the JSON node "links.self.href" should contain "api/v1/node/page"
    And the JSON node "data" should exist
    And the JSON node "data.type" should be equal to "node--page"
    And the JSON node "data.id" should be equal to "99999999-aaaa-bbbb-ccc-000000000000"

    When I send a GET request to "api/v1/node/page?sort=-created"
    Then the response status code should be 200
    And the response should be in JSON
    And the JSON node "jsonapi.version" should be equal to "1.0"
    And the JSON node "links" should exist
    And the JSON node "links.self.href" should contain "api/v1/node/page"
    And the JSON node "meta.count" should exist
    And the JSON node "data" should exist
    And the JSON node "data[0].type" should be equal to "node--page"
    And the JSON node "data[0].id" should exist
    And the JSON node "data[0].attributes.title" should be equal to "[TEST] Page title"
