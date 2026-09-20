from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    return "MSE-1 CI/CD Deployment Successful!"


@app.route("/health")
def health():
    return jsonify({
        "status": "healthy",
        "application": "flask-cicd"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
