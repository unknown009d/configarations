#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff00'
DEFAULT='#ffffff90' 
TEXT='#ffffff'
DELETE='#00000000'
WRONG='#00000000'
VERIFYING='#00000000'
NAME=$(whoami)
h=`date +%H`
if [ $h -lt 12 ]; then
  _greet="Good morning $NAME"
elif [ $h -lt 18 ]; then
  _greet="Good afternoon $NAME"
else
  _greet="Good evening $NAME"
fi

MOTIVATE=", $(motivate | awk -F'"' '{print $2; exit}' | awk -F'\n' '{print $1}')"

if [ -z "$MOTIVATE" ]; then
	MOTIVATE=", welcome back..."
fi

_greet="$_greet$MOTIVATE"

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DELETE         \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
--radius=120				 \
\
--time-color="#A3BE8C"       \
--date-color="#ffffffc2"	 \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
--greeter-color='#EBCB8B'	 \
--verif-color='#F3EB88'		 \
--wrong-color='#DE5E66'		 \
\
--screen 1                   \
--color="#0b0d1090"			 \
--clock                      \
--indicator                  \
--time-font="Roboto Black"		\
--time-str="%I:%M %p"        \
--time-size=48				\
--date-font="Roboto"		\
--date-str="%A, %d-%B-%Y"   \
--date-size=16				\
--verif-font="Font Awesome 6 Free Solid" \
--verif-size=75			\
--verif-text=" "			\
--greeter-font="Roboto"		\
--greeter-text="$_greet"	\
--greeter-size=16			\
--greeter-pos="w/2:h/1.06"	\
--ind-pos="w/2:h/2"			\
--wrong-font="Font Awesome 6 Free Solid" \
--wrong-size=75				\
--wrong-text="  "				\
--noinput-text=""				\
