@extends('landing')

@section('page-content')
<form method="POST" action="{{ route('register') }}">
    @csrf

    <table style="width: 50%; margin: 20px auto;" class="post">
        <tbody>
            <tr>
                <td>
                    Name :<br>
                    <input style="width: 100%; padding: 5px;" id="name" type="text"
                        class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}"
                        required autocomplete="name" autofocus>

                    @error('name')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </td>
            </tr>
            <tr>
                <td>
                    Email :<br>
                    <input style="width: 100%; padding: 5px;" id="email" type="email"
                        class="form-control @error('email') is-invalid @enderror" name="email"
                        value="{{ old('email') }}" required autocomplete="email">

                    @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </td>
            </tr>
            <tr>
                <td>
                    Password :<br>
                    <input style="width: 100%; padding: 5px;" id="password" type="password"
                        class="form-control @error('password') is-invalid @enderror" name="password" required
                        autocomplete="new-password">

                    @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password :<br>
                    <input style="width: 100%; padding: 5px;" id="password-confirm" type="password" class="form-control"
                        name="password_confirmation" required autocomplete="new-password">
                </td>
            </tr>
            <tr>
                <td>
                    <input style="float: right;" type="submit" value="{{ __('Daftar') }}">
                </td>
            </tr>
        </tbody>
    </table>
</form>
@endsection