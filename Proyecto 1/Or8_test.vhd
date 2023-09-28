--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad
entity Or8_test is	
end entity;

--Arquitectura
architecture arch_test of Or8_test is

	component OrGate
		port(
			a	:	in 	std_logic;
			b	:	in 	std_logic;
			c	:	in 	std_logic;
			d	:	in 	std_logic;
			e	:	in 	std_logic;
			f	:	in 	std_logic;
			g	:	in 	std_logic;
			h	:	in 	std_logic;
			y	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal a_test	: std_logic := '0';
	signal b_test	: std_logic := '0';
	signal c_test	: std_logic := '0';
	signal d_test	: std_logic := '0';
	signal e_test	: std_logic := '0';
	signal f_test	: std_logic := '0';
	signal g_test	: std_logic := '0';
	signal h_test	: std_logic := '0';
	signal y_test	: std_logic;
	
	begin
	dut1	: OrGate 
		port map (
			a => a_test,
			b => b_test,
			c => c_test,
			d => d_test,
			e => e_test,
			f => f_test,
			g => g_test,
			h => h_test,
			y => y_test
		);


	Stimulus	: process
	begin
	  
	  report "Start of the test of OrGate"	  
		severity note;
		
		a_test <= '0'; 
		b_test <= '0'; 
		c_test <= '0'; 
		d_test <= '0';
		e_test <= '0'; 
		f_test <= '0';
		g_test <= '0'; 
		h_test <= '0';
		wait for 1 ns;
		assert y_test = '0'
		  report "Falla para a = 0, b = 0"
		  severity failure;
		  
		a_test <= '0'; 
		b_test <= '1';
	   c_test <= '0'; 
		d_test <= '0';
		e_test <= '0'; 
		f_test <= '0';
		g_test <= '0'; 
		h_test <= '0';	
		wait for 5 ns;
		assert y_test = '1'
		  report "Falla para a = 0, b = 1"
		  severity failure;
		
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;