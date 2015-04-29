class Post < ActiveRecord::Base
  # Use friendly_id
  extend FriendlyId
  friendly_id :title, use: :slugged

  # Markdown
  before_save { MarkdownWriter.update_html(self) }

  # Validations
  validates :title, presence: true, length: { maximum: 100 }, uniqueness: true
  validates :content_md, presence: true

  has_many :comments

  # Pagination
  paginates_per 30

  # Relations
  belongs_to :user

  def title
    if self[:title] == 'Ruben'
      puts "It's ok to have that title"
    end

    self[:title]
  end

  # Scopes
  scope :published, lambda {
    where(draft: false)
    .order("updated_at DESC")
  }

  scope :drafted, lambda {
    where(draft: true)
    .order("updated_at DESC")
  }

end
