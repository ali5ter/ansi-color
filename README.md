Color is a simple bash shell script that makes it easy to color and format echo'd text.

It does this by converting combinations of readable arguments (bold, red, green, underline, etc.) into an [ANSI escape sequence](http://en.wikipedia.org/wiki/ANSI_escape_code) that your terminal emulator or console understands.

## Usage

**color** [ effect ] [ [ lt ] fgcolor ] [ bgcolor ]

**color** list

**color** [ -h | --help ]

where:

*fgcolor* and *bgcolor* are one of black, red, green, yellow, blue, magenta, cyan or white.

*effect* can be any of [ nm | normal ], [ bd | bold ], [ ft | faint ], [ it | italic ], [ ul | underline ], [ bk | blink ], [ fb | fastblink ], [ rv | reverse ], [ iv | invisible ]

Preceed the *fgcolor* with *lt* to use a light color -- the light or faint intensity effect is not commonly implemented within terminal emulators or consoles.

**color off** or just **color** resets to default colors and text effects.

**color --help** provides more detailed help and examples of usage.

**color list** displays all possible color combinations.

## Inspiration and credit

This script was quickly written after I lost the source for Moshe Jacobson's color command. Being compiled, his creation was much quicker but the binary was not portable across the platforms I used. I wrote this in shell script figuring that it would work across the widest selection of command lines.

While the syntax is compatible with Moshe's command, I wanted to add the ability to use multiple text effects and colors in one invocation and add a few more ANSI escape sequences.

Many thanks to Moshe Jacobson.

Also, a big thank you to Ian Lowe for his Debian/Ubuntu installer work.

-alister
