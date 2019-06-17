<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <form id="formCadastro">
                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <h4>Cadastro de usuários</h4>
                    </div>

                    <div class="panel-body">
                        <div class="form-group col-lg-12">
                            <label for="textNome" class="control-label">Usuário:</label>
                            <input name="usuario" id="usuario" class="form-control" placeholder="Digite seu Nome" onblur = "Verifica();"
                                  type="text" required>
                        </div>                          
                        <div class="form-group col-lg-6">      
                            <label for="inputPassword" class="control-label">Senha</label>      
                            <input type="password" class="form-control" placeholder="Informe sua senha" 
                                  name="senha" id="senha" data-minlength="6" required>      
                        </div>

                        <div class="form-group col-lg-6">      
                            <label for="inputPassword" class="control-label">Confirmar a senha:</label>      
                            <input type="password" class="form-control" placeholder="Informe sua senha" 
                                  name="confirmarSenha" id="confirmarSenha" data-minlength="6" required>      
                        </div>

                        <div class="form-group col-xs-12 col-md-12">
                            <label class="control-label">Tipo:</label>
                            <select class="form-control" id="tipo" name="tipo" required>
                                <option value="ADM">Administador</option>
                                <option value="Comum">Comum</option>
                            </select>
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
                                
                                <!-- Campo de tipo do usuario -->
                                <th data-field = 'tipo' class = "col-md-2">Tipo</th>                    
                                
                                <!-- Campo do status -->
                                <th data-field = 'estatus' class = "col-md-1">Status</th>                    
                                <!--campo que retornará do Contoller deverá ser incluídio no data-field -->
                                <th  class = "col-md-2" data-formatter="opcoes" data-field="usuario">Açãoes</th>
                                <!--colocaremos botões de operação -->
                            </tr>
                        </thead>                        
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="alteracao" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title" id="myModalLabel">Alterar dados do usuario</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="form-group col-xs-12 col-md-12">
                        <label class="control-label">Usuário:</label>
                        <input name="musuario" id="musuario" class="form-control" placeholder="usuário" type="text" readonly>
                    </div>

                    <div class="form-group col-xs-12 col-md-6">
                        <label class="control-label">Senha:</label>
                        <input type="password" class="form-control" placeholder="Senha" name="msenha" id="msenha" required>
                    </div>

                    <div class="form-group col-xs-12 col-md-6">
                        <label class="control-label">Confirmar a senha:</label>
                        <input type="password" class="form-control" placeholder="Senha" name="msenha2" id="msenha2" required>
                    </div>
                    
                    <div class="form-group col-xs-12 col-md-12">
                        <label class="control-label">Tipo:</label>
                        <select class="form-control" id="mtipo" name="mtipo" required>
                            <option value="ADM">Administador</option>
                            <option value="Comum">Comum</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer" style="backgorund-color: #A9A9A9;">
                <button type="submit" class="btn btn-lg btn-primary" onClick="alterar();">Alterar</button>
                <button type="button" class="btn btn-lg btn-primary" data-dismiss="modal">Sair</button>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">

function opcoes(value){
    var opcoes = `<button class="btn btn-xs btn-primary text-center" type="button" onClick="busca_usuario('${value}');"><span class="glyphicon glyphicon-pencil"></span></button>\n\<button class="btn btn-xs btn-danger text-center" type="button" onClick="desativa_usuario('${value}');"><span class="glyphicon glyphicon-trash"></span></button>\n\<button class="btn btn-xs btn-success text-center" type="button" onClick="ativar_usuario('${value}');"><span class="glyphicon glyphicon-ok"></span></button>`
    return opcoes
}

$(document).ready(function () {

    $("#formCadastro").submit(function(event) {
        $.ajax({
            type: "POST",
            url: 'usuario/cadastrar',
            data: $("#formCadastro").serialize(),
            success: function (data){
                // Se for 1 , está OK
                if ($.trim(data) == "1"){

                    $('#formCadastro').trigger("reset");
                    swal({
                        title: "Ok",
                        text: "Dados cadastrado com sucesso",
                        type: "success"
                    });
                    var $table = $('#tableusu');
                    $table.bootstrapTable('refresh');
                }

                //  Se for 2, usuario já existe
                else if($.trim(data) == "2"){
                    swal({
                        title: "Error",
                        text: "Ususario já existe",
                        type: "warning"
                    });
                }

                // Se for 3, senha invalida
                else if($.trim(data) == "3"){
                    swal({
                        title: "Error",
                        text: "Por favor confirme a sua senha.",
                        type: "warning"
                    });
                }
                else{
                    swal({
                        title: "Atenção !",
                        text: "Erro ao inserir, verifique",
                        type: "error"
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
});

function busca_usuario(usuario){
    $('#alteracao').modal('show');

    $.ajax({
        type:"POST",
        url: 'usuario/consalterar',
        dataType: 'json',
        data: {'usuario': usuario},
        success: function (data) {
            console.log(data)
            $('#musuario').val(data[0].usuario);
            $('#msenha').val(data[0].senha);
            $('#mtipo').val(data[0].tipo);
            $('#msenha2').val('');
            swal.close();
        },
        beforSend: function(){
            swal({
                title: "Aguarde!",
                text: "Carregando...",
                imageUrl: "assets/img/gifs/preloader.gif",
                showConfirmButton: false
            });
        },
        error: function(err){
            console.log(err)
            alert('Unexpected error.')
        }
    })
}

function alterar(){
    $.ajax({
        type:"POST",
        url: 'usuario/alterar',
        data: {'senha':$('#msenha').val(),
               'usuario':$('#musuario').val(),
               'senha2':$('#msenha2').val(),
               'tipo':$('#mtipo').val()},
        success: function (data) {
            if (data == 1){
                swal({
                    title: "Ok",
                    text: "Sucesso",
                    type: "success",
                    showCancelButton: false,
                    confirmButtonColor: "#54DD74",
                    confirmButtonText: "OK",
                    closeOnConfirm: true,
                    closeOnCancel: false
                },
                function(isConfirm){
                    if(isConfirm){
                        $('#tableusu').bootstrapTable('refresh');
                    }
                });
                $('#alteracao').model('hide');
            
            }
            else if (data == 2){
                swal({
                    title: "Aviso",
                    text: "Confirme a sua senha.",
                    type: "warning"
                });
            }
            else if (data == 3){
                swal({
                    title: "Error",
                    text: "Por favor confirme a sua senha.",
                    type: "warning"
                });
            }
            else{
                swal({
                    title: "Ok",
                    text: "Erro na alteração, verifique",
                    type: "error",
                    showCancelButton: false,
                    confirmButtonColor: "#54DD74",
                    confirmButtonText: "OK",
                    closeOnConfirm: true,
                    closeOnCancel: false
                });
            }
        },
        beforeSend: function(){
            swal({
                title: "Aguarde!",
                text: "Carregando...",
                imageUrl: "assets/img/gifs/preloader.gif",
                showConfirmButton: false
            });
        },
        error: function(){
            alert('Ocorreu um erro inesperado')
        }
    });
}

function desativa_usuario(usuario){
    swal({
        title: "Atenção",
        text: `Gostaria de desativar o usuario ${usuario}`,
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "Sim",
        cancelButtonText: "Não",
        closeOnConfirm: false,
        closeOnCancel: true
    },
    function(isConfirm) {
        if(isConfirm){
            $.ajax({
                type:"POST",
                url: `${base_url}usuario/desativar`,
                data: {'usuario': usuario},
                success: function (data) {
                    if (data == 1){
                        swal({
                            title: "Ok",
                            text: `Usuario ${usuario} DESATIVADO`,
                            type: "success",
                            showCancelButton: false,
                            confirmButtonColor: "#54DD74",
                            confirmButtonText: "OK",
                            closeOnConfirm: true,
                            closeOnCancel: false
                        },
                        function(isConfirm){
                            if(isConfirm){
                                $('#tableusu').bootstrapTable('refresh');
                            }
                        });
                    }else{
                        swal({
                            title: "Ok",
                            text: `Erro ao desativar o usuario ${usuario}, verifique`,
                            type: "error",
                            showCancelButton: false,
                            confirmButtonColor: "#54DD74",
                            confirmButtonText: "OK",
                            closeOnConfirm: true,
                            closeOnCancel: false
                        });
                    }
                },
                beforeSend: function(){
                    swal({
                        title: "Aguarde!",
                        text: "Carregando...",
                        imageUrl: "assets/img/gifs/preloader.gif",
                        showConfirmButton: false
                    });
                },
                error: function(data_error){
                    sweetAlert("Atenção", "Erro ao gravar os dados !", "error")
                }
            });
        }
    })
}

function ativar_usuario(usuario){
    swal({
        title: "Atenção",
        text: `Gostaria de RE-ATIVAR o usuario ${usuario}`,
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#54DD74",
        confirmButtonText: "Sim",
        cancelButtonText: "Não",
        closeOnConfirm: false,
        closeOnCancel: true
    },
    function(isConfirm) {
        if(isConfirm){
            $.ajax({
                type:"POST",
                url: `${base_url}usuario/reativar`,
                data: {'usuario': usuario},
                success: function (data) {
                    if (data == 1){
                        swal({
                            title: "Ok",
                            text: `Usuario ${usuario} REATIVADO`,
                            type: "success",
                            showCancelButton: false,
                            confirmButtonColor: "#54DD74",
                            confirmButtonText: "OK",
                            closeOnConfirm: true,
                            closeOnCancel: false
                        },
                        function(isConfirm){
                            if(isConfirm){
                                $('#tableusu').bootstrapTable('refresh');
                            }
                        });
                    }else{
                        swal({
                            title: "Ok",
                            text: `Erro ao REATIVAR o usuario ${usuario}, verifique`,
                            type: "error",
                            showCancelButton: false,
                            confirmButtonColor: "#54DD74",
                            confirmButtonText: "OK",
                            closeOnConfirm: true,
                            closeOnCancel: false
                        });
                    }
                },
                beforeSend: function(){
                    swal({
                        title: "Aguarde!",
                        text: "Carregando...",
                        imageUrl: "assets/img/gifs/preloader.gif",
                        showConfirmButton: false
                    });
                },
                error: function(data_error){
                    sweetAlert("Atenção", "Erro ao gravar os dados !", "error")
                }
            });
        }
    })
}
</script>