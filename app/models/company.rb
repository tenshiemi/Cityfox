class Company < ActiveRecord::Base
  if Rails.env.development?
    has_attached_file :logo, :styles => {:thumb => '100x100>'}, :default_url => 'default.jpg'
    validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  else
    has_attached_file :logo, :styles => { :thumb => '100x100>'}, :default_url => 'http://emilychen.co/images/default.jpg',
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
      :path => ":style/:id_:filename"
    validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  end

  has_many :reviews
  has_many :users, :through => :user_company_relations
  has_many :user_company_relations

  validates :name, presence: true
  validates :country, presence: true
  validates :city, presence: true

  def rating
    rating_count = self.reviews.count
    positive_ratings = self.reviews.where(would_work_with: true).count
    (positive_ratings.to_f / rating_count * 100).to_i
  end

  def get_rating
    Review.where(company_id: self.id).average("rating_overall").to_i
  end
end
