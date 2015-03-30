class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.integer 	:section_id
    	t.string 	:word_overlay
    	t.boolean 	:show_word_overlay
    	t.binary 	:image_file       
        t.string    :filename
        t.string    :mime_type
    	t.string 	:name
    	t.timestamps null: false
    end
  end
end
