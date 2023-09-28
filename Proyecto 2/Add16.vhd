-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Add16 is
	port(
		a	:	in 	std_logic_vector(15 downto 0);
		b	:	in 	std_logic_vector(15 downto 0);
		y	:	out	std_logic_vector(15 downto 0);
		carry 	: out std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of Add16 is
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
	
	component FullAdder is
		Port(
		a 	: in std_logic;
		b 	: in std_logic;
		c  : in std_logic;	
		sum 	: out std_logic;
		carry 	: out std_logic
		);
	end component;
begin
	fullAdderPort1:FullAdder Port map(
	a => a(0), 
	b=>b(0), 
	c =>'0', 
	sum => y(0), 
	carry => carry1
	);
	fullAdderPort2:FullAdder Port map(a => a(1) , b=>b(1), c=>carry1, sum=>y(1), carry=>carry2);
	fullAdderPort3:FullAdder Port map(a=>a(2), b=>b(2), c=>carry2, sum=>y(2), carry=>carry3);
	fullAdderPort4:FullAdder Port map(a=>a(3), b=>b(3), c=>carry3, sum=>y(3), carry=>carry4);
	fullAdderPort5:FullAdder Port map(a=>a(4), b=>b(4), c=>carry4, sum=>y(4), carry=>carry5);
	fullAdderPort6:FullAdder Port map(a=>a(5), b=>b(5), c=>carry5, sum=>y(5), carry=>carry6);
	fullAdderPort7:FullAdder Port map(a=>a(6), b=>b(6), c=>carry6, sum=>y(6), carry=>carry7);
	fullAdderPort8:FullAdder Port map(a=>a(7), b=>b(7), c=>carry7, sum=>y(7), carry=>carry8);
	fullAdderPort9:FullAdder Port map(a=>a(8), b=>b(8), c=>carry8, sum=>y(8), carry=>carry9);
	fullAdderPort10:FullAdder Port map(a=>a(9), b=>b(9), c=>carry9, sum=>y(9), carry=>carry10);
	fullAdderPort11:FullAdder Port map(a=>a(10), b=>b(10), c=>carry10, sum=>y(10), carry=>carry11);
	fullAdderPort12:FullAdder Port map(a=>a(11), b=>b(11), c=>carry11, sum=>y(11), carry=>carry12);
	fullAdderPort13:FullAdder Port map(a=>a(12), b=>b(12), c=>carry12, sum=>y(12), carry=>carry13);
	fullAdderPort14:FullAdder Port map(a=>a(13), b=>b(13), c=>carry13, sum=>y(13), carry=>carry14);
	fullAdderPort15:FullAdder Port map(a=>a(14), b=>b(14), c=>carry14, sum=>y(14), carry=>carry15);
	fullAdderPort16:FullAdder Port map(a=>a(15), b=>b(15), c=>carry15, sum=>y(15), carry=>carry);
end architecture;	