# my_counter_cubit

A Flutter tutorial application by Your Dev Edge.

## Description

This is a series of tutorials that focuses on State and State Management using the Bloc Package.

This is the first of several "Overview" applications that demonstrate the basics of Cubit/Bloc.

This app will create a simple Counter App (similar to the default app installed by Flutter) that will use Cubit to manage the state/data.

There are five stages in this app:

Version 1a: Wrap the Text widget with BlocProvider.of.
Version 1b: Wrap the Center widget with BlocBuilder.
Version 2: Wrap BlocBuilder with BlocListener to show an Alert and show a new Page if certain criteria is met.
Version 3: Convert BlocListener to a BlocConsumer to remove nesting of builder within BlocListener.
Version 4: Within the FAB's, convert the Provider.of to use context.read instead.