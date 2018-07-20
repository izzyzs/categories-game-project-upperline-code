$theCategories = {
        "States" => [
        "Alabama",
        "Alaska",
        "Arizona",
        "Arkansas",
        "California",
        "Colorado",
        "Connecticut",
        "Delaware",
        "Florida",
        "Georgia",
        "Hawaii",
        "Idaho",
        "Illinois",
        "Indiana",
        "Iowa",
        "Kansas",
        "Kentucky",
        "Louisiana",
        "Maine",
        "Maryland",
        "Massachusetts",
        "Michigan",
        "Minnesota",
        "Mississippi",
        "Missouri",
        "Montana",
        "Nebraska",
        "Nevada",
        "New Hampshire",
        "New Jersey",
        "New Mexico",
        "New York",
        "North Carolina",
        "North Dakota",
        "Ohio",
        "Oklahoma",
        "Oregon",
        "Pennsylvania",
        "Rhode Island",
        "South Carolina",
        "South Dakota",
        "Tennessee",
        "Texas",
        "Utah",
        "Vermont",
        "Virginia",
        "Washington",
        "West Virginia",
        "Wisconsin",
        "Wyoming",],
        
        "Presidents" => [
        "George Washington",
        "John Adams",
        "Thomas Jefferson",
        "James Madison",
        "James Monroe",
        "John Quincy Adams",
        "Andrew Jackson",
        "Martin Van Buren",
        "William Henry Harrison",
        "John Tyler",
        "James K. Polk",
        "Zachary Taylor",
        "Millard Fillmore",
        "Franklin Pierce",
        "James Buchanan",
        "Abraham Lincoln",
        "Andrew Johnson",
        "Ulysses S. Grant",
        "Rutherford B. Hayes",
        "James Garfield",
        "Chester A. Arthur",
        "Grover Cleveland",
        "Benjamin Harrison",
        "Grover Cleveland",
        "William McKinley",
        "Theodore Roosevelt",
        "William Howard Taft",
        "Woodrow Wilson",
        "Warren G. Harding",
        "Calvin Coolidge",
        "Herbert Hoover",
        "Franklin D. Roosevelt",
        "Harry S. Truman",
        "Dwight D. Eisenhower",
        "John F. Kennedy",
        "Lyndon B. Johnson",
        "Richard M. Nixon",
        "Gerald R. Ford",
        "James Carter",
        "Ronald Reagan",
        "George H. W. Bush",
        "William J. Clinton",
        "George W. Bush",
        "Barack Obama",
        "Donald J. Trump"],

    
        "ArabianPeninsulaCountries" => [
        "Bahrain",
        "Kuwait",
        "Oman",
        "Qatar",
        "Saudi Arabia",
        "The United Arab Emirates",
        "Yemen"],

    "MCU_Movies" => [
    "Iron Man",
	"The Incredible Hulk",
	"Iron Man 2",
	"Thor",
	"Captain America: The First Avenger",
	"Avengers",
	"Iron Man 3" ,
	"Thor: The Dark World" ,
	"Captain America: The Winter Soldier" ,
	"Guardians of the Galaxy",
	"Avengers: Age of Ultron" ,
	"Ant-Man",
	"Captain America: Civil War" ,
	"Doctor Strange",
	"Guardians of the Galaxy Vol. 2" ,
	"Spider-Man: Homecoming",
	"Thor: Ragnarok",
	"Black Panther ",
	"Avengers: Infinity War" ,
	"Ant-Man and the Wasp" ]
}




def choose_word_from_category(list)
        word = list.shuffle!.pop
        return ["I choose #{word}, your turn!
        Write a word that belongs to the category #{$category}." , list]
end

def setCategory(value)
    return $theCategories[value]
end

def player_chooses_word(value2, theCurrentList)
    puts "Attempting to find #{value2} in the list: #{theCurrentList}"
    if theCurrentList.include?(value2)
        puts "Attempting to delete #{value2} from the list: #{theCurrentList}"
        theCurrentList.delete(value2)
        print theCurrentList
        return ["Good choice! My turn.", theCurrentList]
        
    else
        return ["You lose! Haha sucker. Your horrible at this.", theCurrentList]
        
    end
        
end

def return_current_categories()
   return  
end

def stringify(list)
    list.join("/")
end

def unstringify(list)
    list.split("/")
end

#  puts choose_word_from_category("States")
# puts $theCategories["States"]

# puts player_chooses_word("Alaska")
# puts $theCategories["States"]