class CreateRecordingArtists < ActiveRecord::Migration
  def change
    create_table :recording_artists do |t|
      t.string :name
      t.string :genre
      t.string :mood

      t.timestamps
    end
  end
end
