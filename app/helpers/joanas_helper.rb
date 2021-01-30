module JoanasHelper
  def get_name(name, index)
    name = name.split(' ')
    name[index]
  end
end
