class CreateRawScraps < ActiveRecord::Migration[7.0]
  def change
    create_table :raw_scraps do |t|
      t.references :scraping_log
      t.string :company_name
      t.string :offer_area
      t.string :skill_name
      t.string :source_name
      t.timestamps
    end
  end
end
