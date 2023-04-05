# WEB_APPLICATIONS: HELLO-WEB-PROJECT

----

## Introduction

>a Web browser is a **Client**, which sends HTTP requests and recieves HTTP responses, that response is then displayed to the user.
>a **Server** is the "central" machine where the program runs(alongside usually a database software).
>for Web **Clients and Servers** to communicate through the network, they use a special language called the **HTTP protocol**.
>Client sends an HTTP requests, whilst the Server will handle the request and sends back a HTTP response.
>
>**HTTP REQUEST** is defined by: method(or verb), path(is all that follows the first `/` of a URL), and parameters(or request data).
>**HTTP RESPONSE** is defined by: status code(indicating the result of the operation) and body(or content).

----

## Objective

* To learn how to build a route to respond to HTTP requests
* To learn how to test-drive a route using RSpec
* To learn how web applications work, I will build a sequence diagram to present how different components interacts with each other.
* To learn to return HTML responses to be viewed in a web browser

----

## Sequence diagram for web application: `post/sort-names` route

```mermaid
sequenceDiagram
    participant ru as rackup
    participant pm as HTTP CLIENT: Postman
    participant sin as app.rb (using Sinatra)
    participant re as HTTP Response

    Note left of ru: Flow of time <br />⬇ <br /> ⬇ <br /> ⬇ 

    %% t->>app: Runs `ruby app.rb`
    ru->>pm: launch web server through `rackup` command, to listen for incoming HTTP REQUEST from 
    pm->>ru: configures and sends HTTP request, `post/sort-names` to
    ru->>sin: receives the HTTP POST request and sends it to the request handler, Application Class, in
    sin->>re: implements the HTTP request using Sinatra Framework by defining a route that handles `post/sort-names` and generates the
    re->>ru: server receives the HTTP response containing the list of names in alphabetical order and sends it back to the client
```