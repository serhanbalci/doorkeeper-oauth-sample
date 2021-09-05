module Api
	module V1
		class BooksController < BaseController
			before_action :doorkeeper_authorize! # Requires access token for all actions

      def index
        render json: Book.all
      end
		end
	end
end