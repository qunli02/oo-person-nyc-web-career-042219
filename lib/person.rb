# your code goes here
class Person
 attr_reader :name, :happiness, :hygiene
 attr_accessor :bank_account

 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end

 def happiness=(level)
   if level > 10
     @happiness = 10
   elsif level < 0
     @happiness = 0
   else
     @happiness = level
   end
 end

 def hygiene=(level)
   if level > 10
     @hygiene = 10
   elsif level < 0
     @hygiene = 0
   else
     @hygiene = level
   end
 end

 def limit
   if self.happiness > 10
     self.happiness = 10
   elsif self.happiness < 0
     self.happiness = 0
   end

   if self.hygiene > 10
     self.hygiene = 10
   elsif self.hygiene < 0
     self.hygiene = 0
   end
 end

 def clean?
   self.hygiene > 7
 end

 def happy?
   self.happiness > 7
 end

 def get_paid(salary)
   self.bank_account += salary
   "all about the benjamins"
 end

 def take_bath
   self.hygiene += 4
   self.limit
   "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
   self.happiness += 2
   self.hygiene -= 3
   self.limit
   "♪ another one bites the dust ♫"
 end

 def call_friend(person)
   self.happiness += 3
   person.happiness +=3
   self.limit
   person.limit
   "Hi #{person.name}! It's #{self.name}. How are you?"
 end

 def start_conversation(person, topic)
   if topic == "politics"
     self.happiness -= 2
     person.happiness -= 2
    self.limit
     person.limit
     return "blah blah partisan blah lobbyist"
   elsif topic == "weather"
     self.happiness += 1
     person.happiness += 1
     self.limit
     person.limit
     return "blah blah sun blah rain"
   else
     return "blah blah blah blah blah"
   end
 end

end