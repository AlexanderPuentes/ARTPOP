class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pictures
 before_save :delete_picture, if: ->{ remove_picture == '1' && !picture_updated_at_changed? }

  private

  def delete_avatar
    self.avatar = nil
  end
end
