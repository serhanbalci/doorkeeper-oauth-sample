class AuthController < ApplicationController
	def callback
		@code = params[:code]
	end

	def do_callback
		client = OAuth2::Client.new(params[:app_id], params[:secret], site: params[:site])
		access = client.auth_code.get_token(params[:code], redirect_uri: params[:callback_url])
		@access_token =  access.token
	end
end