# Procédure de Test

## Test 1 : Vérification des données sources

### CSV
```bash
cat data/sources/Sources.csv
# Doit afficher 1000 lignes
```

### MySQL
```bash
docker exec -i mysql_container mysql -uroot -ppassword -e "SELECT COUNT(*) FROM DB_Sources_mysql;"
# Résultat attendu : 16 lignes
```

### PostgreSQL Source
```bash
docker exec -i postgres_source psql -U postgres -c "SELECT COUNT(*) FROM DB_sources_postgresql;"
# Résultat attendu : 15 lignes
```

## Test 2 : Exécution du Job ETL

1. Ouvrir Talend Open Studio
2. Ouvrir le job principal
3. Cliquer sur "Run"
4. Observer les logs :
   - Sources.csv : 1000 lignes extraites
   - MySQL : 16 lignes extraites
   - PostgreSQL : 15 lignes extraites
   - Fusion : 1000 lignes
   - Insertion PostgreSQL cible : 1000 lignes

## Test 3 : Vérification des données chargées
```bash
docker exec -i postgres_cible psql -U postgres -c "SELECT COUNT(*) FROM Cible_postgres;"
# Résultat attendu : 1000 lignes
```

Vérifier l'intégrité :
```sql
SELECT * FROM Cible_postgres LIMIT 10;
SELECT COUNT(*) FROM Cible_postgres WHERE colonne IS NULL;
# Résultat attendu : 0 (pas de NULL)
```

## Test 4 : Monitoring Grafana

1. Accéder à http://localhost:3000
2. Ouvrir le dashboard "ETL Monitoring"
3. Vérifier les métriques :
   - Nombre de lignes insérées : 1000
   - Temps d'exécution : < 1 seconde
   - Taux de réussite : 100%

## Test 5 : Test de réexécution

1. Vider la table cible :
```bash
docker exec -i postgres_cible psql -U postgres -c "TRUNCATE TABLE Cible_postgres;"
```

2. Réexécuter le job Talend
3. Vérifier que les 1000 lignes sont bien réinsérées

## Résultats attendus

| Test | Résultat attendu | Statut |
|------|------------------|--------|
| Sources CSV | 1000 lignes | |
| Source MySQL | 16 lignes | |
| Source PostgreSQL | 15 lignes | |
| Cible PostgreSQL | 1000 lignes | |
| Grafana | Dashboard fonctionnel |  |