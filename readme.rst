Cette application est un questionnaire pour évaluer différentes version d'un revenu de base. Une fois chaque version évalué, un utilisateur peut remplir un questionnaire pour connaitre les versions auquelles il est le plus proche.

L'application utilise le framework <https://codeigniter.com/> PHP CodeIgniter et est structuré selon l'architecture MVC.

Vous pouvez le tester en ligne à cette adresse : http://florent.kaisser.name/questionnaire/index.php/questionnaire/test

============
L'évaluation
============
L'évaluation s'effectue à partir de cette page : index.php/questionnaire/evaluation
Pour chaque question sur une version du revenu base, un "taux" d'importance est affecté compris netre 0 et 5. 1 sans aucune importane, 5 très important. Ce taux est entregistré dans la table "evaluation".

=======
Le test
=======
L'utilisateur tri 3 réponses par ordre de préférence de se qu'il attend d'un revenu de base à partir de cette page : index.php/questionnaire/test
Le résultat du test est calculé en multipliant l'ordre de préférence par le taux correspondant pour chaque évaluation d'une version. Le score final de chaque version est alors la somme de ses ordre de préférences pondérés par le taux correspondant. On obtient donc un score pour chaque version et on peut présenter à l'utilisateur le résultat comme les 3 versions ayant obetenu le meilleurs score

==========================================
Détails d'une versions d'un revenu de base
==========================================
L'ensemble des characteristiques d'un revenu de base peut tre consulté dans un tableau : index.php/questionnaire/rdb_tab
