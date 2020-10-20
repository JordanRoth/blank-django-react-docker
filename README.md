# SET UP STEPS
- Replace all instances of <PROJECT_NAME> with the name of the project

- Change the network from .30. in docker_compose.yml to not interfere with other projects made from this template

- Use https://djecrety.ir/ to make a new secret key and paste it into settings.py in backend/backend

- Temporarily add npm install before npm start in ui/docker-entrypoint.sh (this is necessary for the first make start only)

- In ~/.aws/config add: 
[<PROJECT_NAME>]
region = us-west-2

- In ~/aws/credentials add:
[<PROJECT_NAME>]
aws_access_key_id = <ACCESS_KEY>
aws_secret_access_key = <SECRET_ACCESS_KEY>

- In backend, after starting docker, run:
pip install --upgrade -r requirements.txt
pip freeze > requirements.txt

- When first deploying to eb, you have to make sure the .env file gets sent to the server as it's presently in the .ebignore (backend)
