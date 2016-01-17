class CreatePicImporterLogs < ActiveRecord::Migration
  def change
    create_table :pic_importer_logs do |t|
      t.string :text

      t.timestamps
    end
  end
end
