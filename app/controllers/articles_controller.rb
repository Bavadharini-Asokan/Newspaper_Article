class ArticlesController < ApplicationController
# Get the list of articles based on newsid
  def index
      @article = Article.where(newsid: params[:id])
      @news_id = params[:id]
  end
# Get the specific article details
  def show
      @article = Article.find(params[:id])
      @comment = @article.comments.where(:article_id => params[:id])
  end
# Get the new page to create article
  def new
      @article = Article.new
      @getnewsid = params[:news_id]
  end
# Create a article
  def create
    @article =  Article.new(params.require(:article).permit(:newsid,:title,:description))
    if @article.save
      @article.save
      flash[:notice] = 'Successfully Saved'
      redirect_to articles_path(:id => @article.newsid)
    else
      @getnewsid = @article.newsid
      render 'new'
    end
  end
# Get the details of specific article to edit
  def edit
      @article = Article.find(params[:id])
      @new_id = params[:news_id]
  end
# Update the article
  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:newsid,:title,:description))
      flash[:notice] = 'Successfully Updated'
      redirect_to articles_path(:id => @article.newsid)
    else
      @news_id = @article.newsid
      render 'edit'
    end
  end
# Destroy the article
  def destroy
      article = Article.find(params[:id])
      article.destroy
      flash[:notice] = 'Successfully Deleted'
      redirect_to articles_path(:id => article.newsid)
  end
end
