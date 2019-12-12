@extends('layout')

<style>

  .uper{

    margin-top: 40px;

  }
</style>

<div class="uper">

  @if(session()->get('SUCESSO'))

    <div class="alert alert-success">

      {{ session()->get('SUCESSO') }}

    </div>

  @endif

  <table class=" table table-striped">

    <thead>

      <tr>

        <td>ID</td>
        <td>NOME</td>
        <td>PREÇO</td>
        <td>QUANTIDADE</td>
        <td colspan="2">AÇÃO</td>

      </tr>

    </thead>

    <tbody>

      @foreach($shares as $share)

      <tr>

        <td>{{ $share->id }}</td>
        <td>{{ $share->share_name }}</td>
        <td>{{ $share->share_price }}</td>
        <td>{{ $share->share_qty }}</td>
        <td> <a href="{{ route('shares.edit', $share->id) }}" class="btn btn-primary">EDITAR</a> </td>
        <td> <a href="{{ route('shares.destroy', $share->id) }}" class="btn btn-danger">EXCLUIR</a> </td>

      </tr>

      @endforeach

    </tbody>

  </table>

</div>
