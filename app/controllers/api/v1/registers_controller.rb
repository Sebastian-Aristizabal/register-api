class Api::V1::RegistersController < ApplicationController
  before_action :set_api_v1_register, only: %i[ show update destroy ]

  # GET /api/v1/registers
  def index
    @api_v1_registers = Api::V1::Register.all

    render json: @api_v1_registers
  end

  # GET /api/v1/registers/1
  def show
    render json: @api_v1_register
  end

  # POST /api/v1/registers
  def create
    @api_v1_register = Api::V1::Register.new(api_v1_register_params)

    if @api_v1_register.save
      render json: @api_v1_register, status: :created, location: @api_v1_register
    else
      render json: @api_v1_register.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/registers/1
  def update
    if @api_v1_register.update(api_v1_register_params)
      render json: @api_v1_register
    else
      render json: @api_v1_register.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/registers/1
  def destroy
    @api_v1_register.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_register
      @api_v1_register = Api::V1::Register.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_register_params
      params.require(:api_v1_register).permit(:first_name, :last_name, :sex, :birth_date, :email, :description, :address, :country, :department, :city, :apartment)
    end
end
