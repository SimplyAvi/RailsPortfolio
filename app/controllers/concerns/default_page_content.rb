module DefaultPageContent
        extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end
    
    def set_page_defaults 
        @page_title = "Avitosh | Portfolio Website"
        @seo_keywords = "Avitosh Totaram Portfolio"
    end
end