
-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Demux is
    Port (
         a    : in  std_logic;
        sel   : in  std_logic;
        f1   : out std_logic;
        f2   : out std_logic

    );
end entity;

-- Arquitectura del demultiplexor
architecture arch of Demux is
begin
    f1 <= a and (not sel);
    f2 <= a and sel;
end architecture;
