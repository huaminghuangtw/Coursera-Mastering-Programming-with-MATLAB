Coursera-Mastering-Programming-with-MATLAB
==========================================

Instructor: [Mike Fitzpatrick](https://www.coursera.org/instructor/mikefitzpatrick)

<table>
<tr>
<td>
A collection of <i>Course Files</i>, <i>Programming Assignments</i> and <i>Final Project</i> for <a href="https://www.coursera.org/learn/advanced-matlab-programming?specialization=matlab-programming-engineers-scientists">Mastering Programming with MATLAB</a>.
I took this online course on Coursera platform during August-September, 2021. (<a href="https://www.coursera.org/account/accomplishments/certificate/D44X4J9UFN9X">Certificate of Completion</a>)
</td>
</tr>
</table>

> DISCLAIMER: Please do not simply copy the code without trying to solve the problems yourself in the first place. The author reserves all rights but does not be liable in any event (e.g., plagiarism) caused by the use of the program. Remember that one can only learn programming by doing it. Have fun coding!😃

---

### Overview
This course is the second part of the specialization [MATLAB Programming for Engineers and Scientists Specialization](https://www.coursera.org/specializations/matlab-programming-engineers-scientists), offered by Vanderbilt University.
It covers more advanced MATLAB programming concepts such as **recursion**, **vectorization**, **function handles**, **algorithm complexity and efficiency**, **error handling**, etc..
It also presents many powerful features of MATLAB including **object-oriented programming**, **graphical user interface design environment (App Designer)** and **Live Scripts**.

---

### Final Project

In the final project of this course, I used object-oriented programming techniques and developed a MATLAB application with professional graphical user interfaces (GUIs) that visualize COVID-19 pandemic data from around the world.
I did enjoy doing this project as it's a good chance to apply newly learned skills to a real world problem. :)
The data obtained from the [Coronavirus Resource Center at the Johns Hopkins University](https://coronavirus.jhu.edu/map.html) is available from the `covid_data.mat` file. (currently including data up till January 30th, 2021)

<p align="center">
  <img width="550" src="https://user-images.githubusercontent.com/43208378/133851704-f66f1b1a-3933-4ed8-bb36-a9be46748bce.png">
</p>

#### Features
- Axes for displaying plots
- A list box for countries
- A list box for states/regions
- A widget to select what data (Cases, Deaths or Both) to plot
- A widget to display the option for cumulative or daily data
- A widget to set the number of days for the moving average of the data (from 1 to 15)
- A search box to find a specified country/state/region, so that the user does not have to scroll and find countries/states/regions manually in the list box
- A button to clear the entered text and change to the default settings
- A button to reset everything to the default settings
- Date pickers to change the range of dates to plot
- A toolbar for different functionalities

#### How to run the program?
- If you have MATLAB installed, open MATLAB and run the file `MyCovid19App.mlapp`
- If you do not have MATLAB installed and use Windows on your machine, run the standalone executable `MyCovid19App.exe`

---

### Contact
If you have any question or suggestion, feel free to contact me at huaming.huang.tw@gmail.com. Contributions are also welcomed. Please open a [pull-request](https://github.com/hmhuang0501/Coursera-Mastering-Programming-with-MATLAB/compare) or an [issue](https://github.com/hmhuang0501/Coursera-Mastering-Programming-with-MATLAB/issues/new) in this repository.
