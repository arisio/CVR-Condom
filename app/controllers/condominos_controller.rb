
class CondominosController < ApplicationController
  # GET /condominos
  # GET /condominos.json
  def index
    @condominos = Condomino.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @condominos }
    end
  end

  # GET /condominos/1
  # GET /condominos/1.json
  def show
    @condomino = Condomino.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @condomino }
    end
  end

  # GET /condominos/new
  # GET /condominos/new.json
  def new
    @condomino = Condomino.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @condomino }
    end
  end

  # GET /condominos/1/edit
  def edit
    @condomino = Condomino.find(params[:id])
  end

  # POST /condominos
  # POST /condominos.json
  def create
    @condomino = Condomino.new(params[:condomino])

    respond_to do |format|
      if @condomino.save
        format.html { redirect_to @condomino, notice: 'Condomino was successfully created.' }
        format.json { render json: @condomino, status: :created, location: @condomino }
      else
        format.html { render action: "new" }
        format.json { render json: @condomino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /condominos/1
  # PUT /condominos/1.json
  def update
    @condomino = Condomino.find(params[:id])

    respond_to do |format|
      if @condomino.update_attributes(params[:condomino])
        format.html { redirect_to @condomino, notice: 'Condomino was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @condomino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condominos/1
  # DELETE /condominos/1.json
  def destroy
    @condomino = Condomino.find(params[:id])
    @condomino.destroy

    respond_to do |format|
      format.html { redirect_to condominos_url }
      format.json { head :no_content }
    end
  end
end
