class WinesController < ApplicationController
  # GET /wines
  # GET /wines.json
  def index
    @winery = Winery.find(params[:winery_id])
    @wines = @winery.wines

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wines }
    end
  end

  def all
    @wines = Wine.all

    respond_to do |format|
      format.html # all.html.erb
      format.json { render json: @wines }
    end
  end

  # GET /wines/1
  # GET /wines/1.json
  def show
    @winery = Winery.find(params[:winery_id])
    @wine = @winery.wines.find(params[:id])

    respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @wine }
    end
  end

  # GET /wines/new
  # GET /wines/new.json
  def new
    @winery = Winery.find(params[:winery_id])
    @wine =  @winery.wines.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wine }
    end
  end

  # GET /wines/1/edit
  def edit
    @winery = Winery.find(params[:winery_id])
    @wine = @winery.wines.find(params[:id])
  end

  # POST /wines
  # POST /wines.json
  def create
    @winery = Winery.find(params[:winery_id])
    @wine = @winery.wines.build(params[:wine])

    respond_to do |format|
      if @wine.save
        format.html { redirect_to [@wine.winery, @wine], notice: 'Wine was successfully created.' }
        format.json { render json: @wine, status: :created, :location => [@wine.winery, @wine] }
      else
        format.html { render action: "new" }
        format.json { render json: @wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wines/1
  # PUT /wines/1.json
  def update
    @winery = Winery.find(params[:winery_id])
    @wine = @winery.wines.find(params[:id])

    respond_to do |format|
      if @wine.update_attributes(params[:wine])
        format.html { redirect_to [@wine.winery, @wine] , notice: 'Wine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wines/1
  # DELETE /wines/1.json
  def destroy
    @winery = Winery.find(params[:winery_id])
    @wine = @winery.wines.find(params[:id])
    @wine.destroy

    respond_to do |format|
      format.html { redirect_to winery_wines_url }
      format.json { head :no_content }
    end
  end
end
