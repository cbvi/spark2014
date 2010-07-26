------------------------------------------------------------------------------
--                            IPSTACK COMPONENTS                            --
--             Copyright (C) 2010, Free Software Foundation, Inc.           --
------------------------------------------------------------------------------

--  IP checksum
--  http://www.ietf.org/rfc/rfc1071.txt

with AIP.Buffers;

--# inherit System, AIP, AIP.Buffers;

package AIP.Checksum is

   function Sum
     (Buf    : Buffers.Buffer_Id;
      Length : Natural) return AIP.M16_T;
   --  Compute IP checksum (1's complement sum of all 16-bit words in the first
   --  Length bytes of Buf.

end AIP.Checksum;
