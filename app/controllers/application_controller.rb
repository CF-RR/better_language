class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :lang_change

  def lang_change(sentence)
    Language.new(sentence).content
  end
end
