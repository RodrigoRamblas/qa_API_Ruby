Given("that I have a invalid zip code") do
    pending # Write code here that turns the phrase above into concrete actions
end

When("I make a request {string}") do |validZipCode|
    response = HTTParty.get("https://viacep.com.br/ws/#{validZipCode}/json/",
        :headers => {'cache-control': 'no-cache','content-type': 'application/json'}, 
        :body => {"mfkep":"some text"}.to_json)
    puts response.code, response.body
  end
  
  Then("I must know if this zip code is invalid {string}") do |string|
  end