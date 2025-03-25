# Termius Debug Distro Labels

## Script From Ben

```bash
HISTFILE=;
SA_OS_TYPE=\"Linux\"
REAL_OS_NAME=`uname`
if [ \"$REAL_OS_NAME\" != \"$SA_OS_TYPE\" ] ;
then
echo `uname`
else
DISTRIB_ID=\\\"`cat /etc/*release`\\\"
echo $DISTRIB_ID;
fi;
exit;
```

## Output of Script(s)

Outputs are organized by distro. 

## Additional Scripts

This script provided seems to have a few problems. The issues seem to stem from escape characters and the consequences are obvious in the provided outputs. Admittedly, this could also be due to something I'm not understanding.

In the interest of closing the loop on this quickly I wrote a few scripts of my own. One 'corrected', and one 'verbose'. I hope these provide a clearer picture of what is going on.  The 'corrected' script is adjusted (to the best of my knowledge) towards what is intended. The 'verbose' script provides more detail and additional formatting.
