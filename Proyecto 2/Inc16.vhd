-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Inc16 is
	port(
		a	:	in 	std_logic_vector(15 downto 0);
		y	:	out	std_logic_vector(15 downto 0);
		carry 	: out std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of Inc16 is
	signal carry1 : std_logic;
	signal carry2 : std_logic;
	signal carry3 : std_logic;
	signal carry4 : std_logic;
	signal carry5 : std_logic;
	signal carry6 : std_logic;
	signal carry7 : std_logic;
	signal carry8 : std_logic;
	signal carry9 : std_logic;
	signal carry10 : std_logic;
	signal carry11 : std_logic;
	signal carry12 : std_logic;
	signal carry13 : std_logic;
	signal carry14 : std_logic;
	signal carry15 : std_logic;
	
	component HalfAdder is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			sum:	out	std_logic;
			carry	:	out	std_logic
		);
	end component;
begin
	halfAdder0: HalfAdder Port map(a => a(0) , b=>'1', sum=>y(0), carry=>carry1);
	halfAdder1: HalfAdder Port map(a => a(1) , b=>carry1, sum=>y(1), carry=>carry2);
	halfAdder2: HalfAdder Port map(a=>a(2), b=>carry2, sum=>y(2), carry=>carry3);
	halfAdder3: HalfAdder Port map(a=>a(3), b=>carry3, sum=>y(3), carry=>carry4);
	halfAdder4: HalfAdder Port map(a=>a(4), b=>carry4, sum=>y(4), carry=>carry5);
	halfAdder5: HalfAdder Port map(a=>a(5), b=>carry5, sum=>y(5), carry=>carry6);
	halfAdder6: HalfAdder Port map(a=>a(6), b=>carry6, sum=>y(6), carry=>carry7);
	halfAdder7: HalfAdder Port map(a=>a(7), b=>carry7, sum=>y(7), carry=>carry8);
	halfAdder8: HalfAdder Port map(a=>a(8), b=>carry8, sum=>y(8), carry=>carry9);
	halfAdder9: HalfAdder Port map(a=>a(9), b=>carry9, sum=>y(9), carry=>carry10);
	halfAdder10: HalfAdder Port map(a=>a(10), b=>carry10, sum=>y(10), carry=>carry11);
	halfAdder11: HalfAdder Port map(a=>a(11), b=>carry11, sum=>y(11), carry=>carry12);
	halfAdder12: HalfAdder Port map(a=>a(12), b=>carry12, sum=>y(12), carry=>carry13);
	halfAdder13: HalfAdder Port map(a=>a(13), b=>carry13, sum=>y(13), carry=>carry14);
	halfAdder14: HalfAdder Port map(a=>a(14), b=>carry14, sum=>y(14), carry=>carry15);
	halfAdder15: HalfAdder Port map(a=>a(15), b=>carry15, sum=>y(15), carry=>carry);
end architecture;	