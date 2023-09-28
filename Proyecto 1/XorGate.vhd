--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad
entity XorGate is
    Port (
        a, b : in  std_logic; 
        y    : out std_logic
    );
end entity;

--Arquitectura
architecture XorGate_arch of XorGate is
begin
    -- Logic for the OR gate
    Y <= a Xor b;
end architecture;