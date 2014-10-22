require 'twilio-ruby'

class Order

	attr_accessor :total_order, :customer, :name, :number

	def initialize
		@total_order = []
	end

	def add_to_order(line_item)
		total_order << line_item
	end

	def total_order_cost
		total_order.inject(0) { |sum, dish| sum + dish.subtotal }
	end

	def add_customer(customer)
		@customer = customer
	end

# 	def send_message
# 	time = Time.now + (60 * 60)
		

# 	account_sid = ENV['KEY'] 
# 	auth_token = '3e28b3a32fbd64fd596f26e089e97e33' 

# 	@client = Twilio::REST::Client.new account_sid, auth_token 

# 	@client.account.messages.create({ 	:body => "Thank you! 
# 	Your scrumptious yummies will be with you by #{time.strftime("%H:%M")
# }",
# 	:to => '+447585309858',
# 	:from => '+441344231325',
# 	})


# 	end

end

# create a message class
# hide your credentials

