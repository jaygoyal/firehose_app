# This matches to the Pic.create in the terminal window. This creates the Pic
# This is the model

class Pic < ActiveRecord::Base
	
	mount_uploader :image, ImageUploader

end
