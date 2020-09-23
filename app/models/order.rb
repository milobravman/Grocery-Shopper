class Order < ApplicationRecord

    belongs_to :shopper, required: false
    belongs_to :customer

end
