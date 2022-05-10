
// Created an array which includes about 50 questions and four answer choices for each question.
// Created the correctAnswerIndex to check with the userAnswer later in the file InteractionLayer.swift

let quizQuestions = [
  QuizQuestion(question: "Which Disney character famously leaves a glass slipper behind at royal ball?",
               answers: ["Elsa","Cinderella", "Snow White", "Ariel"], correctAnswerIndex: 1),
  QuizQuestion(question: "The largest planet in the solar system is?",
               answers: ["Jupiter","Uranus", "Saturn", "Venus"], correctAnswerIndex: 0),
  QuizQuestion(question:  "Which of these names is not in the title of a Shakespeare play?",
               answers: ["Darren", "Romeo", "Hamlet", "Macbeth"], correctAnswerIndex:0),
  QuizQuestion(question:  "Who is the 2nd president of the United States?",
               answers: ["Thomas Jefferson", "Andrew Jackon", "George Washington", "John Adams"], correctAnswerIndex:3),
  QuizQuestion(question:  "What are the two opposing sides of the US Civil War?",
               answers: ["The peasants and  the government", "The East and the West", "The North and the South", "The rich and the poor"], correctAnswerIndex:2),
  QuizQuestion(question:  "Which one of the following song is known as “one hit wonder”",
               answers: ["Never gonna leave you up", "Rap god", "Blinding lights", "Somebody that I used to know"], correctAnswerIndex:3),
  QuizQuestion(question:  "What subject studies human’s minds and behaviors?",
               answers: ["Psychology", "Biology", "Anatomy", "Microbiology"], correctAnswerIndex:0),
  QuizQuestion(question:  "What was the most famous thing president Abraham Lincoln contributed?",
               answers: ["End racism", "Abolish slavery", "Give woman’s rights and fairness", "Ending a long-participated war oversea"], correctAnswerIndex:1),
  QuizQuestion(question:  "Who was the first person to go to space?",
               answers: ["Neil Armstrong", "Buzz Aldrin", "John Glenn", "Yuri Gagarin"], correctAnswerIndex:3),
  QuizQuestion(question:  "In what year World War 1 ended?",
               answers: ["1914", "1917", "1918", "1921"], correctAnswerIndex:2),
  QuizQuestion(question:  "What sort of animal is Dumbo from Disney?",
               answers: ["Elephant", "Donkey", "Rabbit", "Deer"], correctAnswerIndex:0),
  QuizQuestion(question:  "What color was the reality stone from the Marvel universe?",
               answers: ["Blue", "Red", "Yellow", "Purple"], correctAnswerIndex:1),
  QuizQuestion(question:  "What state has the abbreviation “IA” in the US?",
               answers: ["Iowa", "Idaho", "Indiana", "Illinois"], correctAnswerIndex:0),
  QuizQuestion(question:  "What is the capital city of Canada?",
               answers: ["Canberra", "Ottawa", "Winnipeg", "Bamako"], correctAnswerIndex:1),
  QuizQuestion(question:  "What elements can be found in the first column of the periodic table?",
               answers: ["Alkali metal", "Noble gasses", "Halogens", "Transition metals"], correctAnswerIndex:0),
  QuizQuestion(question:  "What type of triangle has two sides equal in length?",
               answers: ["Parallel", "Equilateral", "Perpendicular", "Isosceles"], correctAnswerIndex:3),
  QuizQuestion(question:  "Which of the following countries was not an Axis power during WW2?",
               answers: ["Germany", "Russia", "Japan", "Italy"], correctAnswerIndex:1),
  QuizQuestion(question:  "Which scientist is credited with the laws of motion?",
               answers: ["Einstein", "Galileo", "Bohr", "Newton"], correctAnswerIndex:3),
  QuizQuestion(question:  "A haiku is a traditional poem from which country?",
               answers: ["Japan", "Vietnam", "China", "Korea"], correctAnswerIndex:0),
  QuizQuestion(question:  "What country is Pho soup from?",
               answers: ["Philippine", "China", "Vietnam", "Laos"], correctAnswerIndex:2),
  QuizQuestion(question:  "How to find the sine of a triangle?",
               answers: ["Opposite/Adjacent", "Opposite/Hypotenuse", "Adjacent/Opposite", "Adjacent/Hypotenuse"], correctAnswerIndex:1),
  QuizQuestion(question:  "How many branches of the U.S. government are there?",
               answers: ["One", "Two", "Three", "Four"], correctAnswerIndex:2),
  QuizQuestion(question:  "The largest organ of the body is part of which system?",
               answers: ["Renal", "Circulatory", "Nervous", "Integumentary"], correctAnswerIndex:3),
  QuizQuestion(question:  "Who is the author of the famous American novel “ The Great Gatsby”",
               answers: ["F. Scott Fitzgerald", "Mark Twain", "Ernest Hemingway", "Stephen King"], correctAnswerIndex:0),
  QuizQuestion(question:  "Which of these wars occurred first in the United States?",
               answers: ["Civil war", "Mexican-American war", "War of 1812", "American Revolutionary war"], correctAnswerIndex:3),
  QuizQuestion(question:  "The disease that killed almost a third of Europe population in the 1300s",
               answers: ["Cholera", "Smallpox", "Bubonic plague", "Tuberculosis"], correctAnswerIndex:2),
  QuizQuestion(question:  "If a triangle has sides of 3-4-5 what kind of triangle is it?",
               answers: ["Right", "Acute", "Obtuse", "Perfect"], correctAnswerIndex:0),
  QuizQuestion(question:  "Name of a U-shaped curve on a graph",
               answers: ["Sinusoidal", "Parabola", "Quadratic", "Logarithmic"], correctAnswerIndex:1),
  QuizQuestion(question:  "Where did president J.F.Kennedy get shot?",
               answers: ["Dallas", "New York", "Los Angeles", "Oakland"], correctAnswerIndex:0),
  QuizQuestion(question:  "What is the smallest country in the world?",
               answers: ["Monaco", "Jamaica", "Vatican", "San Marino"], correctAnswerIndex:2),
  QuizQuestion(question:  "What year was the first Iphone released?",
               answers: ["2005", "2002", "2004", "2007"], correctAnswerIndex:3),
  QuizQuestion(question:  "The only painting sold by Vincent van Gogh during his lifetime was?",
               answers: ["Starry Night", "The Red Vineyard", "Café Terrace at Night", "The night Café "], correctAnswerIndex:1),
  QuizQuestion(question:  "What is the largest state in the US?",
               answers: ["Texas", "California", "Washington", "Alaska"], correctAnswerIndex:3),
  QuizQuestion(question:  "John Lennon was a member of?",
               answers: ["The Beatles", "Linkin Park", "Pink Floyd", "Daft Punk"], correctAnswerIndex:0),
  QuizQuestion(question:  "In which hand is the Statue of Liberty's torch?",
               answers: ["Left", "Right"], correctAnswerIndex:1),
  QuizQuestion(question:  "Which Sport is associated with the “Agha Khan Cup”?",
               answers: ["Football", "Soccer", "Hockey", "Basketball"], correctAnswerIndex:2),
  QuizQuestion(question:  "Who is currently the best chess player in the world?",
               answers: ["Bobby Fischer", "Garry Kasparov", "Magnus Carlsen", "Anatoly Karpov"], correctAnswerIndex:2),
    QuizQuestion(question:  "When you walk, does your left arm swing w/ your right or left leg?",
                 answers: ["Right", "Left", "Both", "Neither"], correctAnswerIndex:1),
    QuizQuestion(question:  "Books have even pages on the left or right side?",
                 answers: ["Left", "Right"], correctAnswerIndex:0),
    QuizQuestion(question:  "Whose face is on a dime?",
                 answers: ["Abraham Lincoln", "George Washington", "Franklin D. Roosevelt", "Thomas Jefferson"], correctAnswerIndex:2),
    QuizQuestion(question:  "How long is a standard Olympic swimming pool?",
                 answers: ["60 meters (197ft)", "50 meters (164 ft)", "40 meters(131 ft)", "80 meters (262 ft)"], correctAnswerIndex:1),
    QuizQuestion(question:  "Which shape is used for stop signs?",
                 answers: ["Square", "Circle", "Rectangle", "Octagon"], correctAnswerIndex:3),
    QuizQuestion(question:  "What is the name of the largest ocean in the world?",
                 answers: ["Atlantic", "Pacific", "Indian", "Artic"], correctAnswerIndex:1),
    QuizQuestion(question:  "What is the rarest M&M color?",
                 answers: ["Green", "Blue", "Yellow", "Brown"], correctAnswerIndex:3),
    QuizQuestion(question:  "What is the most consumed drink in the world?",
                 answers: ["Alcohol", "Soft Drinks", "Tea", "Coffee"], correctAnswerIndex:2),
    QuizQuestion(question:  "What country invented ice cream?",
                 answers: ["China", "Mexico", "Japand", "Iceland"], correctAnswerIndex:0),
    QuizQuestion(question:  "How many points did Michael Jordan score in his first NBA game?",
                 answers: ["10", "12", "16", "8"], correctAnswerIndex:2),
    QuizQuestion(question:  "How many hearts does an octopus have?",
                 answers: ["1", "2", "3", "4"], correctAnswerIndex:2),
    QuizQuestion(question:  "What is the hottest planet in the solar system?",
                 answers: ["Mercury", "Venus", "Earth", "Mars"], correctAnswerIndex:1),
    QuizQuestion(question:  "How many teeth does an adult human have?",
                 answers: ["29", "30", "31", "32"], correctAnswerIndex:3),
    ]
