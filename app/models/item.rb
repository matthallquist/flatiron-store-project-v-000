class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items

  def self.available_items
    all.select do |item|
      item.inventory > 0
    end
  end

  def format_price
    formatted_price = "$#{price.to_f/100}"
  end
end
