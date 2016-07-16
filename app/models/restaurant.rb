class Restaurant < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates :name, :address, :phone, :website, :image, presence: true

	validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
  message: "must start with http:// or https://" }
    validates :phone, format: { with: /\A\d{3}-\d{3}-\d{4}\z/,
    message: "must be in the format 123-456-7890" }

	has_many :reviews
end
