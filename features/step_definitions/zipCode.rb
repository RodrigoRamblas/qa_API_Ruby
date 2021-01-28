
Given('that I have a valid zip code') do                                     
  @setup = Setup.new
end                                                                          

When('I make a request {string}') do |zipCode|                                  
    response = @setup.url(zipCode)
    $body = response.body
    $code = response.code.to_i
end                                                                          

Then('I must know if this zip code is valid') do 
    if JSON.parse($body)['erro'] == @setup.erro
      print 'Invalid Zip Code'
    end
    print "IBGE: " + JSON.parse($body)['ibge']
  end                                                                          
                                                                               
  Given('that I have a invalid zip code') do     
    @setup = Setup.new                              
  end                                                                          
                                                                                                                                                     
                                                                               
  Then('I must know if this zip code is invalid') do  
    if JSON.parse($body)['erro'] == @setup.erro
      print 'Invalid Zip Code'
     else
      print 'Valid Zip Code'
      expect(@setup.erro).to eq(JSON.parse($body)['erro'])
    end
  end                                                                          