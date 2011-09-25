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

# We assume that we are in the top-level flint directory.
mkdir include
mv *.h include
mkdir src
for d in $(find . -maxdepth 1 -type d); do
    if test -f $d/Makefile; then mv $d src/$d; fi
done

# Move top-level code to src/aux.
mkdir src/aux
mv test *.c src/aux
echo "# needed to simplify generate-rules.sh" > src/aux/Makefile

# Remove Makefiles and configure.
# If the flint developers switch to autotools, then the original buiild
# files can be removed. Note, however, that then "generate-rules.sh" has
# to be adapted accordingly.
#find . -name Makefile -delete
#rm Makefile.in
#rm configure

