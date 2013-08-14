class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @side = Side.find(params[:side_id])
    
    @track = @side.tracks.build

    @tracks_counter = params[:tracks_counter]

    @track.side_id = @side.id
    @track.file_url = ""

    # @track.save!

  end

  def create
    side = Side.find(params[:side_id])

    @track = Track.create(params[:track])


    respond_to do |format|
      format.js
    end
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