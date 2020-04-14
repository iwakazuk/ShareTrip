class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploaders :image, ImageUploader

  validates  :user_id, presence: true
  validates  :image, presence: { message: 'が選択されていません' }
  validates  :title, presence: true, length: { maximum: 50 }
  validates :content, length: { maximum: 140 }

  # like関係
  has_many   :likes, dependent: :destroy
  has_many   :liked_users, through: :likes, source: :user
  # comment
  has_many :comments, dependent: :destroy
  # tag
  acts_as_taggable

  def self.search(search)
    where(['title LIKE ?', "%#{search}%"])
  end

  def self.tag_search(tag_name)
    tagged_with(tag_name.to_s)
  end
end
