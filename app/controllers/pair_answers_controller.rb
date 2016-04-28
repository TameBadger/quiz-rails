class PairAnswersController < ApplicationController
  before_action :set_pair_answer, only: [:show, :update, :destroy]

  # GET /pair_answers
  def index

    if request.query_parameters[:sheet].present?
      sheet_id = request.query_parameters[:sheet]
      @pair_answers = PairAnswer.where(:sheet_id => sheet_id)
      render json: @pair_answers
    else
      @pair_answers = PairAnswer.all
      render json: @pair_answers
    end
    
  end

  # GET /pair_answers/1
  def show
    render json: @pair_answer
  end

  # POST /pair_answers
  def create
    @pair_answer = PairAnswer.new(pair_answer_params)

    if @pair_answer.save
      render json: @pair_answer, status: :created, location: @pair_answer
    else
      render json: @pair_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pair_answers/1
  def update
    if @pair_answer.update(pair_answer_params)
      render json: @pair_answer
    else
      render json: @pair_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pair_answers/1
  def destroy
    @pair_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pair_answer
      @pair_answer = PairAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pair_answer_params

      relationships = params[:data][:relationships]
      pair = relationships[:pair][:data][:id]
      answer = relationships[:answer][:data][:id]
      sheet = relationships[:sheet][:data][:id]

      whitelisted = ActionController::Parameters.new(pair_id: pair, answer_id: answer, sheet_id: sheet)
      whitelisted.permit(:pair_id, :answer_id, :sheet_id)
    end
end
