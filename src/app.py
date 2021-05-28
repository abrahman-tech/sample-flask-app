from flask import Flask, jsonify, render_template, Response
#import flask


app = Flask( __name__)

@app.route('/')
def hello():
    return 'Hello, World!'


@app.route('/index')
def index():
    return render_template('index.html')

@app.route("/healthcheck")
def starting_url():
    
    return Response("Healthy", status=200)
    

@app.route("/meta")
def get_metadata():
    
    application_info = {}
    application =[]

    application_info['version']= "1.0"
    application_info['description'] = "pre-interview technical test"
    application.append(application_info)
    return jsonify(application)

    

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

