-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Demux4_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Demux4_test is

	-- Component declaration
	component Demux
		port(
			a    : in  std_logic;
        s1   : in  std_logic;
        s2   : in  std_logic;
        f1   : out std_logic;
        f2   : out std_logic;
        f3   : out std_logic;
        f4   : out std_logic
		);
	end component;
	
	-- Signal declaration
	signal a_test		: std_logic := '0';
	signal s1_test	: std_logic := '0';
	signal s2_test	: std_logic := '0';
	signal f1_test		: std_logic;
	signal f2_test		: std_logic;
	signal f3_test		: std_logic;
	signal f4_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: demux 
		port map (
			a 		=> a_test,
			s1 	=> s1_test,
			s2 	=> s2_test,
			f1 		=> f1_test,
			f2 		=> f2_test,
			f3 		=> f3_test,
			f4 		=> f4_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Demux4"	  
		severity note;
		
		a_test 	<= '0';
		s1_test <= '0';
		s2_test <= '0';
		wait for 1 ns;
		assert f1_test = '0';
		assert f2_test = '0';
		assert f3_test = '0';
		assert f4_test = '0'
		
		  report "Failure for {a,sel} = {0,0}"
		  severity failure;
		  
		a_test 	<= '1';
		s1_test <= '0';
		s2_test <= '0';
		wait for 1 ns;
		assert f1_test = '0';
		assert f2_test = '0';
		assert f3_test = '0';
		assert f4_test = '0'
		  report "Failure for {a,sel} = {1,0}"
		  severity failure;
		
		a_test 	<= '0';
		s1_test <= '1';
		s2_test <= '0';
		wait for 1 ns;
		assert f1_test = '1';
		assert f2_test = '0';
		assert f3_test = '0';
		assert f4_test = '0'
		  report "Failure for {a,sel} = {0,1}"
		  severity failure;
		  
		a_test 	<= '1';
		s1_test <= '1';
		s2_test <= '0';
		wait for 1 ns;
		assert f1_test = '1';
		assert f2_test = '0';
		assert f3_test = '0';
		assert f4_test = '0'
		  report "Failure for {a,sel} = {1,1}"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;