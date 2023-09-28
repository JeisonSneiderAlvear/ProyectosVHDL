--Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Demux4 is
    Port (
         a    : in  std_logic;
        s1   : in  std_logic;
        s2   : in  std_logic;
        f1   : out std_logic;
        f2   : out std_logic;
        f3   : out std_logic;
        f4   : out std_logic
    );
end entity;

-- Arquitectura del demultiplexor
architecture arch of Demux4 is
begin
    f1 <= a and (not s2) and (not s1);
    f2 <= a and (not s2) and s1;
    f3 <= a and s2 and (not s1);
    f4 <= a and s2 and s1;
end architecture;
