class Api::V1::RegistersController < ApplicationController
  before_action :set_api_v1_register, only: %i[ show update destroy ]

  # GET /api/v1/registers
  def index
    @api_v1_registers = Api::V1::Register.all

    render json: @api_v1_registers
  end

  # GET /api/v1/registers/1
  def show
    if @api_v1_register
      render json: @api_v1_register
    else
      render json: {status: 404, message: "Register not found"}, status: 404
    end
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

    if @api_v1_register
      @api_v1_register.destroy
      render json: { messagge: 'Register was successfully destroyed.' }, status: 200
    else
      render json: {status: 404, message: "Unable to destroy this Register"}, status: 404
    end
  end

  private
    def set_api_v1_register
      @api_v1_register = Api::V1::Register.find(params[:id])
    end

    def api_v1_register_params
      params.require(:api_v1_register).permit(:first_name, :last_name, :gender, :birth_date, :email, :description, :address, :country, :department, :city, :apartment)
    end
end
