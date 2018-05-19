class BoksController < ApplicationController
  before_action :set_bok, only: [:show, :edit, :update, :destroy]

  # GET /boks
  # GET /boks.json
  def index
    @boks = Bok.all
  end

  # GET /boks/1
  # GET /boks/1.json
  def show
  end

  # GET /boks/new
  def new
    @bok = Bok.new
  end

  # GET /boks/1/edit
  def edit
  end

  # POST /boks
  # POST /boks.json
  def create
    @bok = Bok.new(bok_params)

    respond_to do |format|
      if @bok.save
        format.html { redirect_to @bok, notice: 'Bok was successfully created.' }
        format.json { render :show, status: :created, location: @bok }
      else
        format.html { render :new }
        format.json { render json: @bok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boks/1
  # PATCH/PUT /boks/1.json
  def update
    respond_to do |format|
      if @bok.update(bok_params)
        format.html { redirect_to @bok, notice: 'Bok was successfully updated.' }
        format.json { render :show, status: :ok, location: @bok }
      else
        format.html { render :edit }
        format.json { render json: @bok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boks/1
  # DELETE /boks/1.json
  def destroy
    @bok.destroy
    respond_to do |format|
      format.html { redirect_to boks_url, notice: 'Bok was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bok
      @bok = Bok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bok_params
      params.require(:bok).permit(:name, :freez, :start, :end, :content)
    end
end
