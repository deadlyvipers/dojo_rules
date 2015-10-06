Ruby Object Mapper (ROM) is a Ruby library with the goal to provide powerful object mapping capabilities without limiting the full power of your datastore. ROM is based on several concepts and decisions that differentiate it from your normal Ruby ORM:

Provide minimum infrastructure to handle mapping and persistence
Provide higher-level abstractions on top of lower-level components
Querying the datastore is considered a private implementation detail
Abstract query interfaces are sources of unnecessary complexity
Reading and mutating data are distinct concerns
Simple to use the underlying datastore when desired
Be kind to the runtime environment
These core concepts are implemented in ROM with adapters, relations, mappers, and commands.

On top of those components ROM provides Repository interface for convenient access to your data.

Philosophy

ROM is not implemented in the typical Ruby fashion. It blends various functional patterns with object-orientation. ROM is built with dependency-injection in mind, there are no public class-level interfaces in ROM except the setup interface. Every object in ROM is "functional" in the sense that it returns data and doesn't cause side-effects. Furthermore all ROM components respond to the same common interface, which allows powerful composition. Higher-level abstractions like Repository make great use of those lower-level, composable objects.

All ROM components are built to be stand-alone, they can be used independently of each other, are loosely coupled and follow the single responsibility principle, rather than having a single object that handles coercion, state, persistence, validation and your all-important business logic, ROM provides the infrastructure to allow you to easily create small dedicated classes for handling each of these concerns individually, and tie it all together in a simple, manageable fashion.