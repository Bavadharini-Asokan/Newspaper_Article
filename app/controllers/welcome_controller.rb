class WelcomeController < ApplicationController
    def index
        @newspaper = Newspaper.all
        @articles = Article.all
        end
end
