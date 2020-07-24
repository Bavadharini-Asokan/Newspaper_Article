class CommentsController < ApplicationController
# Create a comment to a article
  def create
    @article = Article.find(params[:id])
    @comment = @article.comments.build(params.require(:comment).permit(:comment_text,:article_id))
    if @comment.save
      redirect_to article_path(:id => @article.id)
    end
  end
end
