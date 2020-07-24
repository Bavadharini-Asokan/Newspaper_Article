class WelcomeController < ApplicationController
# Get the list of newspapers and articles
  def index
      @newspaper = Newspaper.all
      @article = Article.all
  end
end
