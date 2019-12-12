@extends('layout')

<style>
    
    .uper{
        margin-tox: 40px;
    }

</style>


<div class="uper">

    @if(session()->get('SUCESSO'))

        <div class="alert alert-success">

            {{ session()->get('SUCESSO') }}

            <table class=" table table-striped">
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>NOME</td>
                        <td>PREÇO</td>
                        <td>QUANTIDADE</td>
                        <td>AÇÃO</td>
                    </tr>

                </thead>

                <tbody>
                    @foreach($shares as $share)

                        <tr>
                        <td>{{$shares->id}}</td>
                        <td>{{$shares->share_name}}</td>
                        <td>{{$shares->share_price}}</td>
                        <td>{{$shares->share_qty}}</td>
                        <td><a href="{{ roter('share.edit', $share->id) }}" class="btn btn-outline-danger">EDITAR</a></td>
                    </tr>

                    endforeach
                </tbody>
            </table>

        </div>

    @endif
</div>