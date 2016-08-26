# IMPORT
from flask import Flask

# VAR
app = Flask(__name__)
#app.secret_key = ''

# ROUTES
from config import *

# MAIN
if __name__ == "__main__":
    app.run(debug=True, host='127.0.0.1', port=80, passthrough_errors=True)
