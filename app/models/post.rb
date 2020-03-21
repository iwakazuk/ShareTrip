class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploaders :images, ImageUploader
  validates  :images, presence: true, length: { maximum: 5 }
  validates  :user_id, presence: true
  validates  :title, presence: true, length: { maximum: 50 }
  # like関係
  has_many   :likes, dependent: :destroy
  has_many   :liked_users, through: :likes, source: :user
  # comment
  has_many :comments, dependent: :destroy

  def self.search(search)
    where(['title LIKE ?', "%#{search}%"])
  end

  def self.tag_search(tag_name)
    tagged_with(tag_name.to_s)
  end
end
