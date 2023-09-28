-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entidad
entity Or16 is
    Port (
        a, b : in  std_logic_vector(15 downto 0); 
        y    : out std_logic_vector(15 downto 0)
    );
end entity;

-- arquitectura
architecture OrGate_arch of Or16 is

begin
    y(0) <= a(0) or b(0);
	 y(1) <= a(1) or b(1);
	 y(2) <= a(2) or b(2);
	 y(3) <= a(3) or b(3);
	 y(4) <= a(4) or b(4);
	 y(5) <= a(5) or b(5);
	 y(6) <= a(6) or b(6);
	 y(7) <= a(7) or b(7);
	 y(8) <= a(8) or b(8);
	 y(9) <= a(9) or b(9);
	 y(10) <= a(10) or b(10);
	 y(11) <= a(11) or b(11);
	 y(12) <= a(12) or b(12);
	 y(13) <= a(13) or b(13);
	 y(14) <= a(14) or b(14);
	 y(15) <= a(15) or b(15);
end architecture;