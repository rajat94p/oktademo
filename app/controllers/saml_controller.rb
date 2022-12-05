class SamlController < ApplicationController
	def init
  request = OneLogin::RubySaml::Authrequest.new
  saml_settings.name_identifier_value_requested = "testuser@example.com"
  saml_settings.name_identifier_format = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
  redirect_to(request.create(saml_settings))
	end
end
