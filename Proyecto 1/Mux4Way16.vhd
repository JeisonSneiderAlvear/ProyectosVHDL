
-- Library and packages
library ieee;
use ieee.std_logic_1164.all;


entity Mux4Way16 is
	Port(
		a , b, c, d	: in std_logic_vector(15 downto 0);
		s1: in std_logic;	
		s2: in std_logic;
		o1 	: out std_logic_vector(15 downto 0);
		o2 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux4Way16 is
	component Mux is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			c	:	in 	std_logic;
			d	:	in		std_logic;
			s1:	in 	std_logic;
			s2:	in 	std_logic;
			o1	:	out	std_logic;
			o2	:	out	std_logic
		);
	end component;
begin
	mux15: Mux
		Port map(
			a => a(15),
			b => b(15),
			c => c(15),
			d => d(15),
			s1 => s1,
			s2 => s2,
			o1 => o1(15),
			o2 => o2(15)
		);
	mux14: Mux
		Port map(
			a => a(14),
			b => b(14),
			c => c(14),
			d => d(14),
			s1 => s1,
			s2 => s2,
			o1 => o1(14),
			o2 => o2(14)
		);
	mux13: Mux
		Port map(
			a => a(13),
			b => b(13),
			c => c(13),
			d => d(13),
			s1 => s1,
			s2 => s2,
			o1 => o1(13),
			o2 => o2(13)
		);
	mux12: Mux
		Port map(
			a => a(12),
			b => b(12),
			c => c(12),
			d => d(12),
			s1 => s1,
			s2 => s2,
			o1 => o1(12),
			o2 => o2(12)
		);
	mux11: Mux
		Port map(
			a => a(11),
			b => b(11),
			c => c(11),
			d => d(11),
			s1 => s1,
			s2 => s2,
			o1 => o1(11),
			o2 => o2(11)
		);
	mux10: Mux
		Port map(
			a => a(10),
			b => b(10),
			c => c(10),
			d => d(10),
			s1 => s1,
			s2 => s2,
			o1 => o1(10),
			o2 => o2(10)
		);
	mux9: Mux
		Port map(
			a => a(9),
			b => b(9),
			c => c(9),
			d => d(9),
			s1 => s1,
			s2 => s2,
			o1 => o1(9),
			o2 => o2(9)
		);
	mux8: Mux
		Port map(
			a => a(8),
			b => b(8),
			c => c(8),
			d => d(8),
			s1 => s1,
			s2 => s2,
			o1 => o1(8),
			o2 => o2(8)
		);
	mux7: Mux
		Port map(
			a => a(7),
			b => b(7),
			c => c(7),
			d => d(7),
			s1 => s1,
			s2 => s2,
			o1 => o1(7),
			o2 => o2(7)
		);
	mux6: Mux
		Port map(
			a => a(6),
			b => b(6),
			c => c(6),
			d => d(6),
			s1 => s1,
			s2 => s2,
			o1 => o1(6),
			o2 => o2(6)
		);
	mux5: Mux
		Port map(
			a => a(5),
			b => b(5),
			c => c(5),
			d => d(5),
			s1 => s1,
			s2 => s2,
			o1 => o1(5),
			o2 => o2(5)
		);
	mux4: Mux
		Port map(
			a => a(4),
			b => b(4),
			c => c(4),
			d => d(4),
			s1 => s1,
			s2 => s2,
			o1 => o1(4),
			o2 => o2(4)
		);
	mux3: Mux
		Port map(
			a => a(3),
			b => b(3),
			c => c(3),
			d => d(3),
			s1 => s1,
			s2 => s2,
			o1 => o1(3),
			o2 => o2(3)
		);
	mux2: Mux
		Port map(
			a => a(2),
			b => b(2),
			c => c(2),
			d => d(2),
			s1 => s1,
			s2 => s2,
			o1 => o1(2),
			o2 => o2(2)
		);
	mux1: Mux
		Port map(
			a => a(1),
			b => b(1),
			c => c(1),
			d => d(1),
			s1 => s1,
			s2 => s2,
			o1 => o1(1),
			o2 => o2(1)
		);
	mux0: Mux
		Port map(
			a => a(0),
			b => b(0),
			c => c(0),
			d => d(0),
			s1 => s1,
			s2 => s2,
			o1 => o1(0),
			o2 => o2(0)
		);

end architecture;