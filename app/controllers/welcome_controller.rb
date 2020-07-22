class WelcomeController < ApplicationController
    def index
        @newspaper = Newspaper.all
        @article = Article.all
    end
end
