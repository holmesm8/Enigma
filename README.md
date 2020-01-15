# Enigma


### Functionality - Meets Expectations
* Enigma Class with encrypt and decrypt methods successfully implemented
* Encrypt/decrypt command line interfaces successfully implemented


### Object Oriented Programming - Meets Expectations
* Project is broken into logical components that are appropriately encapsulated
* No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about
* Student can articulate the single responsibilities of the various components

I made a conscious effort to design my Enigma project with the Law of Demeter
in mind. I wanted very specific functions and methods separated out. I learned quite a bit in our group project and a big takeaway for me was not having methods and classes wrapped up in one cluster. I wanted flexibility,
adaptability, and a way to perform maintenance in case I needed to refactor
or a method was not properly due to bad testing.

### Ruby Conventions and Mechanics - Meets Expectations
* Code is mostly properly indented, spaced, and lines are not excessively long
* Class, method, variable, and file names follow convention
* Some enumerables/data structures chosen are the most efficient tool for a given job, and students can speak as to why those enumerables/data structures were chosen

I do feel that the code I wrote for this project follows most of the generally accepted Ruby conventions. Most of the enumerables were chosen for their specific use case in my methods. Methods are generally not long, mostly short and concise.

### Test Driven Development - Meets Expectations
* Every method is tested at both the unit and integration level, and completely verify expected behavior
* Obvious edge cases are addressed
* Git history demonstrates students are writing tests before implementation code
* Test coverage metrics show coverage at 99% or greater (mine is at 100%)

I have a limited use of mocks and stubs. I'm not 100% sure I used them correctly to be honest (attempted to use with KeyGen and DateGen and Enigma). All tests are at 100%. I made a concerted effort to use TDD and NOT write methods before a test was written.

### Version Control - Well Above Expectations
* At least 40 commits
* All pull requests include related and logical chunks of functionality, and are named and documented to clearly communicate the purpose of the pull request
* No commits include multiple pieces of functionality
* No commit message is ambiguous

More than 40 commits; accurate commit messages. Branch use only to push to Github repo. Each early commit focused on one method and then was committed. All commits contain related pieces of functionality.
