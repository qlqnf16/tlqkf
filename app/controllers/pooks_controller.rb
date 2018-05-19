class PooksController < ApplicationController
  before_action :set_pook, only: [:show, :edit, :update, :destroy]

  # GET /pooks
  # GET /pooks.json
  def index
    @pooks = Pook.all
  end

  # GET /pooks/1
  # GET /pooks/1.json
  def show
  end

  # GET /pooks/new
  def new
    @pook = Pook.new
  end

  # GET /pooks/1/edit
  def edit
  end

  # POST /pooks
  # POST /pooks.json
  def create
    @pook = Pook.new(pook_params)
    @pook.post_id=params[:post_id]
    @pook.save
  end

  # PATCH/PUT /pooks/1
  # PATCH/PUT /pooks/1.json
  def update
    respond_to do |format|
      if @pook.update(pook_params)
        format.html { redirect_to @pook, notice: 'Pook was successfully updated.' }
        format.json { render :show, status: :ok, location: @pook }
      else
        format.html { render :edit }
        format.json { render json: @pook.errors, status: :unprocessable_entity }
      end
    end

    def update
      @post = Post.find(params[:post_id])
      @pook.pook = params[:pook]
      @pook.save
      
      redirect_to @post
  end
  end

  # DELETE /pooks/1
  # DELETE /pooks/1.json
  def destroy
    @pook.destroy
    respond_to do |format|
      format.html { redirect_to pooks_url, notice: 'Pook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pook
      @pook = @post.pooks.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pook_params
      params.require(:pook).permit(:name, :freez, :start, :end, :content, :post_id)
    end
end
