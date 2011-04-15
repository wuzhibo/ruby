# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ruby_session',
  :secret      => '7edba11df7fb765dac2a3969eeb28360a787b9a5f5adc0ced403a49fac31cc42eb2ec9bee84329f60deb8119d49bf336aaca142df7569b1d9bea8154048ed0dc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
