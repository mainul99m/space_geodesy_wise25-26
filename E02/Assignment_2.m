%[text] ## Introduction to space Geodesy
%[text] Assignment 2
%[text] **Exercise 1:** Write a function that computes a basic 3d-rotation matrix using the equations in attachment. The first line could read `function` $R\_i =\\mathrm{rot3d}\\left(\\mathrm{angle},\\mathrm{Axis}\\right)${"editStyle":"visual"} where angle denotes the rotation angle (unit?) and axis specifies the rotation axis $\\left(\\;e\_i ,\\;i\\in \\left\\lbrace 1,2,3\\right\\rbrace \\right)\\;\\;${"editStyle":"visual"}. Both input arguments are scalar. Output argument is a (3x3) matrix $R\_i${"editStyle":"visual"}. Check the correctness of the function by testing the examples $R\_i \\left(2\\pi \\right)=R\_i \\left(0\\right)=R\_i \\left(\\pi \\right)${"editStyle":"visual"} $R\_i \\left(\\pi \\right)=I${"editStyle":"visual"} , where $I${"editStyle":"visual"} is the (3x3) identity matrix. Are the basic rotation matrices providing clockwise $\\left(e\_1 =R\_3 \\left(\\frac{\\pi }{2}\\right)e\_2 \\right)${"editStyle":"visual"} or anti-clockwise  $\\left(e\_2 =R\_3 \\left(\\frac{\\pi }{2}\\right)e\_1 \\right)${"editStyle":"visual"} rotation in case of positive angle when taking the point of view from the origin? 
% to-do 
%

%[text] 
%[text] **Exercise 2:** Write a function that computes a 3d-reflection matrix using the equations in attachment. The first line could read `function` $M\\\_i=\\mathrm{mir3d}\\left(\\mathrm{axis}\\right)${"editStyle":"visual"} where axis specifies the mirror axis $\\left(\\;e\_i ,\\;i\\in \\left\\lbrace 1,2,3\\right\\rbrace \\right)\\;\\;${"editStyle":"visual"}. The input argument is scalar. Output argument is a (3x3) matrix $M\\\_i${"editStyle":"visual"}. Check the correctness of the function by testing $M\_i${"editStyle":"visual"} $M\_i =l${"editStyle":"visual"}, $M\_i \\;M\_j \\;M\_k =-I${"editStyle":"visual"} with $i\\not= j\\not= k\\in \\left\\lbrace 1,2,3\\right\\rbrace${"editStyle":"visual"} and $I${"editStyle":"visual"} as of (exercise 1) 
% to-do
%

%[text]  
%[text] **Exercise 3:** In the theory of satellite orbits, a common problem is the KEPLER equation:$M=e-e\\;\\sin \\;E\\;${"editStyle":"visual"}. It relates the mean anomaly $M\\in \\;\\left\\lbrack 0;2\\pi \\left\\lbrack \\right.\\right.${"editStyle":"visual"} to the eccentric anomaly $E\\in \\;\\left\\lbrack 0;2\\pi \\left\\lbrack \\right.\\right.${"editStyle":"visual"} with given numerical eccentricity $e\\in \\;\\left\\lbrack 0;1\\left\\lbrack \\right.\\right.${"editStyle":"visual"}. For $E${"editStyle":"visual"}, the equation has no closed solution. To compute $E${"editStyle":"visual"} from a given $M${"editStyle":"visual"} one can iterate: $E\_{i+1} =M+e\\;\\sin \\;E\_i${"editStyle":"visual"} e.g. with starting value $E\_{i=0} =M${"editStyle":"visual"}. Write a function that computes $E${"editStyle":"visual"} from given $M${"editStyle":"visual"} and $e${"editStyle":"visual"} iteratively with the stop criterion ${|\\;E}\_{i+1} -E\_i \\;|\<{10}^{-6}${"editStyle":"visual"} . Next, extend the number of output arguments so that the function returns the number of iterations as well, e.g.: `function` $\\left\\lbrack E\_{\\mathrm{an}} ,i\_{\\mathrm{ter}} \\right\\rbrack =\\mathrm{kepler}\\left(M\_{\\mathrm{an}} ,{\\mathrm{ecc}}\_1 \\right)${"editStyle":"visual"}. What variable could be introduced to the list of input arguments additionally? Test the correctness of the function on a $\\left\\lbrack M\\times e\\right\\rbrack${"editStyle":"visual"}-grid with resolution 0.01 for $M${"editStyle":"visual"} and 0.001 for $e${"editStyle":"visual"}. For each grid point, compute the difference between the eccentric anomaly and the mean anomaly $\\left(E-M\\right)${"editStyle":"visual"} and the number of iterations. Plot the two quantities over the test grid with `mesh` each into an own figure. Where do the anomalies differ maximally and minimally? Where does the solution need the maximal or minimal number of iterations? Compute the median of the number of iterations?
% to-do
% 

%[text] 
%[text] **Exercise 4:** Write a function that converts an angle in degree (decimal number) into degree (integer), minute (integer) and second (decimal number). Can you use this function to convert an angle in hour angle (decimal number) to hour, minute and decimal second as well? If so, what would have to be changed? Write a function that does the back conversion: \[degree, minute, second\] $\\to${"editStyle":"visual"} degree. Make sure the function works for negative angles as well. Test both functions with two own examples by doing a forward and a consecutive backward transformation.
% to-do
% 

%[text] 
%[text] Exercise 5: Write a function that computes the Julian Date and Modified Julian Date from a given Gregorian calendar date specified as year, month, day, hour, minute and second.
%[text] (a) Compute the Earth Rotation Angle (ERA) at 2025-04-10, 02h:00m:00s CET and specify it in degree, minute and second to one second precision.
%[text] (b) Compute the Greenwich Apparent Sidereal Time (GAST) at 2025-04-10, 02h:00m:00s CET and specify it in hour angle, minute and second to one second precision.
% to-do
% 
%[text] 
%[text] Exercise 6 (option): The baseline length of the Westford – Wettzell baseline is about 6000 km in ITRF. At 2025-04-10, 12:00:00 UTC, a VLBI group delay ∆𝑡𝑡 in TT is measured to be 20 ms on this baseline. Compute the difference of the delay in TT vs. TCB compatible seconds using the TT to TCG and TCG to TCB coordinate time transformations. Then specify the delay difference in meter. What solar system bodies are significant for the general relativistic transformation when taking 99.99% significance level into consideration? Show that the gravitational relativistic term is about twice as large as the special relativistic term.
% to-do
% 

%[text] 
%[text] ### Attachment:
%[text] 3D rotation Matrix
%[text] $R\_1 \\left(\\theta \\right)=\\left\\lbrack \\begin{array}{ccc}\n1 & 0 & 0\\\\\n0 & \\cos \\;\\theta  & \\sin \\;\\theta \\\\\n0 & -\\sin \\;\\theta  & \\cos \\;\\theta \n\\end{array}\\right\\rbrack${"editStyle":"visual"},     $R\_2 \\left(\\theta \\right)=\\left\\lbrack \\begin{array}{ccc}\n\\cos \\;\\theta  & 0 & -\\sin \\;\\theta \\\\\n0 & 1 & 0\\\\\n\\sin \\;\\theta  & 0 & \\cos \\;\\theta \n\\end{array}\\right\\rbrack${"editStyle":"visual"},     $R\_1 \\left(\\theta \\right)=\\left\\lbrack \\begin{array}{ccc}\n\\cos \\;\\theta  & \\sin \\;\\theta  & 0\\\\\n-\\sin \\;\\theta  & \\cos \\;\\theta  & 0\\\\\n0 & 0 & 1\n\\end{array}\\right\\rbrack${"editStyle":"visual"}
%[text] 3D reflexion Matrix
%[text] $M\_1 =\\left\\lbrack \\begin{array}{ccc}\n-1 & 0 & 0\\\\\n0 & 1 & 0\\\\\n0 & 0 & -1\n\\end{array}\\right\\rbrack${"editStyle":"visual"},       $M\_2 =\\left\\lbrack \\begin{array}{ccc}\n1 & 0 & 0\\\\\n0 & -1 & 0\\\\\n0 & 0 & 1\n\\end{array}\\right\\rbrack${"editStyle":"visual"},       $M\_3 =\\left\\lbrack \\begin{array}{ccc}\n1 & 0 & 0\\\\\n0 & 1 & 0\\\\\n0 & 0 & -1\n\\end{array}\\right\\rbrack${"editStyle":"visual"} 
%[text] 
%[text:table]{"columnWidths":[174,-1,-1]}
%[text] | <p align="center">body (**A**)</p> | <p align="center">${\\mathrm{GM}}\_A \\left(m^3 ,s^{-2} \\right)${"editStyle":"visual"}</p> | <p align="center">mean distance to earth $|\\;\\vec{x\_e \\;} -\\;\\vec{x\_a \\;} |\\;\\left(\\mathrm{km}\\right)${"editStyle":"visual"}</p> |
%[text] | --- | --- | --- |
%[text] | <p align="center">Sun</p> | <p align="center">$1\\ldotp 32712440018∙{10}^{20}${"editStyle":"visual"}</p> | <p align="center">149,597,870.7 km (= 1 AU)</p> |
%[text] | <p align="center">Mercury</p> | <p align="center">$2\\ldotp 2032\\cdot 10\\mathrm{¹³}${"editStyle":"visual"}</p> | <p align="center">91,691,000 km</p> |
%[text] | <p align="center">Venus</p> | <p align="center">$3\\ldotp 24859\\cdot 10\\mathrm{¹⁴}${"editStyle":"visual"}</p> | <p align="center">41,400,000 km</p> |
%[text] | <p align="center">Moon</p> | <p align="center">$4\\ldotp 9048695\\cdot 10\\mathrm{¹²}${"editStyle":"visual"}</p> | <p align="center">385,000.6 km</p> |
%[text] | <p align="center">Mars</p> | <p align="center">$4\\ldotp 282837\\cdot 10\\mathrm{¹³}${"editStyle":"visual"}</p> | <p align="center">78,340,000 km</p> |
%[text] | <p align="center">Ceres</p> | <p align="center">$6\\ldotp 26325\\cdot 10\\mathrm{¹⁰}${"editStyle":"visual"}</p> | <p align="center">414,000,000 km</p> |
%[text] | <p align="center">Jupytar</p> | <p align="center">$1\\ldotp 26686534\\cdot 10\\mathrm{¹⁷}${"editStyle":"visual"}</p> | <p align="center">628,730,000 km</p> |
%[text] | <p align="center">Saturn</p> | <p align="center">$3\\ldotp 7931187\\cdot 10\\mathrm{¹⁶}${"editStyle":"visual"}</p> | <p align="center">1,275,000,000 km</p> |
%[text] | <p align="center">Uranus</p> | <p align="center">$5\\ldotp 793939\\cdot 10\\mathrm{¹⁵}${"editStyle":"visual"}</p> | <p align="center">2,723,950,000 km</p> |
%[text] | <p align="center">Neptune</p> | <p align="center">$6\\ldotp 836529\\cdot 10\\mathrm{¹⁵}${"editStyle":"visual"}</p> | <p align="center">4,351,400,000 km</p> |
%[text] | <p align="center">Pluto</p> | <p align="center">$8\\ldotp 71\\cdot 10\\mathrm{¹¹}${"editStyle":"visual"}</p> | <p align="center">5,890,000,000 km</p> |
%[text] | <p align="center">Eris</p> | <p align="center">$1\\ldotp 108\\cdot 10\\mathrm{¹²}${"editStyle":"visual"}</p> | <p align="center">96\.1 AU</p> |
%[text:table]
%[text] 
%[text] Use $30\\;\\mathrm{km}\\;s^{-1}${"editStyle":"visual"} for the magnitude of the barycentric velocity of Earth $v\_e${"editStyle":"visual"}.
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":21.5}
%---
