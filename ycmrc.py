#!/usr/bin/python3
# vim:ft=python:noet:sw=4:ts=4

import os
import ycm_core

cf = ('-std=c17', '-x')
cxxf = ['-std=c++17']
for s in os.listdir('/usr/include/c++/'):
	cxxf.append('-isystem')
	cxxf.append('/usr/include/c++/' + s)
cxxf.append('-x')
cxxf = tuple(cxxf)
hxxf = cxxf + ('c++-header',)
fext_flags = {
	'.c': cf + ('c',),
	'.h': cf + ('c-header',),
	'.m': cf + ('objective-c',),
	'': hxxf,
	'.hh': hxxf,
	'.hpp': hxxf,
	'.hxx': hxxf,
	'.tcc': hxxf,
	'.mm': cxxf + ('objective-c++',)
}
del cf
cxxf += ('c++',)
for s in ('.cc', '.cpp', '.cxx'):
	fext_flags[s] = cxxf


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
	r = ['-O', '-D_FORTIFY_SOURCE=2', '-Wall', '-Wextra', '-Wpedantic']
	r += fext_flags.get(os.path.splitext(k)[1].lower(), cxxf)
	return {'flags': r, 'override_filename': k}
