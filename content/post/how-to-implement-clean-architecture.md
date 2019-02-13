Nowadays all software development companies are self proclaimed to be Agile (if you are not Agile you are not cool right?), I could say that most companies follow the SCRUM ceremonies, they have a SM, PO and developers roles. Is that enough?

One question to test a working team agile: 

> Are teams delivering working software to real users on every iteration (including the first) and gathering feedback?

Would you be surprised on how teams fail this test, its common that teams do not deliver on the first iteration (starting with the wrong foot) then every feature requires a long time to be deployed to production and used by the users gathering feedback.

Agile is about collaboration with people, gathering feedback from them!

> Why software take so long to reach the production environment?

One reason that I identify is coupling. Its when developers implement the business coupled to so many technology details. Have you seen a `Story` like `Create a Customer Acccount in the database and exposed in a Web API`?

Do we need a database server to implement the business rules? Do we need a running web server to gather the real user feedback about the business rules implementation? The answer is:

> I don't need a SQL Server or a running Web Server to gather user feedback.

Let me explain how you can design a rigid and coupled software architecture: Suppose that for my application to reach Production I am gonna need to configure database, web server, enterprise frameworks, firewall, implement the business rules, get approvals __then get the real user feedback__.

> There are so many moving parts that I am gonna fail to get the real user feedback! Worse... it will fail slowly.

Now... suppose that you wish to design a software architecture that prioritize collaboration with Domain Experts. You desire an application to be loose coupled to a database and a web server, you want to decide later about these complex moving parts. The priorite is about implementing the business requirements right? You will need to work on your programming disciplines.

## "Ports and Adapters" architecture style and TDD

"Ports and Adapters" gives you a technique to decouple the high level modules from the low level modules, in other words you can decouple the business rules from the database and user interface.

One benefit of "Ports and Adapters" is tha the application use cases can be implemented in isolation of external services.

1. The first application user will be the test harnest which will guide the implementations against a mocked database.
2. The next step is to create a user interface for the application, so the user can interact with the use cases.
3. After the use cases been validaded by the users and the unit tests the team can design the database.
4. In a last step the user will interact with the application using the UI that will run against a real database.
