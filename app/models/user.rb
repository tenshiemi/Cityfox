class User < ActiveRecord::Base
  authenticates_with_sorcery!

  if Rails.env.development?
    has_attached_file :profile_pic, :styles => {:thumb => '150x150>'}, :default_url => 'default_profile.jpg'
    validates_attachment_content_type :profile_pic, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  else
    has_attached_file :profile_pic, :styles => { :thumb => '150x150>'}, :default_url => 'http://emilychen.co/images/default_profile.jpg',
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
      :path => ":style/:id_:filename"
    validates_attachment_content_type :profile_pic, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  end

  has_many :reviews
  has_many :companies, :through => :user_company_relations
  has_many :user_company_relations

  validates :password, confirmation: true, presence: true, 
            length: { minimum: 3 }, :on => :create

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  before_save :default_values
  
  private
  def default_values
    self.role ||= :normal
  end
end
