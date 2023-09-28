--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad
entity XorGate_test is	
end entity;

--Arquitectura
architecture arch_test of XorGate_test is

	component XorGate
		port(
			a	:	in 	std_logic;
			b	:	in 	std_logic;
			y	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal a_test	: std_logic := '0';
	signal b_test	: std_logic := '0';
	signal y_test	: std_logic;
	
	begin
	dut1	: XorGate 
		port map (
			a => a_test,
			b => b_test,
			y => y_test
		);


	Stimulus	: process
	begin
	  
	  report "Start of the test of XorGate"	  
		severity note;
		
		a_test <= '0'; 
		wait for 1 ns;
		b_test <= '0'; 
		wait for 1 ns;
		assert y_test = '0'
		  report "Falla para a = 0, b = 0"
		  severity failure;
		  
		a_test <= '0'; 
		wait for 5 ns;
		b_test <= '1'; 
		wait for 5 ns;
		assert y_test = '1'
		  report "Falla para a = 0, b = 1"
		  severity failure;
		
		a_test <= '1'; 
		wait for 10 ns;
		b_test <= '0'; 
		wait for 10 ns;
		assert y_test = '1'
		  report "Falla para a = 1, b = 0"
		  severity failure;
		  
		a_test <= '1'; 
		wait for 15 ns;
		b_test <= '1'; 
		wait for 15 ns;
		assert y_test = '0'
		  report "Falla para a = 1, b = 1"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;