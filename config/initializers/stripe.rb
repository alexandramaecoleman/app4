if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_3tgD79h7O8ELWA6wPLBFEbAV',
    :secret_key => 'sk_test_CQwJtkfbnFk25Os83jqouhVz'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]