class CommentsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)
    if @comment.save
      redirect_to book_path(@book), notice: 'Comentário adicionado com sucesso.'
    else
      redirect_to book_path(@book), alert: 'Erro ao adicionar comentário. Verifique os campos e tente novamente.'
    end
  end

  def update
    @book = Book.find(params[:book_id])
    @comment = @book.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to book_path(@book), notice: 'Comentário atualizado com sucesso.'
    else
      redirect_to book_path(@book), alert: 'Erro ao atualizar comentário. Verifique os campos e tente novamente.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
