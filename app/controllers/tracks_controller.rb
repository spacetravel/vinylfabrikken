class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
    
    respond_to do |format|
      format.html { redirect_to @track }
      format.js
      format.json { head :ok }
    end
  end

  def create
    @track = Track.create(params[:track])
  end

  def edit
    @track = Track.find(params[:id])
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_url, notice: "Track was successfully destroyed."
  end
end