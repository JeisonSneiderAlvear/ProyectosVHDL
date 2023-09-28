
-- Library and packages
library ieee;
use ieee.std_logic_1164.all;


entity Mux8Way16 is
	Port(
		a , b, c, d	: in std_logic_vector(15 downto 0);
		e , f, g, h	: in std_logic_vector(15 downto 0);
		s1, s2, s3, s4 : in std_logic;	
		o1, o2, o3, o4 : out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux8Way16 is
	component Mux is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			c	:	in 	std_logic;
			d	:	in		std_logic;
			e	:	in 	std_logic;
			f	:	in		std_logic;
			g	:	in 	std_logic;
			h	:	in		std_logic;
			s1:	in 	std_logic;
			s2:	in 	std_logic;
			s3:	in 	std_logic;
			s4:	in 	std_logic;
			o1	:	out	std_logic;
			o2	:	out	std_logic;
			o3	:	out	std_logic;
			o4	:	out	std_logic
		);
	end component;
begin
	mux15: Mux
		Port map(
			a => a(15),
			b => b(15),
			c => c(15),
			d => d(15),
			e => e(15),
			f => f(15),
			g => g(15),
			h => h(15),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(15),
			o2 => o2(15),
			o3 => o3(15),
			o4 => o4(15)
		);
	mux14: Mux
		Port map(
			a => a(14),
			b => b(14),
			c => c(14),
			d => d(14),
			e => e(14),
			f => f(14),
			g => g(14),
			h => h(14),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(14),
			o2 => o2(14),
			o3 => o3(14),
			o4 => o4(14)
		);
	mux13: Mux
		Port map(
			a => a(13),
			b => b(13),
			c => c(13),
			d => d(13),
			e => e(13),
			f => f(13),
			g => g(13),
			h => h(13),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(13),
			o2 => o2(13),
			o3 => o3(13),
			o4 => o4(13)
		);
	mux12: Mux
		Port map(
			a => a(12),
			b => b(12),
			c => c(12),
			d => d(12),
			e => e(12),
			f => f(12),
			g => g(12),
			h => h(12),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(12),
			o2 => o2(12),
			o3 => o3(12),
			o4 => o4(12)
		);
	mux11: Mux
		Port map(
			a => a(11),
			b => b(11),
			c => c(11),
			d => d(11),
			e => e(11),
			f => f(11),
			g => g(11),
			h => h(11),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(11),
			o2 => o2(11),
			o3 => o3(11),
			o4 => o4(11)
		);
	mux10: Mux
		Port map(
			a => a(10),
			b => b(10),
			c => c(10),
			d => d(10),
			e => e(10),
			f => f(10),
			g => g(10),
			h => h(10),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(10),
			o2 => o2(10),
			o3 => o3(10),
			o4 => o4(10)
		);
	mux9: Mux
		Port map(
			a => a(9),
			b => b(9),
			c => c(9),
			d => d(9),
			e => e(9),
			f => f(9),
			g => g(9),
			h => h(9),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(9),
			o2 => o2(9),
			o3 => o3(9),
			o4 => o4(9)
		);
	mux8: Mux
		Port map(
			a => a(8),
			b => b(8),
			c => c(8),
			d => d(8),
			e => e(8),
			f => f(8),
			g => g(8),
			h => h(8),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(8),
			o2 => o2(8),
			o3 => o3(8),
			o4 => o4(8)
		);
	mux7: Mux
		Port map(
			a => a(7),
			b => b(7),
			c => c(7),
			d => d(7),
			e => e(7),
			f => f(7),
			g => g(7),
			h => h(7),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(7),
			o2 => o2(7),
			o3 => o3(7),
			o4 => o4(7)
		);
	mux6: Mux
		Port map(
			a => a(6),
			b => b(6),
			c => c(6),
			d => d(6),
			e => e(6),
			f => f(6),
			g => g(6),
			h => h(6),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(6),
			o2 => o2(6),
			o3 => o3(6),
			o4 => o4(6)
		);
	mux5: Mux
		Port map(
			a => a(5),
			b => b(5),
			c => c(5),
			d => d(5),
			e => e(5),
			f => f(5),
			g => g(5),
			h => h(5),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(5),
			o2 => o2(5),
			o3 => o3(5),
			o4 => o4(5)
		);
	mux4: Mux
		Port map(
			a => a(4),
			b => b(4),
			c => c(4),
			d => d(4),
			e => e(4),
			f => f(4),
			g => g(4),
			h => h(4),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(4),
			o2 => o2(4),
			o3 => o3(4),
			o4 => o4(4)
		);
	mux3: Mux
		Port map(
			a => a(3),
			b => b(3),
			c => c(3),
			d => d(3),
			e => e(3),
			f => f(3),
			g => g(3),
			h => h(3),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(3),
			o2 => o2(3),
			o3 => o3(3),
			o4 => o4(3)
		);
	mux2: Mux
		Port map(
			a => a(2),
			b => b(2),
			c => c(2),
			d => d(2),
			e => e(2),
			f => f(2),
			g => g(2),
			h => h(2),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(2),
			o2 => o2(2),
			o3 => o3(2),
			o4 => o4(2)
		);
	mux1: Mux
		Port map(
			a => a(1),
			b => b(1),
			c => c(1),
			d => d(1),
			e => e(1),
			f => f(1),
			g => g(1),
			h => h(1),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(1),
			o2 => o2(1),
			o3 => o3(1),
			o4 => o4(1)
		);
	mux0: Mux
		Port map(
			a => a(0),
			b => b(0),
			c => c(0),
			d => d(0),
			e => e(0),
			f => f(0),
			g => g(0),
			h => h(0),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			s4 => s4,
			o1 => o1(0),
			o2 => o2(0),
			o3 => o3(0),
			o4 => o4(0)
		);

end architecture;