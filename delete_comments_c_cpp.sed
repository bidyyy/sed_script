#!/bin/sed -nrf
# Autor: Gaétan Becker
# Github login: bidyyy
# Email: <gaetbe.68@gmail.com>
# This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.

#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.

#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
/\/\*/ {
  /^.+\/\*.*$/ { s/((.*;)+).*\/\*.*$/\1/g;p }
  :start
  /\*\// { d }
  N;
  b start
}
/\/\// {
  /^\/\//d
  s/((.*;)+)(.*\/\/.*)$/\1/1
}
p
