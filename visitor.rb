class Widget
  attr_accessor :price

  def initialize(price)
    @price = price
  end

  def accept(visitor)
    visitor.visit(self)
  end
end

w = Widget.new(10)
puts w.price

class TaxManVisitor
  RATE = 0.2

  def visit(object)
    object.instance_eval do
      class << self
        attr_accessor :tax
      end
    end
    object.tax = object.price * RATE
  end
end

w.accept(TaxManVisitor.new)
puts w.tax
