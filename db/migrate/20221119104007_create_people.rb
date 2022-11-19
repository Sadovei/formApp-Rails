class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
