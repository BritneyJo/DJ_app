class CommentsController < ApplicationController

  def create
    params[:comment][:music_track_id] = params[:music_track_id]
    params[:comment][:user_id] = current_user.id
    @comment = Comment.new(params[:comment])
    @comment.save
    redirect_to music_track_path(params[:music_track_id])
  end

  def destroy

    redirect_to music_track_path(params[:music_track_id])
  end


end

