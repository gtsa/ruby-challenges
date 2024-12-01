# return the array containing the tree levels, from root to last level.
def tree_by_levels(node)
  return [] if node.nil?

  p result = []
  p queue = [node]

  while !queue.empty?
    node = queue.shift
    result << node.value
    queue << node.left if node.left
    queue << node.right if node.right
  end

  result
end
