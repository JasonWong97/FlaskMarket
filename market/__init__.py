from flask import Flask
from flask_sqlalchemy import SQLAlchemy
# from flask_mysqldb import MySQL
from flask_bcrypt import Bcrypt
from flask_login import LoginManager

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://user:pass@mysql/market?charset=utf8'
app.config['SECRET_KEY'] = 'ec9439cfc6c796ae2029594d'

# app.config['MYSQL_USER'] = 'user'
# app.config['MYSQL_PASSWORD'] = 'pass'
# app.config['MYSQL_HOST'] = 'localhost'
# app.config['MYSQL_DB'] = 'market'
# app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

db = SQLAlchemy(app)
# db = MySQL(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = "login_page"
login_manager.login_message_category = "info"
from market import routes

