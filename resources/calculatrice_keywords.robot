*** Keywords ***
Given The Screen Shows ${value}
    Set Suite Variable    ${SCREEN}    ${value}
    Should Be Equal As Strings    ${SCREEN}    ${value}

When I Type ${input}
    ${SCREEN}=    Set Variable    ${SCREEN}${input}
    Set Suite Variable    ${SCREEN}    ${SCREEN}

When I Press Equal
    ${RESULT}=    Evaluate    ${SCREEN}
    Set Suite Variable    ${SCREEN}    ${RESULT}

Then The Screen Should Show ${expected}
    Should Be Equal As Strings    ${SCREEN}    ${expected}
