class List
  include Mongoid::Document
  include Mongoid::Timestamps
    
  field :n, as: :name, type: String
  field :_id, type: String, default: ->{ name.to_s.parameterize }
  
  belongs_to :site
  embeds_many :columns
  embeds_many :items
  
  accepts_nested_attributes_for :columns
  
  validates_presence_of :n
  validates_uniqueness_of :n
end
