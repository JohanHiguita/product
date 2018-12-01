class Category < ApplicationRecord

	has_and_belongs_to_many :products

	# def name_category
 #    "#{name}"
 #  end

 #  def subscriptor?
 #    Category.all.map(&:id)
 #  end
end
