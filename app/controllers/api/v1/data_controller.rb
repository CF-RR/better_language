class Api::V1::DataController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    articles = News.new("Afghanistan")
    # if articles == nil
    #   render json: "Please specify a language and news topic."
    # else
      render json: articles[0]
    # end
  end
end
