Dado("que acesso o site da SOC") do
    socnet.load
end

Entao("seleciono a opção SOCNET") do
    socnet.acessarSocNet
end

Entao("seleciono buscar credenciados") do
    socnet.selecionarbsc
end

Entao("preencho minha informação") do
    socnet.bscCredenciado
end

Então("verifico o credenciado selecionado") do
    url = page.current_url
    expect(url).to eql 'https://socnet.soc.com.br/perfil'
end