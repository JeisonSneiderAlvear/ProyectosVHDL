
-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Mux8Way16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Mux8Way16_test is

	-- Component declaration
	component Mux8Way16
		port(
			a 	: in std_logic_vector(15 downto 0);
			b 	: in std_logic_vector(15 downto 0);
			c 	: in std_logic_vector(15 downto 0);
			d 	: in std_logic_vector(15 downto 0);
			e 	: in std_logic_vector(15 downto 0);
			f 	: in std_logic_vector(15 downto 0);
			g 	: in std_logic_vector(15 downto 0);
			h 	: in std_logic_vector(15 downto 0);
			s1: in std_logic;	
			s2: in std_logic;	
			s3: in std_logic;	
			s4: in std_logic;	
			o1 	: out std_logic_vector(15 downto 0);	
			o2 	: out std_logic_vector(15 downto 0);
			o3 	: out std_logic_vector(15 downto 0);	
			o4 	: out std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
			signal a_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal b_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal c_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal d_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal e_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal f_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal g_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal h_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal s1_test : std_logic := '0';	
			signal s2_test : std_logic := '0';
		   signal s3_test : std_logic := '0';	
			signal s4_test : std_logic := '0';		
			signal o1_test 	: std_logic_vector(15 downto 0);
			signal o2_test 	: std_logic_vector(15 downto 0);
			signal o3_test 	: std_logic_vector(15 downto 0);
			signal o4_test 	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: Mux8Way16
		port map (
			a => a_test,
			b => b_test,
			c => c_test,
			d => d_test,
			e => e_test,
			f => f_test,
			g => g_test,
			h => h_test,
			s1 => s1_test,
			s2 => s2_test,
			s3 => s3_test,
			s4 => s4_test,
			o1 => o1_test,
			o2 => o2_test,
			o3 => o3_test,
			o4 => o4_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of Mux16"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		b_test <= "1111111111111111";
		c_test <= "0000000000000000"; 
		d_test <= "1111111111111111";
		e_test <= "0000000000000000"; 
		f_test <= "1111111111111111";
		g_test <= "0000000000000000"; 
		h_test <= "1111111111111111";
		s1_test <= '0';
		s2_test <= '0';
		s3_test <= '0';
		s4_test <= '0';
		wait for 1 ns;
		assert o1_test = "0000000000000000";
		assert o2_test = "0000000000000000";
		assert o3_test = "0000000000000000";
		assert o4_test = "0000000000000000"
		  report "Failure for a=0000000000000000, b=1111111111111111, sel=0"
		  severity failure;
		  
		a_test <= "0000000000000000"; 
		b_test <= "1111111111111111";
		c_test <= "0000000000000000"; 
		d_test <= "1111111111111111";
		e_test <= "0000000000000000"; 
		f_test <= "1111111111111111";
		g_test <= "0000000000000000"; 
		h_test <= "1111111111111111";
		s1_test <= '1';
		s2_test <= '1';
		s3_test <= '1';
		s4_test <= '1';
		wait for 1 ns;
		assert o1_test = "1111111111111111";
		assert o2_test = "1111111111111111";
		assert o3_test = "1111111111111111";
		assert o4_test = "1111111111111111"
		  report "Failure for a=0000000000000000, b=1111111111111111, sel=1"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;