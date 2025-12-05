# Projet ETL avec Talend Open Studio thème 11

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

## Structure du dépôt
`````
projet_etl_talend_groupe7SI/
│
├── README.md                          # Documentation principale du projet (synthèse, objectif, instructions, liens)
├── INSTALLATION.md                    # Procédure détaillée pour installer et configurer le projet
├── TEST.md                            # Procédure détaillée pour tester le projet et vérifier les résultats
│
├── talend/                            # Contient les jobs Talend exportés
│   └── ETL_Phones_informations_Version_Final.zip   # Export complet du job ETL
│
├── données/                              # Données sources utilisées pour l'ETL
│   └── sources_csv/
│       └── Phones.csv                 # Fichier CSV contenant les informations des téléphones
│
├── database/                          # Scripts pour créer et remplir les bases de données
│   ├── mysql/                         # Scripts MySQL
│   │   ├── create_database.sql        # Script pour créer la base et les tables MySQL
│   │   └── insert_sample_data.sql     # Script pour insérer des données exemples dans MySQL
│   ├── postgresql_source/             # Scripts PostgreSQL source
│   │   ├── create_database.sql        # Création de la base source PostgreSQL
│   │   └── insert_sample_data.sql     # Données exemples pour la base source
│   └── postgresql_cible/              # Scripts PostgreSQL cible
│       └── create_database.sql        # Création de la base cible et des tables pour charger les données
│
├── grafana/                           # Dashboards Grafana pour le monitoring de l'ETL
│   └── dashboards/
│       ├── etl_monitoring.json        # Dashboard principal ETL
│       ├── etl_monitoring2.json       # Dashboard secondaire ou variantes
│       └── etl_monitoring_table.json  # Dashboard en vue tableau pour les métriques détaillées
│
├── docker/                            # Conteneurs et configuration Docker pour le projet
│   ├── docker-compose.yml             # Orchestration des conteneurs (MySQL, PostgreSQL, Grafana)
│   └── .env                           # Variables d'environnement pour Docker (ports, utilisateurs, mots de passe)
│
└── docs/                              # Documentation supplémentaire et captures d'écran
    └── screenshots/                   # Images montrant l'interface, les dashboards, ou étapes de tests

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
## Auteurs : Groupe 7 MISI
- OUEDRAOGO Teegwende Gyslain  
- SAWADOGO Eulodie Carelle W.  
- TEONSA Mohamed  
- ZOMA Wendyam Rodrigue  

---
