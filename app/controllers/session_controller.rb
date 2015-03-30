class SessionController < ApplicationController

	def create
		admin = Admin.find_by({email: params["email"]})
		if admin && admin.authenticate(params["password"])
			@error = false
			session["admin_id"] = admin.id
			redirect_to "/admin/#{admin.id}"
		else
			@error = true
			render "welcome/index"
		end
	end

	def destroy
		reset_session
		render "welcome/index"
	end
end

