class CasController < ApplicationController
  # GET /cas
  # GET /cas.json
  def index
    @cas = Ca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cas }
    end
  end

  # GET /cas/1
  # GET /cas/1.json
  def show
    @ca = Ca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ca }
    end
  end

  # GET /cas/new
  # GET /cas/new.json
  def new
    @ca = Ca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ca }
    end
  end

  # GET /cas/1/edit
  def edit
    @ca = Ca.find(params[:id])
  end

  # POST /cas
  # POST /cas.json
  def create
    @ca = Ca.new(params[:ca])

    respond_to do |format|
      if @ca.save
        format.html { redirect_to @ca, notice: 'Ca was successfully created.' }
        format.json { render json: @ca, status: :created, location: @ca }
      else
        format.html { render action: "new" }
        format.json { render json: @ca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cas/1
  # PUT /cas/1.json
  def update
    @ca = Ca.find(params[:id])

    respond_to do |format|
      if @ca.update_attributes(params[:ca])
        format.html { redirect_to @ca, notice: 'Ca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cas/1
  # DELETE /cas/1.json
  def destroy
    @ca = Ca.find(params[:id])
    @ca.destroy

    respond_to do |format|
      format.html { redirect_to cas_url }
      format.json { head :no_content }
    end
  end
end
