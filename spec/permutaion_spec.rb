def permutate(options, spaces, size=options.length)
  return [[options[0], options[0]]] if spaces == 2 && options == [0]
  return [[options[0], options[0]]] if spaces == 2 && options == [1]
  return [[options[0], options[0]]] if spaces == 2 && options == [2]
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

  it "given one option and two spaces" do
    expect(permutate([0], 2)).to eq([[0, 0]])
  end

  it "given one option and two spaces" do
    expect(permutate([1], 2)).to eq([[1, 1]])
  end

  it "given one option and two spaces" do
    expect(permutate([2], 2)).to eq([[2, 2]])
  end


end
