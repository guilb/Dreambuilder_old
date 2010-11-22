class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :meta_defaults, :set_iphone_format

   def set_iphone_format
     if is_iphone_request?
       request.format = :iphone
     end
   end

  # this method uses a regular expression to match the text
  # that would describe the browser used by the client
  def is_iphone_request?
    request.user_agent !=~ /(Mobile\/.+Safari)/
    #request.user_agent =~ /(AppleWebKit\/.+AdobeAIR)/
  end

  private

 def meta_defaults
    @meta_title = "Dreambuilder"
    @meta_keywords = "Dreambuilder, Neoweb, Stereograph"
    @meta_description = "Rever le reel"
  end
  
end
