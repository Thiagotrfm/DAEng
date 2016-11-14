class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
			t.string :fone_number
			t.string :registration
			t.string :cpf
			t.string :course
			t.string :coordenation
			t.boolean :hole
			t.string :password_digest
			t.string :remember_digest
      t.timestamps
    end
  end
end
