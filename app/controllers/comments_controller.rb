class CommentsController < ApplicationController

  respond_to :json

  def index
    render_comments
  end

  def create
    Comment.create(params_white)
    render_comments
  end

  private

  def params_white
    params.require(:comment).permit(
      :author,
      :text)
  end

  def render_comments
    render json: @comments = Comment.author_text_id_by_created_at
  end
end
