# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eventually_session',
  :secret      => '1dab35877c47cd765e25e6b68bd76a25627aca606df55262ec0c19d1b120c7bfa1a38700a8f48584889f8a83877beff0513dba64741a9066afc8a0b589e61c15'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
