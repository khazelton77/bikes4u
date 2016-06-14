class UserMailer < ApplicationMailer
	default from: "keri.hazelton@gmail.com"

	def contact_form(email, name, message)
		@message = message
			mail(:from => email,
				:to => 'keri.hazelton@gmail.com',
				:subject => "A new contact form message from #{name}")
	end

	def welcome(user)
		@user = user
		@appname = "Bikes 4 U"
		mail( :to => user.email, :subject => "Welcome to #{@appname}!")
	end

end


