Building and running the application with a virtual environment and Docker
Pull the project from Github. 
Go to VS code and create a virtual environment and activate it:
	python -m venv name_of_venv
	name_of_venv \Scripts\activate
Create a Dockerfile and paste the following information in it: 
FROM python:3.12.2-slim
WORKDIR /app
ADD . /app/
EXPOSE 8000
COPY requirements.txt /app
RUN pip3 install -r requirements.txt --no-cache-dir
COPY . /app
ENTRYPOINT ["python"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
Login to Docker and enter your credentials using the following command:
docker login
Otherwise create a Docker account. Create a new Docker repository. 
Open a new cmd terminal and run the following command to build the image:
docker build --tag app_name-latest
To run the image enter the following command in the terminal:
docker run --name app_name -p 8000:8000 app_name:latest 
Identify the image ID with the following command:
	docker images
Tag the image with the following command 
	docker tag imageID username/reponame:latest
 Create a new superuser in VS Code to access the app:
 	create superuser
To view the image go to your browser and enter: localhost:8000
Push the image to Docker using the following command: 
	docker push 
