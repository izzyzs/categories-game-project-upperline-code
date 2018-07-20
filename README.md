To run this application in Cloud 9, you'll need to run through a series of commands:

Set up your environment the first time through:
gem install bundler
bundle install

Every time you want to host your webapp, use this:
shotgun -p $PORT -o $IP

1. Ask user to pic a category
2. User picks category
3. Get user input
4. Output word from category
5. Delete word from array
6. Ask user for word from category
7. User inputs word
8. Verify if word is in category array
    - Yes: delete the word from array and goes to line 4
    - No: user loses and starts from the beginning