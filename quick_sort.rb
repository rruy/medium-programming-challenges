module algorithm
  def quick_sort(array)
    return array if array.length <= 1

    pivot = array.delete_at(rand(array.length))
    lesser, greater = array.partition { |element| element < pivot }

    return *quick_sort(lesser), pivot, *quick_sort(greater)
  end
end
