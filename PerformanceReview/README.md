# Performance Management

A web application that allows employees to submit feedback towards each other's performance review.


# User Capabilities
This section describes the different kind of operations that can be performed by each user. In our design we have two kinds of users. They are the Admin users and the normal employee users.

## Capabilities of the Admin user

The following are the capabilities of the Admin user

* Add/Update/Delete/View Employee details
* Add/Update/View performance reviews
* Assign an employee to participate in the performance review of another employee




## Capabilities of the Employee user
The following are the capabilities of an Employee user

* View a list of performance reviews of another employee, to provide feedback towards those performance reviews
* Add feedback


# Design Description

Here the user have the provision to login to the application using their username and password. Based on their role they are redirected to admin's or the employee's page. They also have an option for recovering or resetting their password.

Admin user has the provision to add, update, delete and view other employees. They also have the provision to add, update and view performance review, and they can assign an employee to participate in another employee's performance review.

Employees can view the performance review assigned to them for reviewing. They also have the provision to add feedbacks.


## Technologies used

* Java
* Oracle
* JSP
* HTML5
* CSS
* Apache Tomcat v8.0 Server

## API calls used

* POST
* GET
* PUT 


## Assumptions made
The user have oracle database and ojdbc library. The user has to create the tables as mentioned in the file datbaseTables. 

## Authors

*Rubina Brijith Antony*