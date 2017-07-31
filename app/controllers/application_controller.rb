class ApplicationController < ActionController::Base	
  protect_from_forgery with: :exception
  #respond_to :html, :json
	#require 'rest-client'
	require 'digest'
  include HTTParty
	#http_basic_authenticate_with :name => "user", :password => "password"
	#before_filter :http_basic_authenticate

#def http_basic_authenticate
#  authenticate_or_request_with_http_basic do |username, password|
#    username == "1username" && password == "password1"
#  end
#end
  
#  def getsms
#  	begin
  	#RestClient.get "https://www.web2sms.ro/prepaid/message", {content_type: :json, accept: :json}
#  	puts 'da'
#  	rescue
#  	puts 'nu'
#  	end
#  end


  def postsms(mesaj,telefon)

	begin
  	#RestClient.post "https://www.web2sms.ro/prepaid/message", {content_type: :json, accept: :json}
  	apiKey = ENV["APP_ID"]
  	secret = ENV["APP_SECRET"]
  	nonce = Time.now.to_i.to_s
  	recipient = telefon
  	message = mesaj
  	visibleMessage = "mesaj test"
  	url = "/prepaid/message"
  	metoda = 'POST'
  	sender = ""
  	scheduleDate = ""
	validityDate = "" 
	callbackUrl = ""

  	string = apiKey + nonce + metoda + url + sender + recipient + message + visibleMessage + scheduleDate + validityDate + callbackUrl + secret
 
  	#signature = ('sha512', string).to_hash
    signature =	Digest::SHA512.hexdigest string

#    authenticate_or_request_with_http_basic do |username,password|
#    	username == apiKey &&	password == signature
#  	end
  	
  	data = {
  		apiKey: apiKey,
  		sender: sender,
  		recipient: recipient,
  		message: message,
  		scheduleDatetime: scheduleDate,
  		validityDatetime: validityDate,
  		callbackUrl: callbackUrl,
  		userData: "",
  		visibleMessage: visibleMessage,
  		nonce: nonce
  	}.to_json
  	
  	
    

auth = {:username => apiKey, :password => signature}
@sms = HTTParty.post("https://www.web2sms.ro/prepaid/message", 
                     :basic_auth => auth, :headers => {'Content-Type' => 'application/json'}, :body => data )


puts @sms
    #RestClient.post "https://#{apiKey}:#{signature}@www.web2sms.ro/prepaid/message", data, {content_type: :json, accept: :json}
  	#rescue
  	#puts 'nu'
  	
    end
  

  end
end
