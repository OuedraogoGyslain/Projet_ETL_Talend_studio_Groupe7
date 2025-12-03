# Projet ETL avec Talend Open Studio

## Description
Ce projet présente un **processus ETL complet** pour le traitement des informations sur les téléphones mobiles.  
Il utilise **Talend Open Studio** pour l'extraction, la transformation et le chargement des données depuis un fichier CSV et des bases **MySQL** et **PostgreSQL** vers une base cible  **PostgreSQL**.  
Un **monitoring avec Grafana** est également mis en place pour suivre l’exécution des jobs ETL en temps réel.

---

## Objectif du projet
L'objectif de ce projet est de mettre en place un **processus ETL avec Talend Open Studio** afin de :  

1. **Extraire les données depuis plusieurs sources :**  
   1.1. Un fichier CSV (`Phones.csv`) contenant les informations sur les téléphones mobiles  
   1.2. Une base **MySQL** (table `smartphone_prices`)  contenant les infos de ventes 
   1.3. Une base **PostgreSQL source** (tables `brand_origin` contenant les pays origines des telephones)  

2. **Transformer les données** pour :  
   - Consolider les informations provenant des différentes sources  
   - Normaliser les formats et types de données  
   - Calculer les champs nécessaires pour l’analyse finale  

3. **Charger les données transformées** dans une base **PostgreSQL cible** (`Phones_cible`) dans la table `Cible_postgres`.  

4. **Superviser l’exécution des jobs ETL** :  
   - Une table `etl_metrics`  journalise chaque exécution du job :  
     - Date et heure d’exécution  
     - Durée du job  
     - Nombre de lignes extraites et chargées  
     - Statut de l’exécution  
   - Cette table sert de base pour un futur **dashboard Grafana** permettant le suivi en temps réel du processus ETL.

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
