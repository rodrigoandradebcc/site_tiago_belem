class TiagoEndorseesController < ApplicationController
  # GET /tiago_endorsees
  # GET /tiago_endorsees.json
  def index
    @tiago_endorsees = TiagoEndorsee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tiago_endorsees }
    end
  end

  # GET /tiago_endorsees/1
  # GET /tiago_endorsees/1.json
  def show
    @tiago_endorsee = TiagoEndorsee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tiago_endorsee }
    end
  end

  # GET /tiago_endorsees/new
  # GET /tiago_endorsees/new.json
  def new
    @tiago_endorsee = TiagoEndorsee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tiago_endorsee }
    end
  end

  # GET /tiago_endorsees/1/edit
  def edit
    @tiago_endorsee = TiagoEndorsee.find(params[:id])
  end

  # POST /tiago_endorsees
  # POST /tiago_endorsees.json
  def create
    @tiago_endorsee = TiagoEndorsee.new(params[:tiago_endorsee])

    respond_to do |format|
      if @tiago_endorsee.save
        format.html { redirect_to @tiago_endorsee, notice: 'Tiago endorsee was successfully created.' }
        format.json { render json: @tiago_endorsee, status: :created, location: @tiago_endorsee }
      else
        format.html { render action: "new" }
        format.json { render json: @tiago_endorsee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tiago_endorsees/1
  # PUT /tiago_endorsees/1.json
  def update
    @tiago_endorsee = TiagoEndorsee.find(params[:id])

    respond_to do |format|
      if @tiago_endorsee.update_attributes(params[:tiago_endorsee])
        format.html { redirect_to @tiago_endorsee, notice: 'Tiago endorsee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tiago_endorsee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiago_endorsees/1
  # DELETE /tiago_endorsees/1.json
  def destroy
    @tiago_endorsee = TiagoEndorsee.find(params[:id])
    @tiago_endorsee.destroy

    respond_to do |format|
      format.html { redirect_to tiago_endorsees_url }
      format.json { head :no_content }
    end
  end
end
