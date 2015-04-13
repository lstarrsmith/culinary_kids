class AdminController < ApplicationController
		before_action :require_login, except: [:index]

		def index
			render(:index)
		end	

		def new 
			@admin = Admin.find_by(id: params[:id])	
			render(:new)
		end

		def create 
			binding.pry
			new_admin = Admin.create({
				fname: params["fname"], 
				lname: params["lname"], 
				email: params["email"], 
				password: params["password"]
				})
			@admin = Admin.find_by(id: params[:id])
			render(:show)
		end

		def show	
			@admin = Admin.find_by(id: params[:id])		
		end

		private

		def require_login
			unless session['admin_id'] == params['id'].to_i
				@login_error = true
				redirect_to '/admin'
			end
		end	
end