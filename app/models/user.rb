class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_image
  has_many :books, dependent: :destroy

  
  def get_image
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/default-image.jpg')
    else
      profile_image
    end
  end

end
