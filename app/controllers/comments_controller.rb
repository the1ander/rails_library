class CommentsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    # Rails.logger.debug "Comment params VALOOOOOOOr: #{comment_params.inspect}"
    # byebug
    @comment = @book.comments.create(comment_params)
    if @comment.save
      redirect_to book_path(@book)
    else
      render 'books/new'
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
