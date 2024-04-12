from flask import Flask

app = Flask(__name__)

@app.route('/app/home/')
def home() :
    return '<h1>Welcome Home, Maggie</h1>'

if __name__ == '__main__':
    app.run(debug=True, host= '0.0.0.0', port=5000
            )