# FeadReed
This is a sample project to demonstrate a [clean architecture](http://blog.8thlight.com/uncle-bob/2012/08/13/the-clean-architecture.html)
approach for sharing code between Android and iOS.
[j2objc](https://github.com/google/j2objc) is used to translate the project's [core](core)
Java module and it's unit tests into Objective-C.

The feature set is intentionally contrived as a proof of concept.  Here is the central user story:


    As a mobile user I want to provide an RSS URL and see a list of the articles.

    - Title and date should be displayed for each article
    - Selecting the title opens the web link in a browser.
    - Limit the list to a maximum of 5 articles


## Run tests

To execute the core unit tests: `./gradlew core:test`


To execute the data integration tests: `./gradlew data:test`


## j2objc output

To generate Objective-C files for the core module

1. set the j2objcHome path in [the core build.gradle](core/build.gradle)
2. run `./gradlew core:j2objcCompile`

3. find the generated files in [./core/build/j2objc](core/build/j2objc)