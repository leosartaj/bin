#!/usr/bin/env python2

import os, optparse, sys

def parse_args():
    usage = """usage: %prog [options] [path]

    Run 
    lc -h/--help
    For help
"""

    parser = optparse.OptionParser(usage)

    help = "For verbose output"
    parser.add_option('--verbose', '-v', action='store_true', help=help, dest='verbose')

    help = "For recursive line counting"
    parser.add_option('--recursive', '-r',  action='store_true', help=help, dest='recursive')

    help = "Count files starting with dot"
    parser.add_option('--dotfiles', '-d',  action='store_true', help=help, dest='dotfiles')

    options, args = parser.parse_args()

    if len(args) == 0:
        parser.error('Not enough arguments')

    count_this = []
    for arg in args:
        if not os.path.exists(arg):
            parser.error('No such file/dir: %s' % arg)
        count_this.append(arg)

    return options, count_this

def pDir():
    """
    gives the present working directory
    """
    return os.getcwd()

def fileExists(fName, dire=pDir()):
    """
    Check if a file exists
    """
    if os.path.isfile(os.path.join(dire, fName)):
        return True
    return False

def dirExists(dire):
    """
    Check if a directory exists
    """
    if os.path.isdir(dire):
        return True
    return False

def line_count(fName, dire=pDir()):
    """
    count the number of lines in a file
    """
    if not fileExists(fName, dire):
        return 0
    fName = os.path.join(dire, fName)
    i = -1
    with open(fName) as f:
        for i, l in enumerate(f):
            pass
    return i + 1

def listdir(name, dotfiles=False):
    """
    wrapper over os.listdir. Filters hidden files/directory by default
    """
    files = os.listdir(name)
    if not dotfiles:
        filter_files = []
        for f in files:
            if f[0] != '.':
                filter_files.append(f)
        return filter_files
    return files

def count(name, options):
    """
    count the number of lines in a file or files. Returns the sum total
    """
    lines = 0

    dire = os.path.dirname(name) # returns the directory name
    fName = os.path.basename(name) # returns the filename

    if fileExists(fName, dire):
        if not options.dotfiles and fName[0] == '.':
                return 0
        lines = line_count(fName, dire)
        if options.verbose:
            print name, lines
    elif dirExists(name):
        for filename in listdir(name, options.dotfiles):
            if options.recursive:
                lines += count(os.path.join(name, filename), options)
            else:
                line = line_count(filename, name)
                lines += line
                if options.verbose:
                    print os.path.join(name, filename), line
    return lines # total lines

if __name__ == '__main__':
    lines, line = 0, 0
    try:
        options, count_this = parse_args()
        for this in count_this:
            line = count(this, options)
            print this, line
            lines += line
        if len(count_this) > 1:
            print 'total', lines
    except KeyboardInterrupt:
        sys.exit()
