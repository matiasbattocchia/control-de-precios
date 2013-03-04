class Price
  include Mongoid::Document
  field :c, as: :company
  field :s, as: :store
  field :p, as: :product
  field :v, as: :value, type: BigDecimal
  field :ip
end
