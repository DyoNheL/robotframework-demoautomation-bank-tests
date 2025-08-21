*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Process


*** Variables ***
${REPORT_DIR}       ${EXECDIR}/docs/reports
${TEST_DIR}         ${EXECDIR}/tests


*** Test Cases ***
Run Customer Flow
    Log To Console    \n[INFO] Running Customer Flow Tests...
    Run Process    robot
    ...    -d    ${REPORT_DIR}
    ...    --output    ${REPORT_DIR}/output_customer.xml
    ...    --report    ${REPORT_DIR}/report_customer.html
    ...    --log    ${REPORT_DIR}/log_customer.html
    ...    ${TEST_DIR}/test_customer_flow.robot
    ...    shell=True
    Log To Console    \n[INFO] Customer Flow Finished.

Run Manager Flow
    Log To Console    \n[INFO] Running Manager Flow Tests...
    Run Process    robot
    ...    -d    ${REPORT_DIR}
    ...    --output    ${REPORT_DIR}/output_manager.xml
    ...    --report    ${REPORT_DIR}/report_manager.html
    ...    --log    ${REPORT_DIR}/log_manager.html
    ...    ${TEST_DIR}/test_manager_flow.robot
    ...    shell=True
    Log To Console    \n[INFO] Manager Flow Finished.

Run All Flows
    Log To Console    \n[INFO] Running ALL Banking Tests...
    Run Process    robot
    ...    -d    ${REPORT_DIR}
    ...    --output    ${REPORT_DIR}/output_all.xml
    ...    --report    ${REPORT_DIR}/report_all.html
    ...    --log    ${REPORT_DIR}/log_all.html
    ...    ${TEST_DIR}
    ...    shell=True
    Log To Console    \n[INFO] All Tests Finished.
