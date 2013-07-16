class MusicTracksController < ApplicationController

  def index
    @music_tracks = MusicTrack.order('name ASC')
  end


  def show
    @music_track = MusicTrack.find(params[:id])
    @comment = Comment.new
  end

  def new
    @music_track = MusicTrack.new
  end

  def create
    @music_track = MusicTrack.new(params[:music_track])
    @music_track.save
    redirect_to @music_track
  end

  def edit
    @music_track = MusicTrack.find(params[:id])
  end

  def update
    @music_track = MusicTrack.find(params[:id])
    @music_track.update_attributes(params[:music_track])
    redirect_to @music_track
  end

  def destroy
    @music_track = MusicTrack.find(params[:id])
    @music_track.destroy
    redirect_to music_tracks_path
  end

end
