class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
      t.string :description
      t.string :website
      t.string :category
      t.string :decision_maker_check
      t.string :terms_agreement_check
      t.string :date
      t.string :start_date
      t.string :end_date
      t.string :zip_code
      t.string :city
      t.string :address
      t.string :attendees
      t.string :audience
      t.string :sponsors_known
      t.string :target_group_jobs
      t.string :target_group_education
      t.string :target_group_age
      t.string :sponsorship_deadline
      t.string :sponsorships_taken
      t.string :sponsorship_price
      t.string :sponsorship_level
      t.string :sponsorship_offer
      t.string :images
      t.string :videos
      t.string :speakers
      t.string :certificates
      t.string :contact_name
      t.string :contact_method
      t.string :contact_phone
      t.string :contact_email
      t.string :tax_deductible
      t.integer :user_id
      t.integer :contact_first_name
      t.integer :contact_linkedin
      t.integer :contact_fax
      t.integer :facebook
      t.integer :twitter
      t.integer :contact_mobile

      t.timestamps
    end
  end
end
