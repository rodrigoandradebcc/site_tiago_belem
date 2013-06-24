class RealizationsController < ApplicationController
  # GET /realizations
  # GET /realizations.json
  def index
    @realizations = Realization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @realizations }
    end
  end

  # GET /realizations/1
  # GET /realizations/1.json
  def show
    @realization = Realization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @realization }
    end
  end

  # GET /realizations/new
  # GET /realizations/new.json
  def new
    @realization = Realization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @realization }
    end
  end

  # GET /realizations/1/edit
  def edit
    @realization = Realization.find(params[:id])
  end

  # POST /realizations
  # POST /realizations.json
  def create
    @realization = Realization.new(params[:realization])

    respond_to do |format|
      if @realization.save
        format.html { redirect_to @realization, notice: 'Realization was successfully created.' }
        format.json { render json: @realization, status: :created, location: @realization }
      else
        format.html { render action: "new" }
        format.json { render json: @realization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /realizations/1
  # PUT /realizations/1.json
  def update
    @realization = Realization.find(params[:id])

    respond_to do |format|
      if @realization.update_attributes(params[:realization])
        format.html { redirect_to @realization, notice: 'Realization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @realization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realizations/1
  # DELETE /realizations/1.json
  def destroy
    @realization = Realization.find(params[:id])
    @realization.destroy

    respond_to do |format|
      format.html { redirect_to realizations_url }
      format.json { head :no_content }
    end
  end
end
