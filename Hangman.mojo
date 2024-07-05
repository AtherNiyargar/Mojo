
from python import Python

def main():
    user_input = Python.import_module("sys")
    rand_num_gen = Python.import_module("random")
    cleaner = Python.import_module("os")

    var countries = List[String] ("USA", "Canada", "China", "India", "Germany",
    "France", "Japan", "Brazil", "Russia", "Australia", "Italy", "Mexico",
    "Spain", "Korea", "Egypt", "Turkey", "Sweden",     "Country")

    var body_parts = List[String] ("Head", "Arm", "Leg", "Hand", "Foot", "Eye",
    "Ear", "Nose", "Mouth", "Finger", "Knee", "Elbow", "Shoulder", "Chest", "Back", "Stomach",
    "Neck",    "Body Part")

    var profession = List[String] ("Teacher", "Doctor", "Engineer", "Nurse",
    "Lawyer", "Accountant", "Scientist", "Chef", "Farmer", "Mechanic",
    "Electrician", "Plumber", "Artist", "Writer", "Pilot", "Police", "Carpenter",    "Profession")

    var animal = List[String] ("Dog", "Cat", "Cow", "Horse", "Sheep", "Pig",
    "Goat", "Elephant", "Tiger", "Lion", "Bear", "Monkey", "Rabbit", "Deer", "Frog", "Snake",
    "Panda",     "Animal")

    var collection = List[List[String]] (countries, body_parts, profession, animal)

    random_word_index = rand_num_gen.randrange(0, 17)
    random_category_index = rand_num_gen.randrange(0,4)
    word = collection[random_category_index][random_word_index]

    unrevealed = List[String] ()

    correct_attempts = 0
    lives = 5

    for _ in range(word.__len__()):
        unrevealed.append('_')
    
    cleaner.system("clear")

    while(True):
        print('''Only Enter letter, not word

Hint! the word is of type''', collection[random_category_index][17], '''\t\tand the word length is''', word.__len__())

        print("Lives ->", lives)
        
        print("Your guess is")
        
        for i in range(word.__len__()):
            print(unrevealed[i], end = '')

        user_char = user_input.stdin.readline().strip()

        while(user_char == ''):
            user_char = user_input.stdin.readline().strip()

        cleaner.system("clear")

        if user_char in word:
            user_input.stdin.flush()
            for i in range(word.__len__()):
                if(word[i] == user_char[0]):
                    unrevealed[i] = user_char[0]
                    correct_attempts += 1
        else:
            print("Incorrect!")
            lives -= 1
            user_input.stdin.flush()
        
        if(correct_attempts == word.__len__()):
            print(word)
            print("You won!")
            break
        
        if(lives == 0):
            print("You lost! The word was", word)
            break
        
# So def functions should be used when the function can raise an error (maybe I am wrong)
# fn function must provide the return type and argument type
# arguments passed in fn functions cannot be changed!!
