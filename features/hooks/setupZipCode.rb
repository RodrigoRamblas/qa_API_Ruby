class Setup

        def erro
            erro = "true"
            erro = JSON.parse(erro)
        end

        def url(zipCode)
            HTTParty.get("https://viacep.com.br/ws/#{zipCode}/json/")
        end
end