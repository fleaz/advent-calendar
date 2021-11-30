# advent-calendar

I really like the idea of [Advent of Code](https://adventofcode.com/) and also
played some years myself, but for me personally the tasks become quite to
complex after a few days and I always drop out at around day 10 at the latest.

Together with the fact that I already have way to many coding side projects that
could need some love I had the idea to create my own "coding advent calendar"
with little tasks from my own projects.  Implement a new feature, update a
library, fix a long standing bug, ... you name it.

This way you can reduce the size of your to-do list (if you are a maniac like me
and have one even for your hobbies) and at the same time have a little code excessive
throughout December.  Because you think up all the tasks yourself, you can
define how complexe they are and how many time you want to spend every day

## Usage
Fill the *ideas.txt* with your 24 ideas (one per line) and then run
`./advent.sh` in your terminal. On the first run it will take your ideas and
shuffle them around, so your don't know which task is due at which day,  and
save the generated list it to another file.
If it's already December, it will show you the task of today.
