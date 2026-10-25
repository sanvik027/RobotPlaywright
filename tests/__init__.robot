*** Settings ***
Documentation       Global setup and teardown for all UI test suites.
Resource            ../resources/fixtures/browser_fixtures.resource
Resource            ../resources/fixtures/data_fixtures.resource

# Use prefixes here too to be safe
Suite Setup         Run Keywords    
...                 browser_fixtures.Start Browser Session    
...                 AND    data_fixtures.Load Registration Data

Suite Teardown      browser_fixtures.Stop Browser Session

Test Setup          browser_fixtures.Open New Page
Test Teardown       browser_fixtures.Close Page