class App

  attr_reader :hash

  def initialize
    @hash = {w: 0, e: 0, n: 0, s: 0}
  end

  def tenminuteswalk(array)
    # return false if array.length != 10
    array.each {|x| hash[x.to_sym]=hash[x.to_sym]+1}
    if hash[:w]==hash[:e] && hash[:n]==hash[:s]
      true
    else
      false
    end
  end
end
