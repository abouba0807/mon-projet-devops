from flask import Flask, render_template
from prometheus_client import Counter, generate_latest, CONTENT_TYPE_LATEST

app = Flask(__name__)

# Compteur de visites
VISIT_COUNTER = Counter('app_visits_total', 'Nombre total de visites')

@app.route('/')
def home():
    VISIT_COUNTER.inc() # Incrémente le compteur
    return render_template('index.html')

@app.route('/metrics')
def metrics():
    return generate_latest(), 200, {'Content-Type': CONTENT_TYPE_LATEST}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
