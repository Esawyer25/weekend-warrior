module Hamming
  def same_length(strand1, strand2)
    if strand1.length == strand2.length
      return true
    else
      return false
    end
  end

  def self.compute(strand1, strand2)
    if same_length(strand1, strand2) == true
      hamming = 0
      strand1.length.times do |index|
        if strand1[index] != strand2[index]
          hamming += 1
        end
      end
    else
      raise ArgumentError.new("The strand lengths are not the same.")
    end
    return hamming
  end
end #end of class

puts Hamming.compute("ATG", "ATG")
