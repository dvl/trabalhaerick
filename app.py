from bottle import (
    route,
    run,
    view,
    request,
)


@route('/')
@view('index')
def index():
    return {}


@route('/enviar', method=['POST'])
def enviar():
    subject = 'Deploy para {ambiente} {projeto} -- {branch}'.format(
        ambiente=request.forms.get('ambiente'),
        projeto=request.forms.get('projeto'),
        branch=request.forms.get('branch'),
    )

    msg = request.forms.get('observacoes')

    msg += '\n\nComandos:\n\n'

    if request.forms.get('virtualenv'):
        msg += 'source /www/virtualenvs/{venv_folder}/bin/activate\n\n'

    if request.forms.get('gitremote'):
        msg += 'git remote update\n\n'

    msg += 'git checkout {branch}\n\n'

    if request.forms.get('gitpull'):
        msg += 'git pull\n\n'

    if request.forms.get('pipinstall'):
        msg += 'pip install -U -r requirements.txt\n\n'

    if request.forms.get('migrate'):
        msg += 'python {manage_path} migrate\n\n'

    if request.forms.get('collectstatic'):
        msg += 'python {manage_path} collectstatic --noinput --clear\n\n'

    if request.forms.get('clear_cache'):
        msg += 'python {manage_path} clear_cache\n\n'

    if request.forms.get('restart'):
        msg += 'E depois reiniciar os fronts\n\n'

    msg += 'Obrigado'

    msg = msg.format(
        manage_path=request.forms.get('manage_path'),
        venv_folder=request.forms.get('venv_folder'),
        branch=request.forms.get('branch')
    )

    return '<pre>{}\n\n-----------------\n\n{}</pre>'.format(subject, msg)

if __name__ == '__main__':
    run(host='localhost', port=5000, debug=True, reloader=True)
