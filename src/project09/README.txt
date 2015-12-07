HIGH-LEVEL LANGUAGE

Design and build an application idea using the Jack language (a simple object-based language).

Getting acquainted with Jack is preparation for (1) writing the Jack compiler in projects 10-11, and (2) writing the Jack operating system in project12.

********************************
Tools Used: VMEmulator

Breakaway is a clone of Breakout, designed for the Hack computer and written in Jack.

The player moves a paddle left and right to redirect a moving ball into a wall of breakable bricks.

- The space bar is used to advance through menu screens.
- The left and right arrow keys are used to move the paddle.
- The 'q' key is used to quit gameplay.

********************************

To play Breakaway:

[1. Compile]

Compile_Breakaway.bat is a batch file that will compile the Breakaway directory, generating a *.vm file
for each of the Breakaway *.jack files:
(Main, BreakawayGame, Hitbox, PlayArea, Paddle, Ball, Wall, Brick).

Compile_Breakaway.bat can be started from the command line by typing its pathname.

[2. Open VM Emulator]

--(Shortcut placed in project09 folder)

[3. Load Program]

--

[4. Adjust Settings and Run]


Move 'Speed' slider to fastest setting, "Fast". Change 'Animation Type' to "No animation".
Select 'Run'.

********************************

Project comments:

Jack is a basic object-based (not object-oriented, i.e. no inheritance) language.  Jack is basic to allow
the development of elegant and simple Jack compilers.

Difficulties and Improvements to be made
- Collision detection and resolution is hacked together in the update() function of the game loop.  It checks and
resolves a few AABB-to-AABB (axis-aligned bounding box) collisions one at a time.  My implementation of collisions
works well enough for this game, but it is not written well.
- The way the game transitions states, e.g. from 'StartScreen' state to 'GamePlay' state, is with a state variable
that is checked with an if-else tree.  I think there are better ways to do this with making each game state a class.
Then again, there is no inheritance, and no easy implementation of polymorphism, so maybe my implementation isn't so
bad in this case.
- The overall structure of data and methods is confusing and difficult to work with, although that's probably not
atypical for a novice in OO design.  I need to read more about how an object of class A can use data from object
 of classB without global variables or methods that require parameters.  
- Wall could store level designs, and take a parameter to its constructor to select a level.
- Hack hardware: (a)The clock frequency of Hack is dependent on the hardware that is running the emulator programs.  
There is no way to find out what the clock frequency is, and there is no timestamp function.  Thus, the gameloop 
didn't implement anykind of timestep. (b)Rendering to the Hack screen is really slow, so if the render() function is 
called too often thenthe graphics flicker.

What went well
- Implementing a game loop, albeit a simple one with no implementation of time step
- Rigging together a way to calculate positions and collisions that is satisfying to the player.
- Structuring the program well enough that game components and gameplay can be customized and enhanced easily enough.

***Satisfied with project09 results.  Moving onto project10 2015.02.16***
-Brian Grady

