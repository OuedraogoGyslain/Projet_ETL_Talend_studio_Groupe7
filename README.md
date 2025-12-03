# Projet ETL avec Talend Open Studio
Description

Ce projet présente un processus ETL complet pour le traitement des informations sur les téléphones mobiles.
Il utilise Talend Open Studio pour l'extraction, la transformation et le chargement des données depuis un fichier CSV vers des bases MySQL et PostgreSQL.
Un monitoring avec Grafana est également mis en place pour suivre l’exécution des jobs ETL en temps réel.

## Groupe 7 
- OUEDRAOGO Teegwende Gyslain
- SAWADOGO Eulodie Carelle W.
- TEONSA Mohamed
- ZOMA Wendyam Rodrigue


## Structure du depot GIT
projet_etl_talend_groupe7SI/
│
├── README.md                          # Documentation principale
├── INSTALLATION.md                    # Procédure d'installation détaillée
├── TEST.md                           # Procédure de test
│
├── talend/
│                    
│   └── ETL_Phones_informations_Version_Final.zip         # Export du job en ZIP
│
├── data/
│   ├── sources/
│   │   └──Phones.csv               # Fichier CSV source
│                     
│
├── database/
│   ├── mysql/
│   │   ├── create_database.sql       # Script création DB MySQL
│   │   └── insert_sample_data.sql    # Données d'exemple
│   ├── postgresql_source/
│   │   ├── create_database.sql
│   │   └── insert_sample_data.sql
│   └── postgresql_cible/
│       └── create_database.sql       # Structure de la table cible
│
├── grafana/
│   ├── dashboards/
│       └── etl_monitoring.json         # Dashboard Grafana exporté
│       └── etl_monitoring2.json        # Dashboard Grafana exporté
│       └── etl_monitoring_table.json   # Dashboard Grafana exporté
│  
│
├── docker/
│   ├── docker-compose.yml            # Orchestration des conteneurs
│   └── .env                          # Variables d'environnement
│
└── docs/
    ├── screenshots/                  # Captures d'écran
    

## Technologies utilisées
- Talend Open Studio 8.x
- MySQL 8.0
- PostgreSQL 17
- Grafana 10.x
- Docker & Docker Compose


## Installation
Consultez [INSTALLATION.md](INSTALLATION.md)

## Tests
Consultez [TEST.md](TEST.md)

## Monitoring
Dashboard Grafana disponible dans `/grafana/dashboards/`


