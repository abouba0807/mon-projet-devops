from flask import Flask
from prometheus_client import Counter, generate_latest, CONTENT_TYPE_LATEST

app = Flask(__name__)

# Création d'un compteur de visites
VISIT_COUNTER = Counter('app_visits_total', 'Nombre total de visites sur la page')

@app.route('/')
def hello():
    VISIT_COUNTER.inc() # Incrémente le compteur à chaque visite
    return "<h1>Bienvenue sur mon application DevOps !</h1><p>Visites enregistrées.</p>"

@app.route('/metrics')
def metrics():
    return generate_latest(), 200, {'Content-Type': CONTENT_TYPE_LATEST}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
