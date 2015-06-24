class EmailController < ApplicationController
	def email_form
	end

	def email_send
		email = params[:email]
		title = params[:title]
		content = params[:content]

		gmail = Gmail.connect("choiseungho0822@gmail.com","choiseungho0713")
		gmail.deliver do
			to email
			subject title
			text_part do
				body content
			end
		end

		gmail.logout
	end
end
