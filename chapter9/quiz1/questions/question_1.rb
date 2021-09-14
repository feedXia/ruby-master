# Two methods have already been defined, but they don't yet do anything useful
# Your job is to fill in the method bodies and get the tests to pass
#
# Goodbye
# Should always return 'See you soon!' (not puts)
#
# Hello
# Should return (not puts)
# - 'Good morning!' between 09:00 and 12:00
# - 'Good afternoon!' between 12:00 and 16:00
# - 'Hello!' at all other times
#

def hello
  time = Time.now.hour.to_i
  if time.between?(9, 12) 
    "Good morning!"
  elsif time.between?(12, 16)
    "Good afternoon!"
  else
    "Hello!"
  end
end

def goodbye
  "See you soon!"
end


