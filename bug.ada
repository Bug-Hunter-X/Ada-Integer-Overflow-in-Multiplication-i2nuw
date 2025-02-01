```ada
function Multiply(X, Y : Integer) return Integer is
begin
  return X * Y;
end Multiply;

procedure Main is
A, B, C : Integer := 10;
begin
  C := Multiply(A, B);
  Ada.Text_IO.Put_Line("The product is: " & Integer'Image(C));
end Main;
```