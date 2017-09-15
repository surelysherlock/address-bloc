require_relative 'entry'

class AddressBook
    attr_accessor :entries

    def initialize
        @entries = []
    end

  def add_entry(name, phone_number, email)
      # #9
      index = 0
      entries.each do |entry|
      # #10
        if name < entry.name
          break
        end
        index+= 1
      end
      # #11
      entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    correctIndex = 0
    entries.each_with_index do |entry, index|
      if name == entry.name
        correctIndex = index
      end
    end
    entries.delete_at(correctIndex)
  end
end