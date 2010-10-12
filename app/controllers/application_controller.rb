class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :meta_defaults
  private

 def meta_defaults
    @meta_title = "Dreambuilder"
    @meta_keywords = "Dreambuilder, Neoweb, Stereograph"
    @meta_description = "Rever le reel"
  end
  
end
