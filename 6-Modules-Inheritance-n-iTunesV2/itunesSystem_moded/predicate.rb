module Pred
  def isa?(target_class)
    instance_of?(target_class)
  end
end