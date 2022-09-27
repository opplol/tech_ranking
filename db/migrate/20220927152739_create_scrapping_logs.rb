class CreateScrappingLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :scrapping_logs do |t|
      t.string :status
      t.timestamps
    end
  end
end
