	class Message

		def send_message
		time = Time.now + (60 * 60)
			

		account_sid = ENV['KEY'] 
		auth_token = ENV['TOKEN']

		@client = Twilio::REST::Client.new account_sid, auth_token 

		@client.account.messages.create({ 	:body => "Thank you! 
		Your scrumptious yummies will be with you by #{time.strftime("%H:%M")
	}",
		:to => '+448885309858',
		:from => '+441344231325',
		})
	
	end

end