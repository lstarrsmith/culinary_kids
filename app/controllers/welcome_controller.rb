class WelcomeController < ApplicationController

	def index
		# need user_id to query for pictures
			# insta_with_user_id= HTTParty.get('https://api.instagram.com/v1/users/search?q=culinarykids4ever&client_id=fbd532a76be54ee38372a70d8a80cd64')

			# #store user_id
			# user_id = insta_with_user_id['data'][0]['id']

			# # retrieve last 19 posts
			# ck_insta = HTTParty.get("https://api.instagram.com/v1/users/#{user_id}/media/recent/?client_id=fbd532a76be54ee38372a70d8a80cd64")

			# low_res = []
			# ck_insta['data'].each do |post|
			# 	low_res.push({'image' => post['images']['low_resolution']['url'], 'caption' => post['caption']['text']})
			# end
			@section = Section.all
			@testimonial = Testimonial.all
			@images = Image.where(section_id: 1).order('id')
			
			
			# turn this on for instagram to flow in
			# render(:index, {locals: {low_res: low_res}})
			render(:index)


		
	end
end

