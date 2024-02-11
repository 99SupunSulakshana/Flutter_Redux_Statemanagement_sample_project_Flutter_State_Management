# Flutter_Redux_Statemanagement_sample_project_Flutter_State_Management
Redux State Management Sample Project

Flutter Redex

Redux is a state management architecture library that successfully distributes data across widgets in a repetitive manner. It manages the state of an application through a unidirectional flow of data.

<a href="#"><img width="50%" height="600px" src="https://github.com/99SupunSulakshana/Flutter_Redux_Statemanagement_sample_project_Flutter_State_Management/assets/72690583/0cc975f2-4e3e-4383-9c55-745be6763196"/></a>

The Core Concepts of Redux:

1. State: The State of an application is the data that changes over to modify the state of the application. Such as user data, API response, or UI state.
2. Actions: Actions are events that are dispatched from the view layer to modify the state of the application. Actions have a type and can also have payload data.
3. Reducer: The Reducer is a pure function that takes the current state and an action as inputs and returns the updated state. The reducer defines how the state should be updated based on the action type.
4. Store: The Store is the central place where the state of the application is stored. The store is created by passing the reducer function to it.
5. Middleware: If we'd like to create separate layers for data handling we should use middleware. This way we can intercept actions and transform the information from their payload before it reaches the reducers.
6. components: This is the last part where we initialize our store and consume data to render our result. Components from all the visible elements on the UI and users can internet with them. They can be connected to our Redux store and present their current values in the UI. Flutter redux provides a convenient way to do so by using the storeConnector class.

Why do we use Redux in Flutter..

1. Predictable State Management
2. Scalability
3. Reusable code
4. Easy to test


How do state changes affect the UI?

<a href="#"><img width="50%" height="600px" src="https://github.com/99SupunSulakshana/Flutter_Redux_Statemanagement_sample_project_Flutter_State_Management/assets/72690583/85479f15-75e6-47c3-9c90-e817b6ccb5cd"/></a>



