Feature: Login
Background: 
Given user on the main page  
And user hovers over the "Giriş Yap" button
And user clicks on the "Giriş Yap" link  

@regression @smoke
Scenario: Verification of Login Function  
Given user on the Login Page
And user enters the following detail
| email       | <email>        | 
And user clicks "Giriş Yap" button
And user enters the following detail
| password    | <myPassword>   |  
And user clicks "Giriş Yap" button
Then user should see following
| accountName | <accountName>  | 

Scenario: Unsuccessful login
Given user on the Login Page
And user enters the following detail
| email    | <email> | 
And user clicks "Giriş Yap" button
And user enters the following detail
| password | <wrong> |  
And user clicks "Giriş Yap" button
Then error message displayed with wrong password

Examples:
    | email              | password    | accountName      | wrongPassword |
    | myEmail@gmail.com  | myPassword  | Buğrahan Durukan | notMyPassword |