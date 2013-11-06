# == Schema Information
#
# Table name: photo_shouts
#
#  id                 :integer          not null, primary key
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class PhotoShout < ActiveRecord::Base
	has_attached_file :image, styles: {
		shout: "200x200>"
	}
end
