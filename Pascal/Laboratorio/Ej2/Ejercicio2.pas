program Ejercicio2;
uses
	SysUtils, Classes;

var
	archivo: TextFile;
	linea: string;
	edad: integer;
	piePreferido: string;
	contador: integer;

begin
  contador := 0;
  AssignFile(archivo, 'fifa_players.csv');
  Reset(archivo);

  ReadLn(archivo, linea);

  while not EOF(archivo) do
  begin
    ReadLn(archivo, linea);
    edad := StrToIntDef(ExtractWord(4, linea, [';']), 0);
    piePreferido := ExtractWord(8, linea, [';']);

    // Verificar si el jugador es mayor de 29 y tiene pie derecho
    if (edad > 29) and (piePreferido = 'Right') then
      Inc(contador);
  end;

  CloseFile(archivo);
  WriteLn('Total de jugadores mayores de 29 con pie derecho: ', contador);
end.
