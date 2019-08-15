class Person
  protected

  def speak_protected
    puts "speak protected"
  end

  private

  def speak_private
    puts "speak private"
  end
end

class Me < Person
  def talk_protected
    Person.new.speak_protected
  end

  def talk_private
    Person.new.speak_private
  end
end

class Stranger
  def chat_protected
    Person.new.speak_protected
  end

  def chat_private
    Person.new.speak_private
  end
end

Person.new.speak_protected # NoMethodError
Person.new.speak_private # NoMethodError

Me.new.talk_protected # speak protected
Me.new.talk_private # NoMethodError

Stranger.new.chat_protected # NoMethodError
Stranger.new.chat_private # NoMethodError
