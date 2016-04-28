class CreateDigitalFingerprints < ActiveRecord::Migration[5.0]
  def change
    create_table :digital_fingerprints do |t|
      t.string :fingerprint
      t.string :ua
      t.string :action

      t.timestamps
    end
  end
end
