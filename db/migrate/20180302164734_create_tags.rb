class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
	  t.string :name
  	  t.integer :company_id
  	end
  end
end