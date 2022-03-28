from flask import Flask

app = Flask(__name__)


@app.route("/healthcheck")
def healthcheck():
    return "Ok"


@app.route("/", methods=["PUT", "POST"])
def user_session_export():
    return "Ok"







