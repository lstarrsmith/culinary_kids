class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
    	t.string :name
    	t.string :description
    	t.binary  :avatar
    	t.boolean :show
    	t.timestamps null: false
    end
  end
end
