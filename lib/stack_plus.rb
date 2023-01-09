# class StackPlus
#   attr_reader :data

#   def initialize
#     @data = []
#   end

#   def push(value)
#     data.push(value)
#   end

#   def pop
#     return -1 unless data.size > 0
#     data.pop
#   end

#   def increment(n)

#     [n, data.size].min.times do |i|
#       data[i] += 1
#     end
#   end
# end


class StackPlus
  attr_reader :inc, :data

  def initialize
    @inc = []
    @data = []
  end

  def push(value)
    data.push(value)
    inc.push(0)
  end

  def pop
    return -1 unless data.size > 0
    inc_val = inc.pop
    inc[inc.size - 1] += inc_val if inc.size > 0
    data.pop + inc_val
  end

  def increment(n)
    i = [n, inc.size].min - 1
    inc[i] += 1 if inc[i]
  end
end