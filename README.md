# Bank-Tech-Test

It's week 10 at Makers Academy and hight time to start tech tests preparation.
First test given to me is a Bank tech test.

**Requirements**
```
You should be able to interact with your code via a REPL like IRB or the JavaScript console.
(You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
```

**My approach to the test:**

* Create user stories
* Choose right tools for the task
* Initial set up
* Test drive the development process
* Commit each time the test is passing

**I have chosen the following tools/technologies:**

* Ruby
* RSpec
* Rubocop
* Simplecov for test coverage reporting

**My user stories:**

```
As a user,
So I can view my balance
I want to have an access to bank account
```

```
As a user,
So I can increase the balance
I want to be able to deposit my money
```

```
As a user,
So I can pay my bills
I want to be able to withdraw my money
```

```
As a user,
So I can have a visibility over transactions
I want to be able to print out a statement of the account in the following format:

date || credit || debit || balance
```

**To run the program please follow below steps:**

* Fork or clone this repository
```
git clone https://github.com/k-ankobia/Bank_tech_test_.git
```
* Open bash terminal, go to the file location
* Run bundle install
* type 'irb'
* follow below:

#### Assumptions made

- I have a set a default bank balanace of £3000 for the purpose of this task. 
- I have capitalised the column headers incase this print was to go to the account owner

```
2.5.1 :001 > require './lib/account'
 => true
2.5.1 :001 >     my_account = Account.new
 => #<Account:0x00007f92dc126a80 @balance=3000.0, @transaction=[]>
2.5.1 :002 >     my_account.deposit(500)
2.5.1 :003 >     my_account.deposit(2000)
2.5.1 :004 >     my_account.withdraw(500)
2.5.1 :005 >     my_statement = Statement.new(my_account.transaction)
2.5.1 :006 >     my_statement.print_statement(my_account.transaction)

date || credit || debit || balance
2019-05-19 ||   || 500.00 || 5000.00
2019-05-19 || 2000.00 ||   || 5500.00
2019-05-19 || 500.00 ||   || 3500.00
```


**How to test it?**

* Open bash terminal, go to the file location
* type 'rspec' and press enter

**Diagram of interaction:**


