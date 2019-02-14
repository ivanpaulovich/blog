Nowadays all software development companies are self proclaimed to be Agile (if you are not Agile you are not cool right?). I could say that most companies follow the SCRUM ceremonies, they have developers, SM and PO roles. Is that enough to be Agile?

You could say a lot about a company by the answer of the next question: 

> Are teams delivering working software to real users on every iteration (including the first) and gathering feedback?

Would you be surprised on how teams fail this test:
* Teams usually do not deliver on the first iteration.
* They fail on gathering user feedback on every iteration.
* Long lead time for every new feature.

Agile is about collaboration with people, gathering feedback from real users!

> Why software take so long to reach the production environment? Why they have so many bugs?

The software architecture is the main reason for software taking long time to be deployed into production. It is common that teams do a lot of effort designing a big archictecture up front that requires fancy frameworks for every application feature. The end result is an application overwhelmed of dependencies, error prone and hard to change.

The application reachs production with many bugs because the team spend most of the time configuring the web server, working with ORM frameworks and the user interfaces. The team do not spend time in collaboration with the users trying to understand the use cases and implementing the business rules.

Its all about coupling! The developers are implementing the business coupled to technology details because they do not know how to create abstractions. Do we need a database server to implement the business rules? Do we need a running web server to gather the real user feedback about the business rules implementation? The answer is:

> I don't need a SQL Server or a running Web Server to gather user feedback.

To design a rigid and coupled software architecture is too easy! Simple begin by configuring the database, the web server, the frameworks then in the remaining time implement the business rules.

> With so many moving parts we fail to get the real user feedback! Worse... it will fail slowly.

Now... suppose that you wish to design a software architecture that prioritize collaboration with Domain Experts. You desire an application loose coupled to a database and a web server, you want to decide about these details in the right moment. Is implementing the business requirements the priority for your organization? If that's the case you will need to work on your programming disciplines.

## Just Enough Architecture

What if you could focus on business requirements and ignore everything else. The idea behind "Ports and Adapters" is to decouple the high level modules from the low level modules, in other words you can decouple the business rules from the database and user interface.

## "Ports and Adapters" architecture style and TDD

One benefit of "Ports and Adapters" is tha the application use cases can be implemented in isolation of external services.

1. The first application user will be the test harnest which will guide the implementations against a mocked database.
2. The next step is to create a user interface for the application, so the user can interact with the use cases.
3. After the use cases been validaded by the users and the unit tests the team can design the database.
4. In a last step the user will interact with the application using the UI that will run against a real database.
