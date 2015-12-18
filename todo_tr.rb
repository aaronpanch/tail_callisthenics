module Todo
  def self.new
    return List.empty
  end

  def self.add(list, item)
    return list.add(item)
  end

  def self.size(list, acc = 0)
    if empty?(list)
      return acc
    else
      return size(list.tail, 1 + acc)
    end
  end

  def self.empty?(list)
    return list.head == nil
  end

  def self.get_item(list, index)
    get_item_with_size(list, index, size(list))
  end

  def self.get_item_with_size(list, index, size)
    if empty?(list)
      return nil
    elsif index == size - 1
      return list.head
    else
      return get_item_with_size(list.tail, index, size - 1)
    end
  end

  def self.delete(list, item)
    delete_with_stuff_to_add(list, item)
  end

  def self.delete_with_stuff_to_add(list, item, item_to_add = nil)
    if empty?(list)
      return list
    elsif list.head == item
      return list.tail.add(item_to_add)
    else
      delete_with_stuff_to_add(list.tail, item, list.head)
    end
  end

end
