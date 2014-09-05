class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    attr_accessible :name, :role, :email, :password, :password_confirmation, :image, :remote_image_url
    mount_uploader :image, ImageUploader
end
