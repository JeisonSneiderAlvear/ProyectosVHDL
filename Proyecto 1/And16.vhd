
--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

--Entidad
entity And16 is
Port( a : in std_logic_vector(15 downto 0);
      b : in std_logic_vector(15 downto 0);
      y : out std_logic_vector(15 downto 0));
end entity;
--Arquitectura
architecture AndGate_arch of And16 is
signal x :std_logic_vector(15 downto 0);
begin
x(0) <= a(0) nand b(0);
x(1) <= a(1) nand b(1);
x(2) <= a(2) nand b(2);
x(3) <= a(3) nand b(3);
x(4) <= a(4) nand b(4);
x(5) <= a(5) nand b(5);
x(6) <= a(6) nand b(6);
x(7) <= a(7) nand b(7);
x(8) <= a(8) nand b(8);
x(9) <= a(9) nand b(9);
x(10) <= a(10) nand b(10);
x(11) <= a(11) nand b(11);
x(12) <= a(12) nand b(12);
x(13) <= a(13) nand b(13);
x(14) <= a(14) nand b(14);
x(15) <= a(15) nand b(15);
y(0) <= not x(0);
y(1) <= not x(1);
y(2) <= not x(2);
y(3) <= not x(3);
y(4) <= not x(4);
y(5) <= not x(5);
y(6) <= not x(6);
y(7) <= not x(7);
y(8) <= not x(8);
y(9) <= not x(9);
y(10) <= not x(10);
y(11) <= not x(11);
y(12) <= not x(12);
y(13) <= not x(13);
y(14) <= not x(14);
y(15) <= not x(15);

end architecture;