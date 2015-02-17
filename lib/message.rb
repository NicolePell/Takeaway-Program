class Message

	attr_reader :number

	def initialize(number)
		@number = number
	end

	def send
		time = Time.now + (60 * 60)

		account_sid = ENV['Twilio_Account_SID']
		auth_token = ENV['Twilio_Auth_Token']

		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.account.messages.create({ 	:body => "Thank you!
		Your scrumptious yummies will be with you by #{time.strftime("%H:%M")}",
		:to => number,
		:from => '+441344231325',
		})
	end

end
