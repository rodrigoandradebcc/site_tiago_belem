class PatronagesController < ApplicationController
  # GET /patronages
  # GET /patronages.json
  def index
    @patronages = Patronage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patronages }
    end
  end

  # GET /patronages/1
  # GET /patronages/1.json
  def show
    @patronage = Patronage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patronage }
    end
  end

  # GET /patronages/new
  # GET /patronages/new.json
  def new
    @patronage = Patronage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patronage }
    end
  end

  # GET /patronages/1/edit
  def edit
    @patronage = Patronage.find(params[:id])
  end

  # POST /patronages
  # POST /patronages.json
  def create
    @patronage = Patronage.new(params[:patronage])

    respond_to do |format|
      if @patronage.save
        format.html { redirect_to @patronage, notice: 'Patronage was successfully created.' }
        format.json { render json: @patronage, status: :created, location: @patronage }
      else
        format.html { render action: "new" }
        format.json { render json: @patronage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patronages/1
  # PUT /patronages/1.json
  def update
    @patronage = Patronage.find(params[:id])

    respond_to do |format|
      if @patronage.update_attributes(params[:patronage])
        format.html { redirect_to @patronage, notice: 'Patronage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patronage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patronages/1
  # DELETE /patronages/1.json
  def destroy
    @patronage = Patronage.find(params[:id])
    @patronage.destroy

    respond_to do |format|
      format.html { redirect_to patronages_url }
      format.json { head :no_content }
    end
  end
end
