Dir[File.join(File.dirname(__FILE__), "../pages/*page.rb")].each {|file| require file}


module Pages

    def socblog     
        @pesquisaBlog = PesquisaBlog.new
        
    end

    def socnet
        @PesquisaCredenciados = PesquisaCredenciados.new

    end

end