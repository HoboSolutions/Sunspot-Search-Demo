# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sunspot-search-demo_session',
  :secret      => 'c79a360198493d5c33d63c59223f6c893e3182f09c37b4d6488e2b9b24c1b6a83f370c1aec23703f507b783b5b82e54f3be60740e330ffe8ab13c5800ce2cb4b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
