# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_event-online_session',
  :secret      => '7157abfae6e82764c0f3dbbb29adf17b92690f873bbfe768216e20fe53f3467183148483c140be6330174be0268c60cf4e528a15b5f0db9345b0786c599a0444'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
