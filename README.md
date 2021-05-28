# sample-flask-app

Starting the Application locally

1. Export the FLASK_APP variable
	export FLASK_APP=app
	
2. Run the application in development mode (Optional)
	FLASK_ENV=development
	
3. Run Flask
	flask run
	
The application is now started.

Expected Response -->
 * Serving Flask app 'app' (lazy loading)
 * Environment: development
 * Debug mode: on
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 
 
 Testing the app functionality
 
 In linux terminal
 
 command:curl -vs http://127.0.0.1:5000/
 Expected Output: Hello, World
 
 command: curl -vs http://127.0.0.1:5000/healthcheck
 Expected Output: Healthy
 
 Command: curl -vs http://127.0.0.1:5000/meta
 Expected Output: [
  {
    "description": "pre-interview technical test", 
    "version": "1.0"
  }
]


Building the application using Docker locally

1. Build the docker image with the tag 'latest'
	 docker build -t my_flask_app:latest .  

2. Run the build (-p: the port it will run on)
	docker run -d -p 5000:5000 my_docker_flask:latest

To check if the docker is running
	docker ps
