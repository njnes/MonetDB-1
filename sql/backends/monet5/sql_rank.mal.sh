# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0.  If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright 1997 - July 2008 CWI, August 2008 - 2019 MonetDB B.V.

sed '/^$/q' $0			# copy copyright from this file

cat <<EOF
# This file was generated by using the script ${0##*/}.

module sql;

EOF

cat <<EOF
pattern sql.diff(b:any_1) :bit
address SQLdiff
comment "return true if cur != prev row";

pattern batsql.diff(b:bat[:any_1]) :bat[:bit]
address SQLdiff
comment "return true if cur != prev row";

pattern sql.diff(p:bit, b:any_1) :bit
address SQLdiff
comment "return true if cur != prev row";

pattern batsql.diff(p:bat[:bit], b:bat[:any_1]) :bat[:bit]
address SQLdiff
comment "return true if cur != prev row";

EOF

for tp in bte sht int lng flt dbl; do
	cat <<EOF
pattern sql.window_bound(b:any_1, unit:int, bound:int, excl:int, limit:${tp}) :lng
address SQLwindow_bound
comment "computes window ranges for each row";

pattern batsql.window_bound(b:bat[:any_1], unit:int, bound:int, excl:int, limit:${tp}) :bat[:lng]
address SQLwindow_bound
comment "computes window ranges for each row";

pattern sql.window_bound(p:bit, b:any_1, unit:int, bound:int, excl:int, limit:${tp}) :lng
address SQLwindow_bound
comment "computes window ranges for each row";

pattern batsql.window_bound(p:bat[:bit], b:bat[:any_1], unit:int, bound:int, excl:int, limit:${tp}) :bat[:lng]
address SQLwindow_bound
comment "computes window ranges for each row";

pattern batsql.window_bound(b:bat[:any_1], unit:int, bound:int, excl:int, limit:bat[:${tp}]) :bat[:lng]
address SQLwindow_bound
comment "computes window ranges for each row";

pattern batsql.window_bound(p:bat[:bit], b:bat[:any_1], unit:int, bound:int, excl:int, limit:bat[:${tp}]) :bat[:lng]
address SQLwindow_bound
comment "computes window ranges for each row";


EOF
done

cat <<EOF
pattern sql.row_number(b:any_1, p:bit, o:bit) :int
address SQLrow_number
comment "return the row_numer-ed groups";

pattern batsql.row_number(b:bat[:any_1], p:any_2, o:any_3) :bat[:int]
address SQLrow_number
comment "return the row_numer-ed groups";


pattern sql.rank(b:any_1, p:bit, o:bit) :int
address SQLrank
comment "return the ranked groups";

pattern batsql.rank(b:bat[:any_1], p:any_2, o:any_3) :bat[:int]
address SQLrank
comment "return the ranked groups";


pattern sql.dense_rank(b:any_1, p:bit, o:bit) :int
address SQLdense_rank
comment "return the densely ranked groups";

pattern batsql.dense_rank(b:bat[:any_1], p:any_2, o:any_3) :bat[:int]
address SQLdense_rank
comment "return the densely ranked groups";


pattern sql.percent_rank(b:any_1, p:bit, o:bit) :dbl
address SQLpercent_rank
comment "return the percentage into the total number of groups for each row";

pattern batsql.percent_rank(b:bat[:any_1], p:any_2, o:any_3) :bat[:dbl]
address SQLpercent_rank
comment "return the percentage into the total number of groups for each row";


pattern sql.cume_dist(b:any_1, p:bit, o:bit) :dbl
address SQLcume_dist
comment "return the accumulated distribution of the number of rows per group to the total number of partition rows";

pattern batsql.cume_dist(b:bat[:any_1], p:any_2, o:any_3) :bat[:dbl]
address SQLcume_dist
comment "return the accumulated distribution of the number of rows per group to the total number of partition rows";


pattern sql.lag(b:any_1, p:any_3, o:any_4) :any_1
address SQLlag
comment "return the value in the previous row in the partition or NULL if non existent";

pattern batsql.lag(b:bat[:any_1], p:any_3, o:any_4) :bat[:any_1]
address SQLlag
comment "return the value in the previous row in the partition or NULL if non existent";


pattern sql.lag(b:any_1, l:any_2, p:any_3, o:any_4) :any_1
address SQLlag
comment "return the value in the previous 'l' row in the partition or NULL if non existent";

pattern batsql.lag(b:bat[:any_1], l:any_2, p:any_3, o:any_4) :bat[:any_1]
address SQLlag
comment "return the value in the previous 'l' row in the partition or NULL if non existent";

pattern sql.lag(b:any_1, l:bat[:any_2], p:any_3, o:any_4) :any_1
address SQLlag
comment "return the value in the previous 'l' row in the partition or NULL if non existent";

pattern batsql.lag(b:bat[:any_1], l:bat[:any_2], p:any_3, o:any_4) :bat[:any_1]
address SQLlag
comment "return the value in the previous 'l' row in the partition or NULL if non existent";


pattern sql.lag(b:any_1, l:any_2, d:any_1, p:any_3, o:any_4) :any_1
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";

pattern batsql.lag(b:bat[:any_1], l:any_2, d:any_1, p:any_3, o:any_4) :bat[:any_1]
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";

pattern sql.lag(b:any_1, l:bat[:any_2], d:any_1, p:any_3, o:any_4) :any_1
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";

pattern batsql.lag(b:bat[:any_1], l:bat[:any_2], d:any_1, p:any_3, o:any_4) :bat[:any_1]
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";

pattern sql.lag(b:any_1, l:any_2, d:bat[:any_1], p:any_3, o:any_4) :any_1
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";

pattern batsql.lag(b:bat[:any_1], l:any_2, d:bat[:any_1], p:any_3, o:any_4) :bat[:any_1]
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";

pattern sql.lag(b:any_1, l:bat[:any_2], d:bat[:any_1], p:any_3, o:any_4) :any_1
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";

pattern batsql.lag(b:bat[:any_1], l:bat[:any_2], d:bat[:any_1], p:any_3, o:any_4) :bat[:any_1]
address SQLlag
comment "return the value in the previous 'l' row in the partition or 'd' if non existent";


pattern sql.lead(b:any_1, p:any_3, o:any_4) :any_1
address SQLlead
comment "return the value in the next row in the partition or NULL if non existent";

pattern batsql.lead(b:bat[:any_1], p:any_3, o:any_4) :bat[:any_1]
address SQLlead
comment "return the value in the next row in the partition or NULL if non existent";


pattern sql.lead(b:any_1, l:any_2, p:any_3, o:any_4) :any_1
address SQLlead
comment "return the value in the next 'l' row in the partition or NULL if non existent";

pattern batsql.lead(b:bat[:any_1], l:any_2, p:any_3, o:any_4) :bat[:any_1]
address SQLlead
comment "return the value in the next 'l' row in the partition or NULL if non existent";

pattern sql.lead(b:any_1, l:bat[:any_2], p:any_3, o:any_4) :any_1
address SQLlead
comment "return the value in the next 'l' row in the partition or NULL if non existent";

pattern batsql.lead(b:bat[:any_1], l:bat[:any_2], p:any_3, o:any_4) :bat[:any_1]
address SQLlead
comment "return the value in the next 'l' row in the partition or NULL if non existent";


pattern sql.lead(b:any_1, l:any_2, d:any_1, p:any_3, o:any_4) :any_1
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";

pattern batsql.lead(b:bat[:any_1], l:any_2, d:any_1, p:any_3, o:any_4) :bat[:any_1]
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";

pattern sql.lead(b:any_1, l:bat[:any_2], d:any_1, p:any_3, o:any_4) :any_1
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";

pattern batsql.lead(b:bat[:any_1], l:bat[:any_2], d:any_1, p:any_3, o:any_4) :bat[:any_1]
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";

pattern sql.lead(b:any_1, l:any_2, d:bat[:any_1], p:any_3, o:any_4) :any_1
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";

pattern batsql.lead(b:bat[:any_1], l:any_2, d:bat[:any_1], p:any_3, o:any_4) :bat[:any_1]
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";

pattern sql.lead(b:any_1, l:bat[:any_2], d:bat[:any_1], p:any_3, o:any_4) :any_1
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";

pattern batsql.lead(b:bat[:any_1], l:bat[:any_2], d:bat[:any_1], p:any_3, o:any_4) :bat[:any_1]
address SQLlead
comment "return the value in the next 'l' row in the partition or 'd' if non existent";


pattern sql.ntile(b:any_1, n:any_2, p:any_3, o:any_4) :any_2
address SQLntile
comment "return the groups divided as equally as possible";

pattern batsql.ntile(b:bat[:any_1], n:any_2, p:any_3, o:any_4) :bat[:any_2]
address SQLntile
comment "return the groups divided as equally as possible";

pattern sql.ntile(b:any_1, n:bat[:any_2], p:any_3, o:any_4) :any_2
address SQLntile
comment "return the groups divided as equally as possible";

pattern batsql.ntile(b:bat[:any_1], n:bat[:any_2], p:any_3, o:any_4) :bat[:any_2]
address SQLntile
comment "return the groups divided as equally as possible";


EOF

# The following analytic functions support frames

	cat <<EOF
pattern sql.first_value(b:any_1, s:lng, e:lng) :any_1
address SQLfirst_value
comment "return the first value of groups";

pattern batsql.first_value(b:bat[:any_1], s:bat[:lng], e:bat[:lng]) :bat[:any_1]
address SQLfirst_value
comment "return the first value of groups";


pattern sql.last_value(b:any_1, s:lng, e:lng) :any_1
address SQLlast_value
comment "return the last value of groups";

pattern batsql.last_value(b:bat[:any_1], s:bat[:lng], e:bat[:lng]) :bat[:any_1]
address SQLlast_value
comment "return the last value of groups";


pattern sql.nth_value(b:any_1, n:any_2, s:lng, e:lng) :any_1
address SQLnth_value
comment "return the nth value of each group";

pattern batsql.nth_value(b:bat[:any_1], n:any_2, s:bat[:lng], e:bat[:lng]) :bat[:any_1]
address SQLnth_value
comment "return the nth value of each group";

pattern sql.nth_value(b:any_1, n:bat[:any_2], s:lng, e:lng) :any_1
address SQLnth_value
comment "return the nth value of each group";

pattern batsql.nth_value(b:bat[:any_1], n:bat[:any_2], s:bat[:lng], e:bat[:lng]) :bat[:any_1]
address SQLnth_value
comment "return the nth value of each group";


pattern sql.min(b:any_1, s:lng, e:lng) :any_1
address SQLmin
comment "return the minimum of groups";

pattern batsql.min(b:bat[:any_1], s:bat[:lng], e:bat[:lng]) :bat[:any_1]
address SQLmin
comment "return the minimum of groups";

pattern sql.max(b:any_1, s:lng, e:lng) :any_1
address SQLmax
comment "return the maximum of groups";

pattern batsql.max(b:bat[:any_1], s:bat[:lng], e:bat[:lng]) :bat[:any_1]
address SQLmax
comment "return the maximum of groups";

pattern sql.count(b:any_1, ignils:bit, s:lng, e:lng) :lng
address SQLcount
comment "return count of groups";

pattern batsql.count(b:bat[:any_1], ignils:bit, s:bat[:lng], e:bat[:lng]) :bat[:lng]
address SQLcount
comment "return count of groups";

EOF

for tp1 in 1:bte 2:sht 4:int 8:lng; do
    for tp2 in 8:lng; do
	if [ ${tp1%:*} -le ${tp2%:*} -o ${tp1#*:} = ${tp2#*:} ]; then
	    cat <<EOF
pattern sql.sum(b:${tp1#*:}, s:lng, e:lng) :${tp2#*:}
address SQLsum
comment "return the sum of groups";

pattern batsql.sum(b:bat[:${tp1#*:}], s:bat[:lng], e:bat[:lng]) :bat[:${tp2#*:}]
address SQLsum
comment "return the sum of groups";

pattern sql.prod(b:${tp1#*:}, s:lng, e:lng) :${tp2#*:}
address SQLprod
comment "return the product of groups";

pattern batsql.prod(b:bat[:${tp1#*:}], s:bat[:lng], e:bat[:lng]) :bat[:${tp2#*:}]
address SQLprod
comment "return the product of groups";

EOF
	fi
    done
done

for tp1 in 4:flt 8:dbl; do
    for tp2 in 4:flt 8:dbl; do
	if [ ${tp1%:*} -le ${tp2%:*} ]; then
	    cat <<EOF
pattern sql.sum(b:${tp1#*:}, s:lng, e:lng) :${tp2#*:}
address SQLsum
comment "return the sum of groups";

pattern batsql.sum(b:bat[:${tp1#*:}], s:bat[:lng], e:bat[:lng]) :bat[:${tp2#*:}]
address SQLsum
comment "return the sum of groups";

pattern sql.prod(b:${tp1#*:}, s:lng, e:lng) :${tp2#*:}
address SQLprod
comment "return the product of groups";

pattern batsql.prod(b:bat[:${tp1#*:}], s:bat[:lng], e:bat[:lng]) :bat[:${tp2#*:}]
address SQLprod
comment "return the product of groups";

EOF
	fi
    done
done

for tp1 in 1:bte 2:sht 4:int 8:lng 4:flt 8:dbl; do
	cat <<EOF
pattern sql.avg(b:${tp1#*:}, s:lng, e:lng) :dbl
address SQLavg
comment "return the average of groups";

pattern batsql.avg(b:bat[:${tp1#*:}], s:bat[:lng], e:bat[:lng]) :bat[:dbl]
address SQLavg
comment "return the average of groups";

EOF
done

cat <<EOF
command aggr.exist(b:bat[:any_2], h:any_1):bit
address ALGexist;

command aggr.exist(b:bat[:any_2]):bit
address SQLexist;

pattern aggr.exist(v:any_2):bit
address SQLexist_val;

EOF
