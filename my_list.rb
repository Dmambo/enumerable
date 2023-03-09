require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = []
    args.each { |arg| @list << arg }
  end

  def each
    return to_enum(:each) unless block_given?

    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
    @list
  end
end
