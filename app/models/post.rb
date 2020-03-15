class Post < ApplicationRecord
  validates :content, length: {maximum: 140}
  validates :user_id, presence: true
  mount_uploaders :image, ImageUploader

  has_many   :likes, dependent: :destroy
  has_many   :liked_users, through: :likes, source: :user

  def user
    return User.find_by(id: self.user_id)
  end
end
