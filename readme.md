get_cli
- dart pub global activate get_cli => install global get_cli
- get create project => create new project
  - flutter project
  - swift => for ios
  - kotlin => for android
  - getX pattern (by kaue) => pattern
- get init => To generate the chosen structure on an existing project:
- get create page:home
   // To create a page:
   // (Pages have controller, view, and binding)
   // Note: you can use any name, ex: `get create page:login`
   // Nota: use this option if the chosen structure was Getx_pattern
- get create screen:home 
   // To create a screen
   // (Screens have controller, view, and binding)
   // Note: you can use any name, ex: `get screen page:login`
   // Nota: use this option if the chosen structure was CLEAN (by Arktekko)
- get create controller:dialogcontroller on home
   // To create a new controller in a specific folder:
   // Note: you don't need to reference the folder,
   // Getx will search automatically for the home folder
   // and add your controller there.
- get create view:dialogview on home
   // To create a new view in a specific folder:
   // Note: you don't need to reference the folder,
   // Getx will automatically search for the home folder
   // and insert your view there.
- get create provider:user on home
   // To create a new provider in a specific folder:
- get generate locales assets/locales
   // To generate a localization file:
   // Note: 'assets/locales' directory with your translation files in json format
- get generate model on home with assets/models/user.json
   // To generate a class model:
   // Note: 'assets/models/user.json' path of your template file in json format
   // Note: on  == folder output file
   // Getx will automatically search for the home folder
   // and insert your class model there.
- get generate model on home with assets/models/user.json --skipProvider
   / /to generate the model without the provider
- get generate model on home from "https://api.github.com/users/CpdnCristiano"
   //Note: the URL must return a json format
- get install camera
   // To install a package in your project (dependencies):
- get install http path camera
   // To install several packages from your project:
- get install path:1.6.4
   // To install a package with specific version:
   // You can also specify several packages with version numbers
- get install flutter_launcher_icons --dev
   // To install a dev package in your project (dependencies_dev):
- get remove http
   // To remove a package from your project:
- get remove http path
   // To remove several packages from your project:
- get update or `get upgrade`
   // To update CLI:
- get -v or `get -version`
   // Shows the current CLI version:
- get help
   // For help