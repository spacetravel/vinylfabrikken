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

    
  end

  def create
    side = Side.find(params[:side_id])

    @track = side.tracks.build


    respond_to do |format|
      if @track.save
        format.html { redirect_to @side.gravering.order }
        format.js
        format.json { render json: @side.gravering.order, status: :created, location: @side.gravering.order }
      else
        format.html { render action: "new" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
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