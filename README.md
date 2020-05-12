# Test Instructions

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

This project's only purpose is to demonstrate testing a React project.  The actuall App itself does nothing useful.

## To run the tests locally perform these steps

>**NOTE** Runs in watch mode (it will rerun tests every time you save a source file)

```shell
docker build -f containers/Dockerfile  -t react-app-with-enzyme:latest containers
docker run -it -v `pwd`:/code react-app-with-enzyme:latest bash -c 'yarn test'
```
## To emulate running in a CI environment run the `test:ci` target (adds junit output and cobertura coverage)

```shell
./jenkins_start_integration_test_env.sh
./run_tests.sh
```

## To run the tests on a Jenkins server configure a Jenkins Job like so:

>**NOTE** Requires Jenkins to have the [cobertura plugin](https://plugins.jenkins.io/cobertura/)

1.  Create new job of type "Pipeline"
    1.  Check "Do not allow concurrent builds"
    2.  Check "Do not allow the pipeline to resume if the master restarts"
    3.  GitHub project
        1.  Put GitHub Home Page "https://github.com/timharsch/react-app-with-enzyme/"
2.  Put the contents of "jenkinsfile" in for the Pipeline Script
3.  Click "Save"
4.  Click "Build Now"
