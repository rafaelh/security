import re
from collections import OrderedDict

results = []

f = open('access_log.txt')
for line in f:
    line = line.rstrip()
    x = re.findall(r'[^/]*.js\b',line)
    if len(x) > 0:
        results.append(x)

flatten_results = [item for sublist in results for item in sublist]
no_duplicates = list(dict.fromkeys(flatten_results))
no_duplicates.sort()
for result in no_duplicates:
    print (result)


