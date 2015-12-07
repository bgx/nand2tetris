'''View how sys.argv stores command line arguments

Command-line arguments are separated by spaces, and each shows up as a separate element in the sys.argv list
'''

import sys

for arg in sys.argv:
    print(arg)
