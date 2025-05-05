import os
from flask import Flask
import datetime

app = Flask(__name__)

@app.route('/')
def devops_status():
    return f"✅ DevOps Pipeline Test | Date : {datetime.datetime.now()}"

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 8080))  # Utilise le port dynamique de Render
    app.run(debug=True, host="0.0.0.0", port=port)  # Le port dynamique de Render
