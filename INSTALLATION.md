# 📦 Procédure d'Installation

## Prérequis
- Java JDK 11 ou supérieur
- Talend Open Studio (téléchargé depuis talend.com)
- Docker & Docker Compose
- Git

## Étape 1 : Cloner le dépôt
```bash
git clone https://github.com/votre-username/projet-etl-talend.git
cd projet-etl-talend
```

## Étape 2 : Démarrer les bases de données avec Docker
```bash
cd docker
acceder au fichier .env
# Modifiez .env avec vos paramètres
docker-compose up -d
```

Cela va créer :
- MySQL sur le port 3306
- PostgreSQL source sur le port 5433
- PostgreSQL cible sur le port 5432
- Grafana sur le port 3000

## Étape 3 : Initialiser les bases de données

### MySQL
```bash
---"s'assurer d'etre sur le dossier racine du projet ..\projet_etl_talend_groupe7SI> "

docker exec -i mysql_source mysql -uroot -proot123 < database/mysql/create_database.sql
docker exec -i mysql_source mysql -uroot -proot123 < database/mysql/insert_sample_data.sql
--tester
docker exec mysql_source mysql -uroot -proot123 phones -e "SELECT COUNT(*) FROM smartphone_prices;"
```

### PostgreSQL Source
```bash
docker exec -i postgres_source psql -U postgres < database/postgresql_source/create_database.sql
docker exec -i postgres_source psql -U postgres < database/postgresql_source/insert_sample_data.sql
```tester
docker exec postgres_source psql -U postgres -d Phones -c "SELECT COUNT(*) FROM brand_origin;"
```

### PostgreSQL Cible
```bash
docker exec -i postgres_cible psql -U postgres < database/postgresql_cible/create_database.sql
```

```Vérifier( ça doit ramener les tables de notre bd cible)
docker exec postgres_cible psql -U postgres -d Phones_cible -c "\dt"
```

### Étape 4 : Importer le projet Talend

1. Ouvrir Talend Open Studio
2. File → Import Items
3. Sélectionner le fichier `talend/ETL_Phones_infos_VF.zip`
4. Importer tous les éléments

## Étape 5 : Configurer les connexions de metadonnées sur talend

Dans Talend, sous "Metadata" :
- Vérifier/modifier les paramètres de connexion du fichier délimié ( rAssurer vous d'importer Phones.csv dans ..\Données\sources_csv)
- Vérifier/modifier les paramètres de connexion MySQL(Phones_mysql)
- Vérifier/modifier les paramètres de connexion PostgreSQL(Phones_pg_cible & Phones_pg)
- En mettant les bonnes informations de connexions qui se trouver dans le docker-compose.yml

## Étape 6 : Importer le dashboard Grafana
1. Aller sur : http://localhost:3000
2. Login : admin / admin
3. Dashboards → New → Import
4. Importer le fichier grafana/dashboards/etl_monitoring.json
5. Sélectionner la datasource PostgreSQL (cible)

code de test sur graphana : 
```
            SELECT
            job_name,
            job_start,
            job_end,
            duration_ms,
            rows_inserted,
            rows_rejected,
            job_status
            FROM etl_metrics
            ORDER BY job_start DESC
            LIMIT 20;
```

## Vérification de l'installation

Exécutez les commandes suivantes :
```bash
# Vérifier MySQL
docker exec mysql_source mysql -uroot -proot123 phones -e "SHOW TABLES;"

# Vérifier PostgreSQL
docker exec -i postgres_cible psql -U postgres -c "SELECT COUNT(*) FROM Cible_postgres;"
```
