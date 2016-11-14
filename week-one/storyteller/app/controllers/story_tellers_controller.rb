class StoryTellersController < ApplicationController
  before_action :set_story_teller, only: [:show, :edit, :update, :destroy]

  # GET /story_tellers
  # GET /story_tellers.json
  def index
    @story_tellers = StoryTeller.all
  end

  # GET /story_tellers/1
  # GET /story_tellers/1.json
  def show
  end

  # GET /story_tellers/new
  def new
    @story_teller = StoryTeller.new
  end

  # GET /story_tellers/1/edit
  def edit
  end

  # POST /story_tellers
  # POST /story_tellers.json
  def create
    @story_teller = StoryTeller.new(story_teller_params)

    respond_to do |format|
      if @story_teller.save
        format.html { redirect_to @story_teller, notice: 'Story teller was successfully created.' }
        format.json { render :show, status: :created, location: @story_teller }
      else
        format.html { render :new }
        format.json { render json: @story_teller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /story_tellers/1
  # PATCH/PUT /story_tellers/1.json
  def update
    respond_to do |format|
      if @story_teller.update(story_teller_params)
        format.html { redirect_to @story_teller, notice: 'Story teller was successfully updated.' }
        format.json { render :show, status: :ok, location: @story_teller }
      else
        format.html { render :edit }
        format.json { render json: @story_teller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_tellers/1
  # DELETE /story_tellers/1.json
  def destroy
    @story_teller.destroy
    respond_to do |format|
      format.html { redirect_to story_tellers_url, notice: 'Story teller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_teller
      @story_teller = StoryTeller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_teller_params
      params.require(:story_teller).permit(:name, :description)
    end
end
