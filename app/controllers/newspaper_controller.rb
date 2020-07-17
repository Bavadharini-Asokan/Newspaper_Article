class NewspaperController < ApplicationController
  def index

  end
  def new
  end
  def create
#     @newspaper = Newspaper.new(params.require(:newspaper).permit(:title))
#   @newspaper.save
# redirect_to @newspaper
render plain: params[:newspaper].inspect
  end
  def show
    
  end
end
