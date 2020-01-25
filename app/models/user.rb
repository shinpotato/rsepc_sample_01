class User < ApplicationRecord
  attr_accessor :name, :age

  def initialize(name:, age:)
    @name = name    #@とself.の使い分けがいまいち分からない
    self.age = age
  end

  def disp_name
    if self.age > 19
      return "#{@name}さん"
    elsif self.age >14
      return "#{@name}くん"
    elsif self.age > 0
      return "#{@name}ちゃん"
    else
      return "不正な値です"
    end

  end
end
