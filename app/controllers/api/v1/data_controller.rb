class Api::V1::DataController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @articles = News.new(params[:query]).content
    @articles = @articles["nprml"]["list"]["story"]
  end
end
