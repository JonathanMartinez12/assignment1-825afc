class PhoneBook
  def initialize
    @entries = []
  end

  def add(name, number, is_listed)
    @entries.each do |entry|
      return false if entry["name"] == name
    end

    return false unless number.match?(/\A\d{3}-\d{3}-\d{4}\z/)

    if is_listed
      @entries.each do |entry| #learned that .each do iterates through a list of stuff 
        if entry["number"] == number && entry["listed"] == true
          return false # meaning not allowd 
        end
      end
    end

    @entries << { "name" => name, "number" => number, "listed" => !!is_listed } 
    true
  end
end

    def lookup(name)
       @entries.each do |entry| #loops through it 
        return entry["number"] if entry["name"] == name && entry["listed"] == true
       end
    end

    def lookupByNum(number)
        @entries.each do |entry|
          return entry["name"] if entry["number"] == number && entry["listed"] == true
        end
        nil
    end

    def namesByAc(areacode)
        @entries.each do |entry|
          return entry["name"] if entry["number"].start_with?(areacode) && entry["listed"] == true
        end
        nil
    end
end
