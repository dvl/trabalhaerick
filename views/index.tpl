<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trabalha Erick!!</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

  <div class="container">
    <div class="row">
      <form class="form-horizontal" action="/enviar" method="POST">
        <div class="form-group">
          <label for="inputProjeto" class="col-sm-2 control-label">Projeto</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="projeto" id="inputProjeto" placeholder="Projeto" required>
          </div>
        </div>
        <div class="form-group">
          <label for="inputBranch" class="col-sm-2 control-label">Branch/Tag</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="branch" id="inputBranch" placeholder="Branch" required>
          </div>
        </div>
        <div class="form-group">
          <label for="inputBranch" class="col-sm-2 control-label">Pasta do Projeto</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="venv_folder" id="inputBranch" placeholder="exemplo.com" required>
            <span id="helpBlock" class="help-block">Para uso no virtualenv</span>
          </div>
        </div>
        <div class="form-group">
          <label for="inputBranch" class="col-sm-2 control-label">Ambiente</label>
          <div class="col-sm-10">
            <select class="form-control" name="ambiente">
              <option>QA</option>
              <option>PROD</option>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label for="inputBranch" class="col-sm-2 control-label">Caminho do manage</label>
          <div class="col-sm-10">
            <select class="form-control" name="manage_path">
              <option>manage.py</option>
              <option>core/manage.py</option>
            </select>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
              <label>
                <input type="checkbox" name="virtualenv"> activate (virtualenv)
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="gitremote"> git remote update
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="gitpull"> git pull
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="pipinstall"> pip install
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="migrate"> migrate
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="collectstatic"> collectstatic
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="clear_cache"> clear_cache
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="restart"> Restart fronts
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="inputProjeto" class="col-sm-2 control-label">Observações:</label>
          <div class="col-sm-10">
            <textarea name="observacoes" id="" cols="30" rows="10" class="form-control" ></textarea>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Enviar</button>
          </div>
        </div>
      </form>
    </div>

    <center><!-- fuck it -->
      <a href="https://github.com/dvl/trabalhaerick">
        <i class="fa fa-github fa-3x"></i>
      </a>
    </center>
  </div>

  <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha256-Sk3nkD6mLTMOF0EOpNtsIry+s1CsaqQC1rVLTAy+0yc= sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
</body>
</html>
