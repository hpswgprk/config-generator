# IMPORT
from app import app
from flask import url_for, render_template, request

# ROUTES
# Static start page
@app.route('/')
def index():
    return render_template('index.html')
#
# Input/output pages depends on method
@app.route('/config', methods=['GET', 'POST'])
def config():
    # if GET open the input page for a specific type (input.html)
    if request.method == 'GET':
        if request.args.get('configType') == 'br':
            return render_template('input.html', configType = 'br')
        elif request.args.get('configType') == 'as':
            return render_template('input.html', configType = 'as')
        else:
            return 'Error on GET'
    # if POST generate the output page for a specific type
    elif request.method == 'POST':
        hostname = request.form['hostname']
        mgmtip = request.form['mgmtip']
        if request.form['configType'] == 'br':
            loopbackip = request.form['loopbackip']
            bgpasnum = request.form['bgpasnum']
            return render_template('output.html', configType='br', hostname=hostname, mgmtip=mgmtip, loopbackip=loopbackip, bgpasnum=bgpasnum)
        elif request.form['configType'] == 'as':
            trunkvlan = request.form['trunkvlan']
            accessvlan = request.form['accessvlan']
            return render_template('output.html', configType='as', hostname=hostname, mgmtip=mgmtip, trunkvlan=trunkvlan, accessvlan=accessvlan)
        else:
            return 'Error on POST'
    else:
        return 'Invalid request'
