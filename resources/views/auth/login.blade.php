@extends('landing')
@section('page-content')

<form method="POST" action="{{ route('login') }}">
    @csrf
    <table style="width: 50%; margin: 20px auto;" class="post">
        <tbody>
            <tr>
                <td>
                    Email :<br>
                    <input style="width: 100%; padding: 5px;" id="email" type="email"
                        class="form-control @error('email') is-invalid @enderror" name="email"
                        value="{{ old('email') }}" required autocomplete="email" autofocus>
                    @error('email')
                    <span class="status">
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
                        autocomplete="current-password">
                    @error('password')
                    <span class="status">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </td>
            </tr>
            <tr>
                <td>
                    <input class="form-check-input" type="checkbox" name="remember" id="remember"
                        {{ old('remember') ? 'checked' : '' }}>

                    <label class="form-check-label" for="remember">
                        {{ __('Remember Me') }}
                    </label>

                    <input style="float: right;" type="submit" value="Masuk">
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    @if (Route::has('password.request'))
                    <a class="btn btn-link" href="{{ route('password.request') }}">
                        {{ __('Forgot Your Password?') }}
                    </a>
                    @endif
                </td>
            </tr>
        </tbody>
    </table>
</form>

@endsection