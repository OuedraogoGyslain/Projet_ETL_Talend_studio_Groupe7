# Projet ETL avec Talend Open Studio

## Description
Ce projet présente un **processus ETL complet** pour le traitement des informations sur les téléphones mobiles.  
Il utilise **Talend Open Studio** pour l'extraction, la transformation et le chargement des données depuis un fichier CSV vers des bases **MySQL** et **PostgreSQL**.  
Un **monitoring avec Grafana** est également mis en place pour suivre l’exécution des jobs ETL en temps réel.

---

## Groupe 7
- OUEDRAOGO Teegwende Gyslain  
- SAWADOGO Eulodie Carelle W.  
- TEONSA Mohamed  
- ZOMA Wendyam Rodrigue  

---

## Structure du dépôt
`````
projet_etl_talend_groupe7SI/
│
├── README.md # Documentation principale
├── INSTALLATION.md # Procédure d'installation détaillée
├── TEST.md # Procédure de test
│
├── talend/ # Jobs Talend
│ └── ETL_Phones_informations_Version_Final.zip
│
├── data/ # Données utilisées
│ └── sources/
│ └── Phones.csv
│
├── database/ # Scripts de bases de données
│ ├── mysql/
│ ├── postgresql_source/
│ └── postgresql_cible/
│
├── grafana/ # Dashboards Grafana
│ └── dashboards/
│
├── docker/ # Configuration Docker
│ ├── docker-compose.yml
│ └── .env
│
└── docs/ # Documentation supplémentaire
└── screenshots/
`````
---

## Technologies utilisées
- Talend Open Studio 8.x  
- MySQL 8.0  
- PostgreSQL 17  
- Grafana 10.x  
- Docker & Docker Compose  

---

## Installation
Consultez le fichier [INSTALLATION.md](INSTALLATION.md) pour toutes les instructions détaillées.  

---

## Tests
Consultez le fichier [TEST.md](TEST.md) pour les procédures de test détaillées.  

---

## Monitoring
Le **dashboard Grafana** est disponible dans :  
/grafana/dashboards/
`````
Il permet de suivre en temps réel l’exécution du job ETL et les métriques principales (lignes insérées, durée, taux de réussite).
`````
