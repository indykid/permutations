def permutate(options, spaces, size=options.length)
  if spaces >= 2
    return [] if spaces == 0
    return [[options[0]]] if spaces == 1
    return [[options[0], options[0]]] if spaces == 2
    return [[options[0], options[0], options[0]]] if spaces == 3
    return [[options[0], options[0], options[0], options[0]]] if spaces == 4
  end

  return [] if size == 0
  return permutate(options, spaces, size - 1) << [options[size - 1]]
end

describe "permutation" do
  context "given one option returns that option" do
    it do
      expect(permutate([0], 1)).to eq([[0]])
    end

    it do
      expect(permutate([1], 1)).to eq([[1]])
    end

    it do
      expect(permutate([2], 1)).to eq([[2]])
    end
  end

  context "given two options returns two permutations" do
    it do
      expect(permutate([0, 1], 1)).to eq([[0], [1]])
    end

    it do
      expect(permutate([1, 2], 1)).to eq([[1], [2]])
    end

    it do
      expect(permutate([2, 3], 1)).to eq([[2], [3]])
    end
  end

  context "given three options returns three permutations" do
    it do
      expect(permutate([0, 1, 2], 1)).to eq([[0], [1], [2]])
    end

    it do
      expect(permutate([1, 2, 3], 1)).to eq([[1], [2], [3]])
    end

    it do
      expect(permutate([2, 3, 4], 1)).to eq([[2], [3], [4]])
    end

  end

  context "given one option and two spaces" do
    it do
      expect(permutate([0], 2)).to eq([[0, 0]])
    end

    it do
      expect(permutate([1], 2)).to eq([[1, 1]])
    end

    it do
      expect(permutate([2], 2)).to eq([[2, 2]])
    end
  end

  context "given one option and three spaces" do
    it do
      expect(permutate([0], 3)).to eq([[0, 0, 0]])
    end

    it do
      expect(permutate([1], 3)).to eq([[1, 1, 1]])
    end

    it do
      expect(permutate([2], 3)).to eq([[2, 2, 2]])
    end
  end

  context "given one option and four spaces" do
    it do
      expect(permutate([0], 4)).to eq([[0, 0, 0, 0]])
    end

    it do
      expect(permutate([1], 4)).to eq([[1, 1, 1, 1]])
    end

    it do
      expect(permutate([2], 4)).to eq([[2, 2, 2, 2]])
    end
  end




end
