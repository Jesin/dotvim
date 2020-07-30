#!/usr/bin/python3
# vim:noet:sw=4:ts=4

import os
import ycm_core

cf = ['-std=c17', '-O2', '-D_FORTIFY_SOURCE=2', '-Wall', '-Wextra', '-Wpedantic']
cxxf = cf[:]
cxxf[0] = '-std=c++17'
for s in os.listdir('/usr/include/c++/'):
	cxxf.append('-isystem')
	cxxf.append('/usr/include/c++/' + s)
del s


def FindSrc(f):
	b, e = os.path.splitext(f)
	if e.lower() in {'', '.h', '.hh', '.hpp', '.hxx', '.tcc'}:
		for e in ('.cc', '.cpp', '.cxx', '.c', '.m', '.mm', '.tcc'):
			r = b + e
			if os.path.exists(r):
				return r
			r = b + e.upper()
			if os.path.exists(r):
				return r
	return f


def Settings(**k):
	if k['language'] != 'cfamily':
		return {}
	k = k['filename']
	k = FindSrc(k)
	r = os.path.splitext(k)[1].lower()
	r = cf if r in {'.c', '.h', '.i', '.m', '.mi'} else cxxf
	return {'flags': r, 'override_filename': k}
