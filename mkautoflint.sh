#!/bin/bash
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

P=`pwd` # remember the current directory.
cp *.sh Makefile.am configure.ac flint
cd flint
bash autostructure.sh
bash generate-rules.sh
export PATH=$P/autotools/bin:$PATH
if ! bash build-setup.sh; then (cd $P; make -f autotools.mk); fi
bash build-setup.sh
cd $P
