def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  message_array = []
  attendees.each {|attendee| message_array.push(badge_maker(attendee))}
  message_array
end

def assign_rooms(attendees)
  assign_message_array = []
  attendees.each_with_index {|attendee, index| assign_message_array.push("Hello, #{attendee}! You'll be assigned to room #{index + 1}!")}
  assign_message_array
end

def printer(attendees)
  batch_badge_creator(attendees).each {|message| puts message}
  assign_rooms(attendees).each {|assignment| puts assignment}
end
