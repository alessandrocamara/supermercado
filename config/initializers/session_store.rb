# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_supermercado_session',
  :secret      => '0b860fee1fda799af4f6061bd62c825d91e80d17390eb1730b7ff478465fdd632849980671d65f0f0d09b8582e7dfbb01abac6d4e1bf706ed3d1802e6c1b7824'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
