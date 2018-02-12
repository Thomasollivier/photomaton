class ProfilsController < ApplicationController

  def home
  end

  def index
    @profils = Profil.all
  end

  def show
    @profil = Profil.find(params[:id])
  end

  def new
    @profil = Profil.new
  end

  # GUILLAUME MA INDIQUE QUI LE PROBLEME ETAIT DANS LA METHODE CREATE ET LA
  # METHODE PRIVATE

  def create
    profil = Profil.create(profil_params)
    # profil.profil_expertises.create(profil_expertise_params)
    redirect_to profil_path(profil)

  end

  def edit
    @profil = Profil.find(params[:id])
  end

  def update
  end

  def destroy
    @profil = Profil.find(params[:id])
    @profil.destroy
    redirect_to profils_path
  end

  private

  def profil_params
    params.require(:profil).permit(:name, :lastname, :phone, :mail, :organisation, :job, :profil_expertise_ids, :interest )

  end


  # def profil_expertise_params
  #   params.require(:profil).permit(:profil_expertise_id)
  # end
end
