class Friend

  def greeting(*name)
    if name.empty?
      "Hello!"
    else
      "Hello, #{name.join}!"
    end
  end
end
