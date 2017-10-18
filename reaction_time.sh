#!/bin/bash
#grep -Po 'reaction_time\=\d[6-9]\d.\d{2,3}ms' `find /tmp/ -name "universe*" -mmin -10` > count.txt
grep -Po 'reaction_time\=\d[6-9]\d.\d{2,3}ms' `find /tmp/ -name "universe*"` > count.txt
HIGH=$((`wc -l < count.txt`))
#grep -Po 'reaction_time\=' `find /tmp/ -name "universe*" -mmin -10` > count.txt
grep -Po 'reaction_time\=' `find /tmp/ -name "universe*"` > count.txt
TOT=$((`wc -l < count.txt`))
#grep -Po 'reaction_time\=None' `find /tmp/ -name "universe*" -mmin -10` > count.txt
grep -Po 'reaction_time\=None' `find /tmp/ -name "universe*"` > count.txt
NONE=$((`wc -l < count.txt`))
echo "$HIGH of $TOT calls over 160ms reaction time"
echo "$NONE of $TOT calls with 'None' reaction time"

#grep -Po 'reaction_time\=\d{3}.\d{2,3}ms' `find /tmp/ -mmin -10`
#grep -Po 'reaction_time\=\S*ms' `find /tmp/ -mmin -10`
