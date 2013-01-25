#app/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "1029037884002-0sjm4ggg4v16sv2rosen9fhte8ifrpf6.apps.googleusercontent.com", "bACH1WEk0aVdu4VrW5_frhKm", {
      access_type: 'offline',
      scope: 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/calendar',
      redirect_uri: 'http://localhost/auth/google_oauth2/callback',
      approval_prompt: ''
  }
end
