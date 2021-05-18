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

One of the useful tools to create consistent Modules folders and files is [VIPER Templates](assets/VIPER Templates)

### One-time installation

1. Download the **VIPER Templates** folder.
1. Paste the folder in the following directory
   `~/Library/Developer/Xcode/Templates/`

After creating a new iOS application, you can start by creating modules using the template. This will be available at the end of the list.

<img width="731" alt="new-viper-module" src="https://user-images.githubusercontent.com/61970868/118623640-7f82d900-b7d9-11eb-947c-aed863842af2.png">

Once you create a VIPER module, it will be created as folders (blue folders). You have to remove the reference and import them as groups (yellow folders).
