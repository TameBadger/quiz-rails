class QuizSheetsController < ApplicationController
  before_action :set_quiz_sheet, only: [:show, :update, :destroy]

  # GET /quiz_sheets
  def index

    if request.query_parameters[:digitalFingerprint].present?
      digital_fingerprint = request.query_parameters[:digitalFingerprint]
      @filtered = QuizSheet.joins(:digital_fingerprint).where(:digital_fingerprints => {:fingerprint => digital_fingerprint})
      render json: @filtered
    else
      @quiz_sheets = QuizSheet.all
      render json: @quiz_sheets
    end
    
  end

  # GET /quiz_sheets/1
  def show
    render json: @quiz_sheet
  end

  # POST /quiz_sheets
  def create

    @quiz_sheet = QuizSheet.new(quiz_sheet_params)

    if @quiz_sheet.save
      render json: @quiz_sheet, status: :created, location: @quiz_sheet
    else
      render json: @quiz_sheet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quiz_sheets/1
  def update
    if @quiz_sheet.update(quiz_sheet_params)
      render json: @quiz_sheet
    else
      render json: @quiz_sheet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quiz_sheets/1
  def destroy
    @quiz_sheet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_sheet
      @quiz_sheet = QuizSheet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quiz_sheet_params
      title = params[:data][:attributes][:title]
      relation = params[:data][:relationships][:"digital-fingerprint"][:data][:id]
      whitelisted = ActionController::Parameters.new(title: title, digital_fingerprint_id: relation)
      whitelisted.permit(:title, :digital_fingerprint_id)
    end
end
