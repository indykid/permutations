def permutate(options, index=options.length)
  return [] if index == 0
  return permutate(options, 0) << [options[0]] if index == 1
  return [] << [options[0]] << [options[1]] if index == 2
  return [] << [options[0]] << [options[1]] << [options[2]] if index == 3
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
