Feature: Age Validation for Loan Approval

  Background:
   * url "http://localhost:8080/engine-rest/process-definition/key/loanApproval/start"

    Scenario: Age below 18
      Given request { "variables": { "age": {"value":"100"} } }
      When method post
      Then status 200
