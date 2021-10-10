class FamilyMember
  attr_accessor :name, :sex, :status, :age, :children;

  def initialize(name, sex, status, age, children)
    @name = name 
    @sex = sex
    @age = age 
    @status = status
    @children = children
  end
  # the person is a parent if they are the eldest and marriage status is "y"
  #
  def parent?
    name = @name
    sex = @sex
    age_of_pers = @age
    married_yn = @status
    children_yn = @children

    if children_yn == "y" && sex == "male"
      then puts name.chomp + " is a 'father' parent type family memeber"
      true

    elsif children_yn == "y" && sex =="female" 
      then puts name.chomp + " is a 'mother' of the parent type of a family tree"
      true

    else
      child?
      false

    end
  end

  def child?
    name = @name
    age_of_pers = @age
    married_yn = @status
    children_yn = @children
    sex = @sex

    if children_yn == "n" && sex == "male"
      then puts name.chomp + " is a 'son' type of family sect of benders"
      true

    elsif children_yn == "n" && sex == "female"
      then puts name.chomp + " is a 'daughter' sort of family member"
      true

    else
      parent?
      false

    end
  end

end

