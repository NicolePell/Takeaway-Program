require 'twilio-ruby'

class Message

	def send_message
		time = Time.now + (60 * 60)
		

		account_sid = 'ACf891aedee1ec01bfe33224d882a65314' 
		auth_token = '3e28b3a32fbd64fd596f26e089e97e33' 

		@client = Twilio::REST::Client.new account_sid, auth_token 

		@client.account.messages.create({ 	:body => "Thank you! 
			Your scrumptious yummies will be with you by #{time.strftime("%H:%M")
}",
			:to => '+447585309858',
			:from => '+441344231325',
		})

	end


end



