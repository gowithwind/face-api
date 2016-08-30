from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

from detect import landmark
@app.route('/detect')
def detect():
    url = landmark()
    return '<img src="/%s">' % url

if __name__ == "__main__":
    app.run()