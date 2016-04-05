class ProfessorshipsController < ApplicationController
  before_action :set_professorship, only: [:show, :edit, :update, :destroy]

  # GET /professorships
  # GET /professorships.json
  def index
    @professorships = Professorship.all
  end

  # GET /professorships/1
  # GET /professorships/1.json
  def show
  end

  # GET /professorships/new
  def new
    @professorship = Professorship.new
  end

  # GET /professorships/1/edit
  def edit
  end

  # POST /professorships
  # POST /professorships.json
  def create
    @professorship = Professorship.new(professorship_params)

    respond_to do |format|
      if @professorship.save
        format.html { redirect_to @professorship, notice: 'Professorship was successfully created.' }
        format.json { render :show, status: :created, location: @professorship }
      else
        format.html { render :new }
        format.json { render json: @professorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professorships/1
  # PATCH/PUT /professorships/1.json
  def update
    respond_to do |format|
      if @professorship.update(professorship_params)
        format.html { redirect_to @professorship, notice: 'Professorship was successfully updated.' }
        format.json { render :show, status: :ok, location: @professorship }
      else
        format.html { render :edit }
        format.json { render json: @professorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professorships/1
  # DELETE /professorships/1.json
  def destroy
    @professorship.destroy
    respond_to do |format|
      format.html { redirect_to professorships_url, notice: 'Professorship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professorship
      @professorship = Professorship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professorship_params
      params.require(:professorship).permit(:start_date, :end_date)
    end
end
