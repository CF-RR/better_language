class Api::V1::DataController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @articles = News.new('Iraq').content
    @articles = @articles["nprml"]["list"]["story"]
    # @articles = @news.content
    # if @articles.nil?
    #   render json: "Please specify a language and news topic."
    # else
    #   render json: @articles
    # end
  end
end
