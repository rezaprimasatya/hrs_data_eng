This project tried to implement the following core tasks
- A “data warehouse” (PostgresQL)
- An orchestration service (Airflow)
- An ELT tool (dbt)
___

# Deployment

> To deploy this project <br>`docker and docker-compose are required`

```bash
  git clone https://github.com/rezaprimasatya/hrs_data_eng.git
  cd hrs
  pip install -r requirements.txt
  cd airflow
  docker-compose build
  docker-compose up -d

#   after this you can find airflow webserver at localhost:8080
#  you can either manually trig tasks or you can turn dags on to start scheduled tasks
```
## Redash Setup

First cd to redash directory 
```
cd redash
```
## Create an environment file here
`.env` Shoud contain the following
```bash
REDASH_HOST=http://localhost/redash
PYTHONUNBUFFERED=0
REDASH_LOG_LEVEL=INFO
REDASH_REDIS_URL=redis://redis:6379/0
POSTGRES_PASSWORD=password
REDASH_COOKIE_SECRET=redash-selfhosted
REDASH_SECRET_KEY=redash-selfhosted
REDASH_DATABASE_URL={postgresql+psycopg2://username:password@host/dbname}
```
Then run 

```bash
docker-compose run --rm server create_db 
docker-compose up -d

# your redash dashboard should be running on port 5000
```

Please, find the deployed dbt warehouse documentation from [here](https://data-engineering-dwh.netlify.app/#!/overview)


# Screenshots
### Airflow & DBT
Two Dags
![App Screenshot](./screenshots/DAGs.jpg)

Acyclic Graph representation
![App Screenshot](./screenshots/Directed%20Asyclic%20Graph.jpg)

Dbt tasks with graph
![App Screenshot](./screenshots/dbt-dags.jpg)

DBT docs
![App Screenshot](./screenshots/docs.jpg)

## redash Dashboard
![App Screenshot](./screenshots/redash-board%20I.jpg)

![App Screenshot](./screenshots/redash-board%20II.jpg)

<br>

# Tech Stacks
|       |  | | | | | | |
| ----------- | ----------- | -------- | ---------| -----------| -------| -----------| -------|
| <img height="80" src="https://user-images.githubusercontent.com/25181517/117208740-bfb78400-adf5-11eb-97bb-09072b6bedfc.png">   |*postgreSQLs*| | <img height="80" src="https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png">   |*docker*| | <img height="80" src="https://avatars.githubusercontent.com/u/10746780?s=280&v=4">   |*redash*|
| <img height="80" src="https://static-00.iconduck.com/assets.00/airflow-icon-512x512-tpr318yf.png">   |*airflow*| | <img height="80" src="https://seeklogo.com/images/D/dbt-logo-500AB0BAA7-seeklogo.com.png">   |*dbt*|

<br>
<br>
