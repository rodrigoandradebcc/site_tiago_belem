class EndorseesController < ApplicationController
  # GET /endorsees
  # GET /endorsees.json
  def index
    @endorsees = Endorsee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @endorsees }
    end
  end

  # GET /endorsees/1
  # GET /endorsees/1.json
  def show
    @endorsee = Endorsee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @endorsee }
    end
  end

  # GET /endorsees/new
  # GET /endorsees/new.json
  def new
    @endorsee = Endorsee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @endorsee }
    end
  end

  # GET /endorsees/1/edit
  def edit
    @endorsee = Endorsee.find(params[:id])
  end

  # POST /endorsees
  # POST /endorsees.json
  def create
    @endorsee = Endorsee.new(params[:endorsee])

    respond_to do |format|
      if @endorsee.save
        format.html { redirect_to @endorsee, notice: 'Endorsee was successfully created.' }
        format.json { render json: @endorsee, status: :created, location: @endorsee }
      else
        format.html { render action: "new" }
        format.json { render json: @endorsee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /endorsees/1
  # PUT /endorsees/1.json
  def update
    @endorsee = Endorsee.find(params[:id])

    respond_to do |format|
      if @endorsee.update_attributes(params[:endorsee])
        format.html { redirect_to @endorsee, notice: 'Endorsee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @endorsee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endorsees/1
  # DELETE /endorsees/1.json
  def destroy
    @endorsee = Endorsee.find(params[:id])
    @endorsee.destroy

    respond_to do |format|
      format.html { redirect_to endorsees_url }
      format.json { head :no_content }
    end
  end
end
