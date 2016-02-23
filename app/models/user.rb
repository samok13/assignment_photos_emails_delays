class User < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300", :thumb => "100x100" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def profile_photo_data=(profile_photo_data)
    self.profile_photo = profile_photo_data.read
  end



end
