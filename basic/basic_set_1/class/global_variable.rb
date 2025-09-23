$config = "development"

class Config
  def print_env
    puts "Environment: #{$config}"
  end
end

c = Config.new
c.print_env