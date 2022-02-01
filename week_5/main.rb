# https://ruby-doc.org/

# Time
# time.now time.now.to_i time.at
# Time.new

# tomorrow

tomorrow = Time.now + (60*60*24)
next_week = Time.now + (60*60*24*7)
next_year = Time.now + (60*60*24*365)
p tomorrow
p next_week
p next_year

# yestrday & last

yestrday = Time.now - (60*60*24)
last_week = Time.now - (60*60*24*7)
last_year = Time.now - (60*60*24*365)
p yestrday
p last_week
p last_year

# https://ruby-doc.org/core-2.6.3/Time.html#method-i-sunday-3F
Time.now.sunday?

#https://ruby-doc.org/core-2.6.3/Time.html#method-i-strftime  String for timr
t = Time.now
t.strftime "%Y-%m-%d"   #=> "2012-11-10 18:16:12 +0100"

# localtime vs utc vs gtmime
#
#
# Date
Time.now.to_date
Date.today.to_time

# next_day , next_month , next_year
# perv_day , prev_month , prev_year

# DateTime
Time.now.to_datetime.hour

# https://ruby-doc.org/stdlib-3.1.0/libdoc/date/rdoc/Date.html#method-i-cwday
Date.new(2001,2,3).cwday