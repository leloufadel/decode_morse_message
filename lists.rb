require_relative 'enumerable.rb'

class MyList
  include Enumerable

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end