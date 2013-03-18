class Item
  include Mongoid::Document
  include Mongoid::Timestamps  
  
  field :values, type: Hash
  field :metas,  type: Hash
  
  embedded_in :list
  
end
