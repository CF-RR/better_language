class Api::V1::DataController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @articles = News.new('Iraq').content
    @yoda = Language.new("Don't kill the younglings").content
    # @articles = @news.content
    # if @articles.nil?
    #   render json: "Please specify a language and news topic."
    # else
    #   render json: @articles
    # end
    @articles = @articles["nprml"]["list"]["story"]
  end
end
