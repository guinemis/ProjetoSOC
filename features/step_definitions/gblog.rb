Dado("que acesso o blog") do
    socblog.load
end

E("eu pesquiso o que desejo") do
    socblog.pesquisar
end

Entao("verifico o resultado") do
    @valorPesquisa = socblog.pesquisaRealizada[0]
    
    expect(@valorPesquisa.text).to eql 'Search Results for: oportunidades'
    
end