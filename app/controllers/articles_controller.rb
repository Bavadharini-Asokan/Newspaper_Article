class ArticlesController < ApplicationController
  def show
    @article = Article.where(newsid: params[:id])
    @news_id = params[:id]
  end
  def new
 @getnewsid = params[:news_id]
  end
  def edit
    @article = Article.find(params[:id])
    @new_id = params[:news_id]
  end
  def update
  @article = Article.find(params[:id])
  if @article.update(params.require(:article).permit(:newsid,:title,:description))
    redirect_to article_path(@article.newsid)
  else
    render 'edit'
  end
end
  def create
# render plain: params[:article].inspect
  @article =  Article.new(params.require(:article).permit(:newsid,:title,:description))
  @article.save
  redirect_to article_path(@article.newsid)
  end
  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to article_path(article.newsid)
  end
end
