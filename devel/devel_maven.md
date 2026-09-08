# Maven

## Create a project from the quickstart archetype

```shell
$ mvn archetype:generate \
    -DgroupId=com.example.app \
    -DartifactId=my-app \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DarchetypeVersion=1.4 \
    -DinteractiveMode=false
```

## Run tests

```shell
$ mvn test
```

Run one test class or one method:

```shell
$ mvn test -Dtest=ExampleTest
$ mvn test -Dtest=ExampleTest#exampleMethod
```

Wildcards and comma-separated selectors can be used to run multiple tests:

```shell
$ mvn test -Dtest='*ExampleTest'
$ mvn test -Dtest='FirstTest#firstMethod,SecondTest#secondMethod'
```

## Generate a Surefire HTML report

```shell
$ mvn surefire-report:report
$ mvn surefire-report:report site -DgenerateReports=false
```

Generate a report from the latest test results without running tests again:

```shell
$ mvn surefire-report:report-only
```

Reference: <https://maven.apache.org/surefire/maven-surefire-plugin/examples/single-test.html>
