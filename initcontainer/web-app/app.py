from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    with open('/app/data/init-data.txt', 'r') as file:
        data = file.read()
    return f'Salaam from CloudWorld: {data}'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)