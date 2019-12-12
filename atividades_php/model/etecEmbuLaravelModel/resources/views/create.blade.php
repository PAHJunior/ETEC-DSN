@extends('layout')

@section('content')

  <style>

    .uper{

      margin-top: 40px;

    }

  </style>

  <div class="card uper">

    <div class="card-header">
      CADASTRO
    </div>

    <div class="card-body">

      @if($errors->any())
        <div class="alert alert-danger">
            <ul>
              @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
              @endforeach
            </ul>
        </div>
      @endif

      <form action="{{ route('shares.store') }}" method="post">
        @csrf
        <div class="form-group">

          <label for="name">NOME:</label>
          <input type="text" name="share_name" class="form-control">

        </div>

        <div class="form-group">

          <label for="price">PREÇO:</label>
          <input type="text" name="share_price" class="form-control">

        </div>

        <div class="form-group">

          <label for="quatity">QUANTIDADE:</label>
          <input type="text" name="share_qty" class="form-control">

        </div>

        <button type="submit" class="btn btn-primary col-12">CADASTRAR</button>

      </form>

    </div>

  </div>
@endsection
