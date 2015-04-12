def permutate(options)
  if options.length == 1
    result = []

    option = options[0]
    permutation = [option]
    result << permutation

    return result
  end

  if options.length == 2
    result = []

    option1 = options[0]
    permutation1 = [option1]
    result << permutation1

    option2 = options[1]
    permutation2 = [option2]
    result << permutation2

    return result
  end

  if options.length == 3
    result = []

    option1 = options[0]
    permutation1 = [option1]
    result << permutation1

    option2 = options[1]
    permutation2 = [option2]
    result << permutation2

    option3 = options[2]
    permutation3 = [option3]
    result << permutation3

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
