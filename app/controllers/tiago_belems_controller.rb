class TiagoBelemsController < ApplicationController
  # GET /tiago_belems
  # GET /tiago_belems.json
  def index
    @tiago_belems = TiagoBelem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tiago_belems }
    end
  end

  # GET /tiago_belems/1
  # GET /tiago_belems/1.json
  def show
    @tiago_belem = TiagoBelem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tiago_belem }
    end
  end

  # GET /tiago_belems/new
  # GET /tiago_belems/new.json
  def new
    @tiago_belem = TiagoBelem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tiago_belem }
    end
  end

  # GET /tiago_belems/1/edit
  def edit
    @tiago_belem = TiagoBelem.find(params[:id])
  end

  # POST /tiago_belems
  # POST /tiago_belems.json
  def create
    @tiago_belem = TiagoBelem.new(params[:tiago_belem])

    respond_to do |format|
      if @tiago_belem.save
        format.html { redirect_to @tiago_belem, notice: 'Tiago belem was successfully created.' }
        format.json { render json: @tiago_belem, status: :created, location: @tiago_belem }
      else
        format.html { render action: "new" }
        format.json { render json: @tiago_belem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tiago_belems/1
  # PUT /tiago_belems/1.json
  def update
    @tiago_belem = TiagoBelem.find(params[:id])

    respond_to do |format|
      if @tiago_belem.update_attributes(params[:tiago_belem])
        format.html { redirect_to @tiago_belem, notice: 'Tiago belem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tiago_belem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiago_belems/1
  # DELETE /tiago_belems/1.json
  def destroy
    @tiago_belem = TiagoBelem.find(params[:id])
    @tiago_belem.destroy

    respond_to do |format|
      format.html { redirect_to tiago_belems_url }
      format.json { head :no_content }
    end
  end
end
