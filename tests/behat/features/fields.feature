@tide
Feature: Fields for Page content type

  Ensure that Page content has the expected fields.

  @api @nosuggest
  Scenario: The content type has the expected fields (and labels where we can use them).
    Given I am logged in as a user with the "create page content" permission
    When I visit "node/add/page"
    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And I see field "Body"
    And I should see a "textarea#edit-body-0-value" element
    And I should see a "textarea#edit-body-0-value.required" element

    And I see field "Tags"
    And I should see an "input#edit-field-tags-0-target-id" element
    And I should not see an "input#edit-field-tags-0-target-id.required" element

    And I see field "Topic"
    And I should see an "input#edit-field-topic-0-target-id" element
    And I should see an "input#edit-field-topic-0-target-id.required" element

    And the "#edit-field-featured-image" element should contain "Feature Image"
    And I should see an "input#edit-field-featured-image-entity-browser-entity-browser-open-modal" element

    And I see field "Introduction Text"
    And I should see an "textarea#edit-field-page-intro-text-0-value" element
    And I should not see an "textarea#edit-field-page-intro-text-0-value.required" element

    And I see field "Show Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    And I see field "Show Related Content?"
    And I should see an "input#edit-field-show-related-content-value" element
    And I should not see an "input#edit-field-show-related-content-value.required" element

    And I should see text matching "Related links"
    And I should see text matching "No Link added yet."
    And I should see the button "Add Related links" in the "content" region

    And I should see text matching "What's Next"
    And I should see text matching "No What's Next block added yet."
    And I should see the button "Add Link" in the "content" region

    And I see field "Show What's Next?"
    And I should see an "input#edit-field-show-whats-next-value" element
    And I should not see an "input#edit-field-show-whats-next-value.required" element

    And I see field "Show Table of Content?"
    And I should see an "input#edit-field-show-table-of-content-value" element
    And I should not see an "input#edit-field-show-table-of-content.required" element

  @api @suggest
  Scenario: The content type has the expected fields (and labels where we can use them) including from suggested modules.
    Given I am logged in as a user with the "create page content" permission
    When I visit "node/add/page"
    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And I see field "Body"
    And I should see a "textarea#edit-body-0-value" element
    And I should see a "textarea#edit-body-0-value.required" element

    And I see field "Tags"
    And I should see an "input#edit-field-tags-0-target-id" element
    And I should not see an "input#edit-field-tags-0-target-id.required" element

    And I see field "Topic"
    And I should see an "input#edit-field-topic-0-target-id" element
    And I should see an "input#edit-field-topic-0-target-id.required" element

    And the "#edit-field-featured-image" element should contain "Feature Image"
    And I should see an "input#edit-field-featured-image-entity-browser-entity-browser-open-modal" element

    And I see field "Introduction Text"
    And I should see an "textarea#edit-field-page-intro-text-0-value" element
    And I should not see an "textarea#edit-field-page-intro-text-0-value.required" element

    And I see field "Show Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    And I see field "Show Content Rating?"
    And I should see an "input#edit-field-show-content-rating-value" element
    And I should not see an "input#edit-field-show-content-rating-value.required" element

    And I see field "Show Related Content?"
    And I should see an "input#edit-field-show-related-content-value" element
    And I should not see an "input#edit-field-show-related-content-value.required" element

    And I should see text matching "Related links"
    And I should see text matching "No Link added yet."
    And I should see the button "Add Related links" in the "content" region

    And I should see text matching "What's Next"
    And I should see text matching "No What's Next block added yet."
    And I should see the button "Add Link" in the "content" region

    And I see field "Show What's Next?"
    And I should see an "input#edit-field-show-whats-next-value" element
    And I should not see an "input#edit-field-show-whats-next-value.required" element

    And I see field "Show Table of Content?"
    And I should see an "input#edit-field-show-table-of-content-value" element
    And I should not see an "input#edit-field-show-table-of-content.required" element

  @api
  Scenario: The content type has the menu settings.
    Given I am logged in as a user with the "create page content, administer menu" permission
    When I visit "node/add/page"
    And I should see the text "Menu settings"
    And I see field "Provide a menu link"
