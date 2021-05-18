# Software Design Pattern

## VIPER Architecture

It consists of the following components:

1. View
1. Interactor
1. Presenter
1. Router
1. Entity
1. Protocols

View is the content visible to the user. What you see in the screen.

Interactor is the user interaction with the screen. Tells the presenter that the user has clicked a button. Make API calls to fetch data from source.

Presenter: gets user response from view and act accordingly.

Router: tells the application to load the X view.

Entity: a data model of the info in a specific screen.

Protocols:

## Creating iOS Native Application

When creating an application and hosting it in github, it would be much easier to track progress if the views are separated into different storyboards rather than using a single storyboard.

To Achieve that, the VIPER design pattern is used.

### A typical top-level directory layout

    ├── ProjectName
    │    ├── Extensions
    │    ├── Helpers
    │    ├── Modules
    │    │    ├── ModuleName
    │    │    │    ├── Presenter
    │    │    │    ├── InputOutput
    │    │    │    ├── View
    │    │    │    ├── Protocols
    │    │    │    └── Interactor
    │    │    └── ...
    │    ├── Services
    │    │    ├── Storage
    │    │    ├── Networking
    │    ├── Models
    │    │    ├── Errors
    │    │    ├── Responses
    │    │    ├── Requests
    │    │    └── ...
    │    └── ...
    ├── ProjectNameTests
    │    ├── ProjectNameTests.swift
    │    ├── info.plist
    │    └── ...
    ├── ProjectNameUITests
    │    ├── ProjectNameUITests.swift
    │    ├── info.plist
    │    └── ...
    ├── Pods
    └── ...

One of the useful tools to create consistent Modules folders and files is [Link Here]()

Simply create a VIPER module architecture inside module folder using the following template.

Use the following path

`~/Library/Developer/Xcode/Templates/File\ Templates/`
