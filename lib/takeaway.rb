require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
 
# put your own credentials here 
account_sid = 'ACf891aedee1ec01bfe33224d882a65314' 
auth_token = '3e28b3a32fbd64fd596f26e089e97e33' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
@client.account.messages.create({:body => "Thank you! Your order was placed successfully and will be delivered by x"
	:to => '+447585309858',
	:from => '+441344231325',    
})
