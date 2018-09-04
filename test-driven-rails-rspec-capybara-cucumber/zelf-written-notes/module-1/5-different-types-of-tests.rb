Unit tests: #small and fast
  - no other object collaborators
  - tests a seperate unit
  vb: ruby- object || rails- model || etc.

note: #OOP exists of lots of units which communicate with each other via messages

Integration tests: #bigger and slower
  - to make sure that units communicate with each other properly and produce expected results
   vb: testing a service- object in rails which uses several ActiveRecord- models to create records in a database

Acceptance tests: #as big as possible and very slow
  - to make sure that application behaves the way client expects it to behave
  - tackles the whole system from user interface and ending with database and third party services


Testpyramid:
 User Interface, rare
 Service, average
 Unit, lots
