from flask import Flask, request, flash, url_for, redirect, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgres://kpirlutfxlqsdp:74ca68a02c9781a959600d6aee1ed1dabb77f449dd98a1478bd04d901f3a4961@ec2-100-26-39-41.compute-1.amazonaws.com:5432/dd450n55fk3ll0'
app.config['SECRET_KEY'] = "random string"

db = SQLAlchemy(app)
db.init_app(app)

class Report(db.Model):
	id = db.Column(db.Integer,primary_key=True)
	dateget = db.Column(db.String(),nullable=False)
	street =  db.Column(db.String(),nullable=False)
	detailed_desc = db.Column(db.String(),nullable=False)
	accused_details = db.Column(db.String())
	severity = db.Column(db.String())
	drugtype = db.Column(db.String())
	spam_or_ham = db.Column(db.Boolean)


'''
@app.route('/new', methods = ['GET', 'POST'])
def new():
   if request.method == 'POST':
         report =Report(dateget=dateget,street = street,detailed_desc = detailed_desc,accused_details = accused_details,severity = severity, drugtype = drugtype, spam_or_ham = spam_or_ham)
         
         db.session.add(report)
         db.session.commit()
         flash('Record was successfully added')
         return report
         
         '''

if __name__ == '__main__':
   db.create_all()
   app.run(debug = True)