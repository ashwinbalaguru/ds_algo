class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
      @x = []
    end

=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @x << x
    end


=begin
    :rtype: Void
=end
    def pop()
      @x.pop
    end


=begin
    :rtype: Integer
=end
    def top()
      @x.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @x.min
    end


end


# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()



