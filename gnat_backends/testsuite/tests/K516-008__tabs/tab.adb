package body Tab is
   procedure Tab_Filter (B : in Arr; Threshold : in Integer; A : in out Arr)
   is
      Cur : Integer := 0;
   begin
      for I in Index'First .. Index'Last loop
         pragma Assert
           (for all J in Index range Index'First .. I-1 =>
              (if (B(J) > Threshold) then
                 (for some K in Index range 0 .. Cur-1 => (A(K)=B(J)))));
         if (B(I) > Threshold) then
            A(Cur) := B(I);
            Cur := Cur +1;
         end if;
      end loop;
   end Tab_Filter;
end Tab;

