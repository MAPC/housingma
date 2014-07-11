class Float
  def sigfig(digits=2)
    float = sprintf("%.#{digits-1}e", self).to_f
    "#{float}"[-2..-1] == ".0" ? float.to_i : float # display as int if ends in .0
  end
end
  
class Fixnum
  # Convert to Float first
  def sigfig(*args)
    self.to_f.sigfig(*args)
  end
end