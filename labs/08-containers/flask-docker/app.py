#!/usr/bin/python
from flask import Flask
import socket

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello Flask World (v1)! (from {})'.format(socket.gethostname())

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)