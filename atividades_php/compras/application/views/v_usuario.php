<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <form id="formCadastro">
                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <h4>Cadastro de usuários</h4>
                    </div>

                    <div class="panel-body">
                        <div class="form-group col-lg-6">
                            <label for="textNome" class="control-label">Usuário:</label>
                            <input name="usuario" id="usuario" class="form-control" placeholder="Digite seu Nome" onblur = "Verifica();"
                                  type="text" required>
                        </div>                          
                        <div class="form-group col-lg-6">      
                            <label for="inputPassword" class="control-label">Senha</label>      
                            <input type="password" class="form-control" placeholder="Informe sua senha" 
                                  name="senha" id="senha" data-minlength="6" required>      
                        </div>      
                    </div>
                    <div class="panel-footer clearfix">
                        <div class="btn-group pull-left">      
                            <button type="reset" class="btn btn-lg btn-danger" id="btnlimpar">Limpar</button>
                        </div> 
                        <div class="btn-group pull-right">      
                            <button type="submit" class="btn btn-lg btn-primary">Salvar</button>
                        </div> 
                    </div>
                </div>
            </form>

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h1 class="panel-title">Usuários cadastrados</h1>
                </div>
                <div class="panel-body margem">
                    <table id ="tableusu"
                        data-toggle ="table"
                        data-height ="205"
                        data-search ="true"
                        accesskey=""
                        data-side-pagination ="client"
                        data-pagination ="true"
                        data-page-list="[5,10,15]"
                        data-pagination-first-text="First"
                        data-pagination-pre-text="Previous"   
                        data-pagination-next-text="Next"
                        data-pagination-last-text="Last"
                        data-url= 'usuario/listar'>  
                        <!--Endereço do Controller responsável em buscar os dados da lista -->
                        <thead>
                            <tr>
                                <th data-field = 'usuario' class = "col-md-3 text-left">Usuario</th> 
                                <!--campo que retornará do Contoller deverá ser incluídio no data-field -->
                                <th data-field = 'senha' class = "col-md-3">Senha</th>                    
                                <!--campo que retornará do Contoller deverá ser incluídio no data-field -->
                                <th  class = "col-md-2">Ação</th>
                                <!--colocaremos botões de operação -->
                            </tr>
                        </thead>                        
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function () {

    $("#formCadastro").submit(function(event) {
        $.ajax({
            type: "POST",
            url: 'usuario/cadastrar',
            data: $("#formCadastro").serialize(),
            success: function (data){
                if ($.trim(data) == "1"){

                    $('#formCadastro').trigger("reset");
                    swal({
                        title: "Ok",
                        text: "Dados cadastrado com sucesso",
                        type: "success"
                    });
                }else{
                    swal({
                        title: "Atenção !",
                        text: "Erro ao inserir, verifique",
                        type: "error",
                    });
                }
            },
            beforeSend: function() {
                swal({
                    title: "Aguarde!",
                    text: "Carregando...",
                    imageUrl: "assets/img/gifs/preloader.gif",
                    showConfirmButton: false
                });
            },
            error: function() {
                alert("Deu Erro.")
            }
        });
        return false;
    });
    setInterval( function () {
        var $table = $('#tableusu');
        $table.bootstrapTable('refresh');
    }, 5000);
});
</script>