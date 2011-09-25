###################################################################
#
# Copyright (C) 2011,  Ralf Hemmecke <ralf@hemmecke.de>
#
###################################################################
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
###################################################################
#
# This is the main Makefile for the FLINT project.
#
###################################################################

# Make sure MPFR and MPIR and flint.h is found.
AM_CFLAGS = ${mpfr_cflags} ${mpir_cflags} -I${srcdir}/include \
  -ansi -pedantic -Wall

lib_LTLIBRARIES	    = libflint.la

# Variables connected to testing.
TESTS =            # will be defined in tests.am
XFAIL_TESTS =      # mightb be defined in tests.am
check_PROGRAMS = ${TESTS} ${XFAIL_TESTS}
LDADD = libflint.la

include headers.am # define the variable include_HEADERS
include sources.am # define the variable libflint_la_SOURCES
include tests.am   # define the variable TESTS
