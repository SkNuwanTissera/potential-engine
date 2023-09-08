import ballerina/http;

service / on new http:Listener(9090) {

    resource function  get liveness() returns string|error {
        return "liveness-OK";
    }

    resource function  get readiness() returns string|error {
        return "readiness-OK";
    }
}
