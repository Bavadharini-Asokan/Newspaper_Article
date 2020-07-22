class ArticlesController < ApplicationController
  def show
    @article = Article.where(newsid: params[:id])
    @news_id = params[:id]
  end
  def new
    @article = Article.new
 @getnewsid = params[:news_id]
  end
  def edit
    @article = Article.find(params[:id])
    @new_id = params[:news_id]
  end
  def update
  @article = Article.find(params[:id])
  if @article.update(params.require(:article).permit(:newsid,:title,:description))
    flash[:notice] = 'Successfully Updated'
    redirect_to article_path(@article.newsid)
  else
    render 'edit'
  end
end
  def create
# render plain: params[:article].inspect
  @article =  Article.new(params.require(:article).permit(:newsid,:title,:description))
  if @article.save
    @article.save
    flash[:notice] = 'Successfully Saved'
redirect_to article_path(@article.newsid)
  else
    @getnewsid = @article.newsid
    @article.errors.full_messages
    render 'new'
  end
end
  def destroy
    article = Article.find(params[:id])
    article.destroy
    flash[:notice] = 'Successfully Deleted'
    redirect_to article_path(article.newsid)
  end
end
