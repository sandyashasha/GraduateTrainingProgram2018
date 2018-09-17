from flask import Flask,render_template,request
import re
app = Flask(__name__)

@app.route('/',methods = ['POST','GET'])
def rendering():
      return render_template('index.html')

@app.route('/result',methods = ['POST','GET'])
def hello_world():
    if request.method =='POST':
        password = request.form['password']
        print password
        password_pattern = '(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[$|@|_]).{8,}'
        if re.match(password_pattern,password):
            result = 'Strong Password'
            p_color = 'green'
        else:
            result = 'Weak Password'
            p_color = 'red'

        email = request.form['emailid']
        print email
        email_pattern = '^([a-z0-9]+)(\@)([a-z]+)(\.)([a-z]{2,3})|(.[a-z]{2})$'
        if re.match(email_pattern,email):
            email_res = 'Email OK'
            e_color = 'green'
        else:
            email_res = 'Email NOT OK'
            e_color = 'red'

        accenture_email = request.form['accmail']
        print accenture_email
        amail_pattern = '^([a-z0-9.]+)(\@)(accenture.com)$'
        if re.match(amail_pattern, accenture_email):
            amail_res = 'Accenture mail OK'
            a_color = 'green'
        else:
            amail_res = 'Accenture mail NOT OK'
            a_color = 'red'

        edu_mail = request.form['edumail']
        print edu_mail
        edumail_pattern = '^([a-z0-9.]+)(\@)([a-z.]+)((edu)|(org)|(biz))$'
        if re.match(edumail_pattern,edu_mail):
            edumail_res = 'Ins. Mail OK'
            edu_color = 'green'
        else:
            edumail_res = 'Ins. Mail NOT OK'
            edu_color = 'red'

    return render_template('index.html',result = result,p_color = p_color,email_res= email_res,e_color = e_color,amail_res = amail_res,a_color = a_color,edumail = edumail_res,edu_color = edu_color)

if __name__ == '__main__':
   app.run(debug = True)
