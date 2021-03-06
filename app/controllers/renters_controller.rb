class RentersController < ApplicationController
  before_action :set_renter, only: [:show, :edit, :update, :destroy]

  # GET /renters
  # GET /renters.json
  def index
    if user_signed_in?
    #Commented out and replaced by below for search
    # @renters = Renter.all
    #SEARCH!
    @renters = if params[:term]
      Renter.where('first_name LIKE ? OR last_name LIKE ? OR aka LIKE ? OR email LIKE ? OR phone_number LIKE ? OR mobile_phone LIKE ?', "%#{params[:term]}%", "%#{params[:term]}%", "%#{params[:term]}%", "%#{params[:term]}%", "%#{params[:term]}%", "%#{params[:term]}%")
      else
        Renter.all
    #END SEARCH
      end

    else redirect_to '/users/sign_in'
    end
  end

  # GET /renters/1
  # GET /renters/1.json
  def show
    @renter = Renter.find(params[:id])
    @reviews = Review.where(renter_id: @renter.id)
    
  end

  # GET /renters/new
  def new
    @renter = Renter.new
  end

  # GET /renters/1/edit
  def edit
  end

  # POST /renters
  # POST /renters.json
  def create
    @renter = Renter.new(renter_params)

    respond_to do |format|
      if @renter.save
        format.html { redirect_to @renter, notice: 'Renter was successfully created.' }
        format.json { render :show, status: :created, location: @renter }
      else
        format.html { render :new }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renters/1
  # PATCH/PUT /renters/1.json
  def update
    respond_to do |format|
      if @renter.update(renter_params)
        format.html { redirect_to @renter, notice: 'Renter was successfully updated.' }
        format.json { render :show, status: :ok, location: @renter }
      else
        format.html { render :edit }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renters/1
  # DELETE /renters/1.json
  def destroy
    @renter.destroy
    respond_to do |format|
      format.html { redirect_to renters_url, notice: 'Renter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renter
      @renter = Renter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def renter_params
      params.require(:renter).permit(:first_name, 
                                    :last_name, 
                                    :aka, 
                                    :email, 
                                    :street_address, 
                                    :city, 
                                    :state, 
                                    :zip, 
                                    :phone_number, 
                                    :mobile_phone, 
                                    :vrbo_url, 
                                    :airbnb_url, 
                                    :facebook_url, 
                                    :linkedin_url, 
                                    :misc, 
                                    :image,
                                    :user_id,
                                    :term)
    end
end
