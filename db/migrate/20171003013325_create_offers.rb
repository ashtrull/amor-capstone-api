class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.string :offer_type

      t.timestamps
    end
  end
end
