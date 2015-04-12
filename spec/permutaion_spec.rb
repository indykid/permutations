def permutate(options)
  if options.length == 1
    result = []
    index  = 0

    option = options[index]
    permutation = [option]
    result << permutation
    index += 1

    return result
  end

  if options.length == 2
    result = []
    index  = 0

    option = options[index]
    permutation = [option]
    result << permutation
    index += 1

    option = options[index]
    permutation = [option]
    result << permutation
    index += 1

    return result
  end

  if options.length == 3
    result = []
    index  = 0

    option = options[index]
    permutation = [option]
    result << permutation
    index += 1

    option = options[index]
    permutation = [option]
    result << permutation
    index += 1

    option = options[index]
    permutation = [option]
    result << permutation
    index += 1

    return result
  end
end

describe "permutation" do
  context "given one option returns that option" do
    it do
      expect(permutate([0])).to eq([[0]])
    end

    it do
      expect(permutate([1])).to eq([[1]])
    end

    it do
      expect(permutate([2])).to eq([[2]])
    end
  end

  context "given two options returns two permutations" do
    it do
      expect(permutate([0, 1])).to eq([[0], [1]])
    end

    it do
      expect(permutate([1, 2])).to eq([[1], [2]])
    end

    it do
      expect(permutate([2, 3])).to eq([[2], [3]])
    end
  end

  context "given three options returns three permutations" do
    it do
      expect(permutate([0, 1, 2])).to eq([[0], [1], [2]])
    end

    it do
      expect(permutate([1, 2, 3])).to eq([[1], [2], [3]])
    end

    it do
      expect(permutate([2, 3, 4])).to eq([[2], [3], [4]])
    end

  end

end
