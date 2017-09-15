class CreateProfils < ActiveRecord::Migration[5.0]
  def change
    create_table :profils do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :mail
      t.string :organisation
      t.string :job
      t.string :expertise
      t.text :interest

      t.timestamps
    end
  end
end
