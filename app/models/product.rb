# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :decimal(10, 2)   default("0.0")
#  category_id :integer
#  brand_id    :integer
#  data        :json
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_brand_id     (brand_id)
#  index_products_on_category_id  (category_id)
#

class Product < ApplicationRecord
  update_index('products') { self }

  belongs_to :brand
  belongs_to :category
end
