from flask import Flask
import datetime

app = Flask(__name__)

@app.route('/')
def devops_status():
    return f"✅ DevOps Pipeline Test | Date : {datetime.datetime.now()}"

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=8085)
