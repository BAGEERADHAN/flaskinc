from flask_sqlalchemy import SQLAlchemy


db = SQLAlchemy()

class Report(db.model):

	__tablename__ = "report"
	id = db.Column(db.Integer,primary_key=True)
	dateget = db.Column(db.String(),nullable=False)
	street =  db.Column(db.String(),nullable=False)
	detailed_desc = db.Column(db.String(),nullable=False)
	accused_details = db.Column(db.String())
	severity = db.Column(db.String())
	drugtype = db.Column(db.String())
	spam_or_ham = db.Column(db.Boolean)
