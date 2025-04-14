
Ci-après les user stories identifiés :
2.1) User story 1

    Etant donné que l'écran affiche 0, quand je tape 2 l'écran affiche 2
    Etant donné que l'écran affiche 0, quand je tape + l'écran affiche 0+et 0
    Etant donné que l'écran affiche 0, quand je tape + puis * l'écran affiche 0* et 0

2.2) User story 2

    Etant donné que l’écran affiche 0, quand je tape 2+2= alors l’écran affiche 4
    Etant donné que l’écran affiche 4, quand je tape +2= alors l’écran affiche 6
    Etant donné que l’écran affiche 0, quand je tape +2= alors l’écran affiche 2

2.3) User story 3

    Etant donné que l'écran affiche 0 sans historique, quand je tape 50 fois "10+" alors l'écran affiche "500"
    Etant donné que l'écran affiche 0 sans historique, quand je tape 50 fois "10x" alors l'écran affiche "9,765625e+16"





Les types de test

Dans ces scénarios nous avons 3 types de tests possibles :
1) Tests unitaires

Les scénarios "unitaires" (user story 1) seront les briques de base des scénarios complets, seront exécutées au plus tôt.
2) Tests de bout en bout

Les scénarios de "bout en bout" (user story 2) utiliseront les briques de base sous forme d’enchaînements pour réaliser des scénarios complets mais toujours simples.
3) Tests de performance

Les scénarios "long" (user story 3) constitueront nos tests de performance.

Ils vont mélanger et chaîner des tests de "bout en bout", pour réaliser des scénarios complexes très proches de la réalité. 

Ceci, afin de vérifier que dans une configuration matérielle donnée, l’application atteint le niveau de performance nécessaire.

Ces 3 étages de la pyramide de tests devraient, dans l’idéal, être construits dans cet ordre :

    Tests unitaires
    Tests de bout en bout
    Tests de performance
