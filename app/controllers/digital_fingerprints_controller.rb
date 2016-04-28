class DigitalFingerprintsController < ApplicationController
  before_action :set_digital_fingerprint, only: [:show, :update, :destroy]

  # GET /digital_fingerprints
  def index
    @digital_fingerprints = DigitalFingerprint.all

    render json: @digital_fingerprints
  end

  # GET /digital_fingerprints/1
  def show
    render json: @digital_fingerprint
  end

  # POST /digital_fingerprints
  def create

    @digital_fingerprint = DigitalFingerprint.new(digital_fingerprint_params_sec)

    if @digital_fingerprint.save
      render json: @digital_fingerprint, status: :created, location: @digital_fingerprint
    else
      render json: @digital_fingerprint.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /digital_fingerprints/1
  def update
    if @digital_fingerprint.update(digital_fingerprint_params)
      render json: @digital_fingerprint
    else
      render json: @digital_fingerprint.errors, status: :unprocessable_entity
    end
  end

  # DELETE /digital_fingerprints/1
  def destroy
    @digital_fingerprint.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digital_fingerprint
      @digital_fingerprint = DigitalFingerprint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def digital_fingerprint_params
      params.require(:digital_fingerprint).permit(:fingerprint, :ua, :action)
    end

    def digital_fingerprint_params_sec
      params.require(:data).require(:attributes).permit(:fingerprint, :ua, :action)
    end
end
