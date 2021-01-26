Given('that I have a valid zip code') do                                     
end                                                                          

When('I make a request {string}') do |zipCode|                                  
    response = HTTParty.get("https://viacep.com.br/ws/#{zipCode}/json/")
    $body = response.body
    print $body
end                                                                          

Then('I must know if this zip code is valid') do 
    validate = $body["erro"]
    print validate
  end                                                                          
                                                                               
  Given('that I have a invalid zip code') do                                   
  end                                                                          
                                                                                                                                                     
                                                                               
  Then('I must know if this zip code is invalid') do        
    validate = $body['erro']
    print validate + ' Zip Code Invalid'
  end                                                                          