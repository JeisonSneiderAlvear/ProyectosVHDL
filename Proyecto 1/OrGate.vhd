--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad
entity OrGate is
    Port (
        a, b : in  std_logic; 
        y    : out std_logic
    );
end entity;

--Arquitectura
architecture OrGate_arch of OrGate is
begin
    
    y <= (a and a) nand (b and b);
end architecture;