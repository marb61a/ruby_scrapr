class NewsscrapersController < ApplicationController
  before_action :set_newsscraper, only: [:show, :edit, :update, :destroy]

  # GET /newsscrapers
  # GET /newsscrapers.json
  def index
    page = Nokogiri::HTML(open('https://news.google.com/news/'))
    @newsscrapers = page.css('.esc-body')
  end

  # GET /newsscrapers/1
  # GET /newsscrapers/1.json
  def show
  end

  # GET /newsscrapers/new
  def new
    @newsscraper = Newsscraper.new
  end

  # GET /newsscrapers/1/edit
  def edit
  end

  # POST /newsscrapers
  # POST /newsscrapers.json
  def create
    @newsscraper = Newsscraper.new(newsscraper_params)

    respond_to do |format|
      if @newsscraper.save
        format.html { redirect_to @newsscraper, notice: 'Newsscraper was successfully created.' }
        format.json { render :show, status: :created, location: @newsscraper }
      else
        format.html { render :new }
        format.json { render json: @newsscraper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsscrapers/1
  # PATCH/PUT /newsscrapers/1.json
  def update
    respond_to do |format|
      if @newsscraper.update(newsscraper_params)
        format.html { redirect_to @newsscraper, notice: 'Newsscraper was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsscraper }
      else
        format.html { render :edit }
        format.json { render json: @newsscraper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsscrapers/1
  # DELETE /newsscrapers/1.json
  def destroy
    @newsscraper.destroy
    respond_to do |format|
      format.html { redirect_to newsscrapers_url, notice: 'Newsscraper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsscraper
      @newsscraper = Newsscraper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsscraper_params
      params.require(:newsscraper).permit(:title, :body, :time, :image_url)
    end
end
