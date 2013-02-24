# Tool for formatting phone numbers on report
# Only to be entered in IRB: shows format

# Original value
phone_number = "8005551212"

# For convenience, let's shorten it
p = phone_number

# Convert phone number to format (800) 555-1212
new_phone = "(" + p[0..2] + ") " + p[3..5] + "-" + p[6..9]