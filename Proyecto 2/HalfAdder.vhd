--lIBRERIAS Y PAQUETES
library ieee;
use ieee.std_logic_1164.all;
--entidad
entity HalfAdder is
Port(
a, b: in std_logic;
sum, carry : out std_logic
);
end entity;
--ARQUITECTURA
architecture HalfAdder of HalfAdder is
begin
 sum<= a xor b;
 carry <= a and b;
end architecture;