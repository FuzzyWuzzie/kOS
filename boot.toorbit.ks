// chill out while we look for something to run
set ship:control:pilotmainthrottle to 0.

// utilities
copy "fileutility.ks" from 0.
run fileutility.

Download("utility.ks").
Download("orbit.ks").
Download("ascent.ks").
Download("circularize.ks").
Download("maneuver.ks").

print "Utilities downloaded!".

if(ship:status = "PRELAUNCH") {
  print "Prelaunch detected!".

  print "Launcing to orbit!".
  run orbit(100, 90, 0, 1.4).

  hudtext(ship:name + " is 5x5!", 1, 2, 50, green, true).
}