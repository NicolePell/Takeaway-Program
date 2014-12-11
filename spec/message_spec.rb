require 'message'
require 'webmock/rspec'

describe Message do

	WebMock.disable_net_connect!(:allow_localhost => true)

	it 'it should send a message' do
		WebMock.stub_request(:post, "https://ACf891aedee1ec01bfe33224d882a65314:3e28b3a32fbd64fd596f26e089e97e33@api.twilio.com/2010-04-01/Accounts/ACf891aedee1ec01bfe33224d882a65314/Messages.json").
	    with(:body => {"Body"=>"Thank you! \n\t\t\tYour scrumptious yummies will be with you by 20:28", "From"=>"+441344231325", "To"=>"+44758530000"},
	    :headers => {'Accept'=>'application/json', 'Accept-Charset'=>'utf-8', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'twilio-ruby/3.13.1 (ruby/x86_64-darwin13.0 2.1.2-p95)'}).
	    to_return(:status => 200, :body => "", :headers => {})
	end
end
