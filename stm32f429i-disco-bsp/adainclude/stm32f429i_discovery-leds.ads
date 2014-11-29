--  This package is free software; you can redistribute it and/or
--  modify it under terms of the GNU General Public License as
--  published by the Free Software Foundation; either version 3, or
--  (at your option) any later version.  It is distributed in the
--  hope that it will be useful, but WITHOUT ANY WARRANTY; without
--  even the implied warranty of MERCHANTABILITY or FITNESS FOR A
--  PARTICULAR PURPOSE.
--
--  As a special exception under Section 7 of GPL version 3, you are
--  granted additional permissions described in the GCC Runtime
--  Library Exception, version 3.1, as published by the Free Software
--  Foundation.
--
--  You should have received a copy of the GNU General Public License
--  and a copy of the GCC Runtime Library Exception along with this
--  program; see the files COPYING3 and COPYING.RUNTIME respectively.
--  If not, see <http://www.gnu.org/licenses/>.
--
--  Copyright Simon Wright <simon@pushface.org>

package STM32F429I_Discovery.LEDs is

   --  NB, the STM32F429I Discovery only has two LEDs.

   type LED is (LED3, LED4);
   function Green return LED renames LED3;
   function Red return LED renames LED4;

   procedure Initialize;

   procedure Set    (The_LED : LED);
   procedure Clear  (The_LED : LED);
   procedure Toggle (The_LED : LED);

end STM32F429I_Discovery.LEDs;