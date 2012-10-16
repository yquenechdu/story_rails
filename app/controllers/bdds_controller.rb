class BddsController < ApplicationController
  # GET /bdds
  # GET /bdds.json
  def index
    @bdds = Bdd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bdds }
    end
  end

  # GET /bdds/1
  # GET /bdds/1.json
  def show
    @bdd = Bdd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bdd }
    end
  end

  # GET /bdds/new
  # GET /bdds/new.json
  def new
    @bdd = Bdd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bdd }
    end
  end

  # GET /bdds/1/edit
  def edit
    @bdd = Bdd.find(params[:id])
  end

  # POST /bdds
  # POST /bdds.json
  def create
    @bdd = Bdd.new(params[:bdd])

    respond_to do |format|
      if @bdd.save
        format.html { redirect_to @bdd, notice: 'Bdd was successfully created.' }
        format.json { render json: @bdd, status: :created, location: @bdd }
      else
        format.html { render action: "new" }
        format.json { render json: @bdd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bdds/1
  # PUT /bdds/1.json
  def update
    @bdd = Bdd.find(params[:id])

    respond_to do |format|
      if @bdd.update_attributes(params[:bdd])
        format.html { redirect_to @bdd, notice: 'Bdd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bdd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bdds/1
  # DELETE /bdds/1.json
  def destroy
    @bdd = Bdd.find(params[:id])
    @bdd.destroy

    respond_to do |format|
      format.html { redirect_to bdds_url }
      format.json { head :no_content }
    end
  end
end
