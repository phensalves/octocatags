class StarredRepositoriesController < ApplicationController
  before_action :set_starred_repository, only: [:show, :edit, :update, :destroy]

  # GET /starred_repositories
  # GET /starred_repositories.json
  def index
    @starred_repositories = StarredRepository.all
  end

  # GET /starred_repositories/1
  # GET /starred_repositories/1.json
  def show
  end

  # GET /starred_repositories/new
  def new
    @starred_repository = StarredRepository.new
  end

  # GET /starred_repositories/1/edit
  def edit
  end

  # POST /starred_repositories
  # POST /starred_repositories.json
  def create
    @starred_repository = StarredRepository.new(starred_repository_params)

    respond_to do |format|
      if @starred_repository.save
        format.html { redirect_to @starred_repository, notice: 'Starred repository was successfully created.' }
        format.json { render :show, status: :created, location: @starred_repository }
      else
        format.html { render :new }
        format.json { render json: @starred_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starred_repositories/1
  # PATCH/PUT /starred_repositories/1.json
  def update
    respond_to do |format|
      if @starred_repository.update(starred_repository_params)
        format.html { redirect_to @starred_repository, notice: 'Starred repository was successfully updated.' }
        format.json { render :show, status: :ok, location: @starred_repository }
      else
        format.html { render :edit }
        format.json { render json: @starred_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starred_repositories/1
  # DELETE /starred_repositories/1.json
  def destroy
    @starred_repository.destroy
    respond_to do |format|
      format.html { redirect_to starred_repositories_url, notice: 'Starred repository was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starred_repository
      @starred_repository = StarredRepository.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def starred_repository_params
      params.require(:starred_repository).permit(:github_id, :name, :description, :url)
    end
end
