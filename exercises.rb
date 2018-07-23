transport = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]
def get_value(transport, data1, data2)
value=""
  transport.each do  |x|
    if x[:train]==data1
      value= x[data2]
    end
   end
return value
end

def get_train(transport, direction)
train=[]
transport.each do  |x|
  if x[:direction]==direction
    train << x[:train]
   end

 end
return train
end

#1./ Save the direction of train 111 into a variable.

  # wanted_info=get_value(transport, "111" , :direction)
  # puts wanted_info

#2./  Save the frequency of train 80B into a variable.

  # wanted_info=get_value(transport, "610", :frequency_in_minutes)
  # puts wanted_info

# 3./Save the direction of train 610 into a variable.

  # wanted_info=get_value(transport, "610", :direction)
  # puts wanted_info

#4./ Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.

  # puts "#{get_train(transport, "north")}"


#5./  Do the same thing for trains that travel east.

  # puts "#{get_train(transport, "east")}"

# You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.



# Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour.
#You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.
# transport={first_departure_time, 6}

transport.each do  |x|
  if x[:train]=="72C"
    x["first_departure_time"] = 6
  end
end
puts transport
