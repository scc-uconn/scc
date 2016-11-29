
from re import search

with open('Readme.md') as f:
    hdrs = [l.strip() for l in f.readlines() if search(r'#', l) is not None]

for h in hdrs:
    # headers should consist of several hash signs `#`, followed by a
    # space, followed by a title
    ix = h.find(' ')
    if ix >= 0:
        title = h[ix+1:]
        tag = title.lower().replace(' ', '-')
        print('{0}* [{1}](#{2})'.format('    '*(ix-1), title, tag))
