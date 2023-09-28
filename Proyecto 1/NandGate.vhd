
--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

--Entidad
entity NandGate is
Port( a : in std_logic;b : in std_logic;
y : out std_logic);
end entity;
--Arquitectura
architecture NandGate_arch of NandGate is
begin
y <= a nand b;

end architecture;