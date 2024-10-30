program Ejercicio1;

var
	total, menores, v: integer;
	porcentaje: real;
	archivo: text;

begin
	total := 0;
	menores := 0;

	assign(archivo, 'problema31.txt');
	reset(archivo);

	while not eof(archivo) do
	begin
		readln(archivo, v);
		total := total + 1;
		if (v <= 14) then
		begin
			menores := menores + 1;
		end;
	end;

	if total > 0 then
		porcentaje := (menores / total) * 100
	else
		porcentaje := 0;

	writeln(porcentaje:0:2);

	close(archivo);
end.
