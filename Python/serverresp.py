# Note:

# 2XX means successful response.
# 3XX means failure because another process required first.
# 4XX means you made a mistake (think 404).
# 5XX server failed

# Example
import requests
res = requests.get('http://www.[WEBSITE].com/')
print res.status_code
print res.headers

# GET (select), POST (insert), PUT (upadte), DELETE (delete)

# Import ONLY a function from a module
from module import function
