```ada
function Multiply(X, Y : Integer) return Integer is
   Result : Integer;
begin
   if (X > 0 and Y > Integer'Last / X) or (X < 0 and Y < Integer'Last / X) then
      raise Constraint_Error;
   elsif (X > 0 and Y < Integer'First / X) or (X < 0 and Y > Integer'First / X) then
      raise Constraint_Error;
   else
      Result := X * Y;
   end if;
   return Result;
end Multiply;

procedure Main is
A, B, C : Integer := 10;
begin
  C := Multiply(A, B);
  Ada.Text_IO.Put_Line("The product is: " & Integer'Image(C));
  exception
     when Constraint_Error =>
       Ada.Text_IO.Put_Line("Integer overflow occurred");
end Main;
```