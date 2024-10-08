module Spree
  module PermittedAttributes
    ATTRIBUTES << :review_attributes
    ATTRIBUTES << :feedback_review_attributes
    
    mattr_reader(*ATTRIBUTES)

    @@product_attributes += %i[avg_rating reviews_count]
    @@review_attributes = [:rating, :title, :review, :name, :show_identifier]
    @@feedback_review_attributes = [:rating, :comment]
  end
end
