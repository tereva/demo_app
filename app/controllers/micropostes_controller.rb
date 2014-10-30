class MicropostesController < ApplicationController
  # GET /micropostes
  # GET /micropostes.json
  def index
    @micropostes = Microposte.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropostes }
    end
  end

  # GET /micropostes/1
  # GET /micropostes/1.json
  def show
    @microposte = Microposte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microposte }
    end
  end

  # GET /micropostes/new
  # GET /micropostes/new.json
  def new
    @microposte = Microposte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microposte }
    end
  end

  # GET /micropostes/1/edit
  def edit
    @microposte = Microposte.find(params[:id])
  end

  # POST /micropostes
  # POST /micropostes.json
  def create
    @microposte = Microposte.new(params[:microposte])

    respond_to do |format|
      if @microposte.save
        format.html { redirect_to @microposte, notice: 'Microposte was successfully created.' }
        format.json { render json: @microposte, status: :created, location: @microposte }
      else
        format.html { render action: "new" }
        format.json { render json: @microposte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropostes/1
  # PUT /micropostes/1.json
  def update
    @microposte = Microposte.find(params[:id])

    respond_to do |format|
      if @microposte.update_attributes(params[:microposte])
        format.html { redirect_to @microposte, notice: 'Microposte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microposte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropostes/1
  # DELETE /micropostes/1.json
  def destroy
    @microposte = Microposte.find(params[:id])
    @microposte.destroy

    respond_to do |format|
      format.html { redirect_to micropostes_url }
      format.json { head :no_content }
    end
  end
end
