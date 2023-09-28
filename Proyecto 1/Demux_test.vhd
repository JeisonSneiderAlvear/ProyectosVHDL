-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Demux_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Demux_test is

	-- Component declaration
	component Demux
		port(
			a    : in  std_logic;
        sel   : in  std_logic;
        f1   : out std_logic;
        f2   : out std_logic
		);
	end component;
	
	-- Signal declaration
	signal a_test		: std_logic := '0';
	signal sel_test	: std_logic := '0';
	signal f1_test		: std_logic;
	signal f2_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: demux 
		port map (
			a 		=> a_test,
			sel 	=> sel_test,
			f1 		=> f1_test,
			f2 		=> f2_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Mux"	  
		severity note;
		
		a_test 	<= '0';
		sel_test <= '0';
		wait for 1 ns;
		assert f1_test = '0';
		assert f2_test = '0'
		  report "Failure for {a,sel} = {0,0}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert f1_test = '0';
		assert f2_test = '0'
		  report "Failure for {a,sel} = {1,0}"
		  severity failure;
		
		a_test 	<= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert f1_test = '1';
		assert f2_test = '0'
		  report "Failure for {a,sel} = {0,1}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert f1_test = '1';
		assert f2_test = '0'
		  report "Failure for {a,sel} = {1,1}"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;