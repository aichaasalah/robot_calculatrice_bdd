*** Settings ***
Resource    ../resources/calculatrice_keywords.robot
Suite Setup    Given The Screen Shows    0

*** Test Cases ***

User Story 1 - Affichage de base
    [Tags]    US1
    Given The Screen Shows    0
    When I Type    2
    Then The Screen Should Show    02

    Given The Screen Shows    0
    When I Type    +
    Then The Screen Should Show    0+

    Given The Screen Shows    0
    When I Type    +
    When I Type    *
    Then The Screen Should Show    0+*

User Story 2 - Calculs simples
    [Tags]    US2
    Given The Screen Shows    0
    When I Type    2
    When I Type    +
    When I Type    2
    When I Press Equal
    Then The Screen Should Show    4

    Given The Screen Shows    4
    When I Type    +
    When I Type    2
    When I Press Equal
    Then The Screen Should Show    6

    Given The Screen Shows    0
    When I Type    +
    When I Type    2
    When I Press Equal
    Then The Screen Should Show    2

User Story 3 - Répétition
    [Tags]    US3
    Given The Screen Shows    0
    ${expression}=    Evaluate    '"10+"*50 + "0"'    # ajoute un 0 pour finir le calcul
    Set Suite Variable    ${SCREEN}    ${expression}
    When I Press Equal
    Then The Screen Should Show    500

    Given The Screen Shows    0
    ${expression}=    Evaluate    '"10*"*50 + "1"'    # ajoute un 1 pour finir le produit
    Set Suite Variable    ${SCREEN}    ${expression}
    When I Press Equal
    Then The Screen Should Show    9.765625e+16
