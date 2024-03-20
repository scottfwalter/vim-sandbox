#!/opt/homebrew/bin/gawk -f
#!/usr/bin/awk -f
#
# Example of the use of 'switch' in GNU Awk.

BEGIN {
  print "before rows"
  print "before rows"
}

#Skip line 1, useful if there's a header
NR > 1 {
	printf "Hello there %s %s",$1, NR
	switch ($2) {
		case "apple":
			print "you like apples\t123"
			break
		case "banana":
			print "you like apples\t123"
			break
		default:
			print "you like ???\t123"
	}
}

END {
  print "after rows"
}
