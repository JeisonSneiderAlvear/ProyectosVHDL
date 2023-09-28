library	IEEE;
use IEEE.std_logic_1164.all;

-- Entidad
entity Or8 is
    Port (
        a, b, c, d : in  std_logic; 
		  e, f, g, h : in  std_logic; 
        y    : out std_logic
    );
end entity;

-- arquitectura
architecture OrGate_arch of Or8 is
begin
	 y <= not (a and b and c and d and e and f and g and h);

end architecture;