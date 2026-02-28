from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Networks & Systems Administration - Masters in Cybersecurity - Dublin Business School - Automated Cloud Deployment Successful!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
