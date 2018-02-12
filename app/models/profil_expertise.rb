class ProfilExpertise < ApplicationRecord
  belongs_to :profil
  belongs_to :expertise

  def add_expertise(expertise)
    @patient << expertise
  end

end
