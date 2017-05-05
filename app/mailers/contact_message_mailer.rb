class ContactMessageMailer < ApplicationMailer

		def message(contact)
			@contact = contact
	    	@user = "subashsly33@gmail.com"
	    	# @url  = 'http://example.com/login'
	    	mail(to: @user, subject: "@subject" )
  	end
end
