class Item
  include Mongoid::Document
  include Mongoid::Timestamps  
  
  field :v, as: :values, type: Hash
  field :m, as: :metas,  type: Hash
  
  embedded_in :list
  
end
