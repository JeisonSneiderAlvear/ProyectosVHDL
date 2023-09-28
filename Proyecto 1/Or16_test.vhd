--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad
entity Or16_test is	
end entity;

--Arquitectura
architecture arch_test of Or16_test is

	component Or16
		port(
			a	:	in 	std_logic_vector(15 downto 0);
			b	:	in 	std_logic_vector(15 downto 0);
			y	:	out	std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
	signal a_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal b_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal y_test	: std_logic_vector(15 downto 0);
	
	begin
	dut1	: Or16 
		port map (
			a => a_test,
			b => b_test,
			y => y_test
		);

	Stimulus	: process
	begin
	  
	  report "Start of the test of OrGate"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		wait for 1 ns;
		b_test <= "0000000000000000"; 
		wait for 1 ns;
		assert y_test = "0000000000000000"
		  report "Falla para a = 0000000000000000, b = 0000000000000000"
		  severity failure;
		  
		a_test <= "0000000000000000"; 
		wait for 5 ns;
		b_test <= "1111111111111111"; 
		wait for 5 ns;
		assert y_test = "1111111111111111"
		  report "Falla para a = 0000000000000000, b = 1111111111111111"
		  severity failure;
		
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;