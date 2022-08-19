Employee’s Data app

Technologies used:
-	Flutter
-	Dart
-	Firebase

Problem statement:
Create an app to upload employee’s data on database and display all employees.

Features:
-	If the employee is active and working for more than 5 years is marked green
-	If the employee is active but has worked for less than 5 years is marked blue
-	If the employee is not active, he is marked red irrespective of its work period
-	Firebase Firestore is used for backend database
-	Navigation bar has been provided to surf through 2 pages, 
  o	Home page – Displays all employees and their data
  o	Add page – Used to add new employee or update current employee’s data
-	The Add page take input
  o	Name (String)
  o	Role (String)
  o	Active status (‘yes’/’no’)
  o	Calendar popup for selecting joining date
-	The working period is displayed instantly when the date is selected
-	The Home page is set in StreamBuilder which updates the data in real time.
-	The video of working app along with screenshot of firebase has been sent along with this documentation.
