class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended = []
    exhibits.each do |exhibit|
      patron.interests.each do |interest|
        if exhibit.name == interest
          recommended << exhibit
        end
      end
    end
    recommended
  end

  def admit(patron)
    @patrons << patron
  end

#   def patrons_by_exhibit_interest
#     patrons_by_exhibit = {}
#       @patrons.each do |patron|
#         recommend_exhibits(patron).each do |recommended_exhibit|
#           # require "pry"; binding.pry
#           patrons_by_exhibit[recommended_exhibit] = [patron]
#           patrons_by_exhibit
#
#       end
#     end
#     patrons_by_exhibit
#   end
end
