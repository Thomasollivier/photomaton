class Profil < ApplicationRecord
  validates :name, presence: true;
  validates :lastname, presence: true;
  validates :phone, presence: true;
  validates :mail, presence: true;
  validates :organisation, presence: true;
  validates :job, presence: true;
  validates :expertise, presence: true;
  validates :interest, presence: true;

end
