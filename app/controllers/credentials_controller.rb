class CredentialsController < ApplicationController
  before_action :set_credential, only: [:show, :edit, :update, :destroy]

  # GET /credentials
  # GET /credentials.json
  def index
    @credentials = Credential.all unless params[:cer_number].present? && params[:identity_number].present?
    @credentials = Credential.all.where("cer_number = ?", params[:cer_number]) if params[:cer_number].present?
    @credentials = Credential.all.where("identity_number = ?", params[:identity_number]) if params[:identity_number].present?
  end

# 证书简介
  def cer_intro
    
  end

# 证书样本
  def cet_style
    
  end

# 查询证书
  def search
    @credential = Credential.all.find_by_cer_number(params[:cer_number]) if params[:cer_number].present?
    @credential = Credential.all.find_by_identity_number(params[:identity_number]) if params[:identity_number].present?  
  end

  # GET /credentials/1
  # GET /credentials/1.json 
  def show
    @credential = Credential.find(params[:id])
  end

  # # GET /credentials/new
  # def new  #   @credential = Credential.new

  # end

  # # GET /credentials/1/edit
  # def edit
  # end

  # # POST /credentials
  # # POST /credentials.json
  # def create
  #   @credential = Credential.new(credential_params)

  #   respond_to do |format|
  #     if @credential.save
  #       format.html { redirect_to @credential, notice: 'Credential was successfully created.' }
  #       format.json { render :show, status: :created, location: @credential }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @credential.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /credentials/1
  # # PATCH/PUT /credentials/1.json
  # def update
  #   respond_to do |format|
  #     if @credential.update(credential_params)
  #       format.html { redirect_to @credential, notice: 'Credential was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @credential }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @credential.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /credentials/1
  # # DELETE /credentials/1.json
  # def destroy
  #   @credential.destroy
  #   respond_to do |format|
  #     format.html { redirect_to credentials_url, notice: 'Credential was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credential
      @credential = Credential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credential_params
      params.require(:credential).permit(:name, :cer_number, :score, :cer_type, :start_date, :end_date, :identity_number)
    end
end
