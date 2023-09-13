# A CV Flutter Mobile App.

A two-paged Cv App,that displays a CV Page and an Editing Page.


## Snapshots

![CV Page](images/page1.png)
![Edit Page](images/page2.png)

## Appetize Link

[Appetize Link](https://appetize.io/app/qlwvi7chy4f5sbwzkomtnew56m?device=pixel4&osVersion=11.0&scale=75)

## Overview

This is a flutter Mobile App that displays a `CvPage` and an `EditPage`
THE Cv screen displays user' info . The Edit screen displays consistently styled textfields that allow users update their ingormation on the `CvPage`. Changes made in the `EditPage` are updated immediately on the `CvPage`.
`ValueNotifier` and `ValueListenableBuilder` are used to rebuild widgets and maintain state in this mobile App, because it is performance-efficient.


## Features

### CV SCREEN:

 * `CvPage` displaying the user's name, slack username, email address, github handle and a short bio.
 * An edit button that navigates to the `EditPage`.
 * A clean UI, styled in a consistent manner to display text in a legible form.


 ### CV EDIT SCREEN:

* Allows users edit CV details.
* Displays  user-friendly fields for updating existing CV details.
*  Updates changes made in real time, these changes reflect immediately on the CV screen upon clicking the save button.
 

## Installation:

1. Ensure you have flutter and dart sdk in your system.

2. Copy the code url, open the terminal in your code editor and type.
 "git clone <code url>.

3. Type "cd CvApp" in your terminal inorder to change current working directory to the project folder.

3. Afterwards, input "flutter run" in your terminal to start the project on your device or emulator after a few minutes.

4.  Upon launching the app, an `CvPage` comes up, with personal details, a short bio and an edit button that navigates to the `EditPage`. Changes made in the `EditPage`are reflected in real-time on the Cvpage.




