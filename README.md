# SignupApplication

In this sample application. I have created a reusable Signup screen. I primarily focussed on customizing signup validation and Text fields UI customization. 

The primary functionality I have handled in validation is
  1) Email is in the correct format.
  2) Password is between 8 and 15 characters and has one number and one capital letter.
  3) Password and confirm password match.
  4) Enable the signup button if all three fields satisfy the constraints.
  
Text field customization
  1) It takes variables 
      -> sfSymbolName to hold the text field leading image
      -> placeHolder to display the text field purpose.
      -> prompt to display the error text if something is missing in the text.
      -> field to set the string value or text value entered in the field.
      -> isSecure a bool to specify if we need a regular text field or a secured text. The default value is false.
      

Sample implementation recording.



https://user-images.githubusercontent.com/11731628/233132454-f133a7be-21f5-455c-bea9-47bc6c7935a2.mp4




Possible future enhancements
  1. Customize button.
