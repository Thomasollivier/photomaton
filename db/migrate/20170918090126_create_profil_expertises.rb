class CreateProfilExpertises < ActiveRecord::Migration[5.0]
  def change
    create_table :profil_expertises do |t|
      t.references :profil, foreign_key: true
      t.references :expertise, foreign_key: true

      t.timestamps
    end
  end
end
