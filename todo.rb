module Todo
  def self.new
    return List.empty
  end

  def self.add(list, item)
    return list.add(item)
  end

  def self.size(list)
    if empty?(list)
      return 0
    else
      return 1 + size(list.tail)
    end
  end

  def self.empty?(list)
    list.head == nil
  end

  def self.get_item(list, index)
    if empty?(list)
      return nil
    elsif index == (size(list) - 1)
      return list.head
    else
      return get_item(list.tail, index)
    end
  end

  def self.delete(list, item)
    if empty?(list)
      return list
    elsif list.head == item
      return list.tail
    else
      delete(list.tail, item).add(list.head)
    end

  end

end
