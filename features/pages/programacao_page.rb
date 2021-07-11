class PesquisaBlog < SitePrism::Page
    set_url '/blog'

    element :campoPesquisaBlog, ".elementor-search-form__input"
    element :botaoPesquisaBlog, ".fa.fa-search"
    elements :pesquisaRealizada, 'h2[class="elementor-heading-title elementor-size-default"]'

    def initialize
        page.driver.browser.manage.window.maximize
    end

    def pesquisar
        campoPesquisaBlog.set('oportunidades')
        sleep (3)
        botaoPesquisaBlog.click
        sleep (3)
    end
end




class PesquisaCredenciados < SitePrism::Page
    set_url '/'

    elements :botaoSocNet, "a[class='access-details']"
    elements :botaoBscCredenciados, "a[role='button']"
    element :campoPesquisaCredenciados, "input[type='text']"
    element :botaoPesquisaCredenciados, "#botao-buscar"
    elements :checkPagamentoCartao, "span[class='cbx-estilizado']"
    elements :camposEmpresas, "div[class='dados-empresa row col-12 col-sm-9 col-xl-10']"
    elements :btnSaibaMais, "button[data-btn='generico']"


    def initialize
        page.driver.browser.manage.window.maximize
    end


    def acessarSocNet
        botaoSocNet[2].click
        sleep (3)
    end

    def selecionarbsc
        botaoBscCredenciados[0].click
        sleep (4)
    end

    def bscCredenciado
        campoPesquisaCredenciados.set("11360-370")
        sleep (3)
        botaoPesquisaCredenciados.click
        sleep (3)
        checkPagamentoCartao[1].click
        sleep (3)
        camposEmpresas[0].hover
        sleep (3)
        btnSaibaMais[0].click
        sleep (3)
    end


end