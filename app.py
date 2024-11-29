from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    images = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]  # Ejemplo de una lista de índices
    return render_template('index.html', images=images)

if __name__ == '__main__':
    app.run(debug=False)
    app.run(host='0.0.0.0', port=8000)