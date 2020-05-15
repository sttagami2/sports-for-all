Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :app名, ENV['app名_KEY'], ENV['app名_SECRET']
end