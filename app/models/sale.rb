class Sale < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :discount
  has_many :product_quantities
  has_one :comission

  after_save do
    Calc= 0
    self.product_quantities.each{|p| Calc += p.product.price*p.quantity}

    if self.discount.kind=="procent"
      Calc -= Calc/self.discount.value
    elsif self.discount.kind=="money"
      Calc -= self.discount.value
    end


  if self.comission.present?
    self.comission.update(value: (Calc * 0.1), status: :pending)
    else
  comission.create(value: (Calc * 0.1), user: self.user, sale: self, status: :pending)
  end
  end
end
