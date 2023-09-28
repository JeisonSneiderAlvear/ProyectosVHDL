library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ALU is
  Port (
    x       : in  std_logic_vector(15 downto 0);
    y       : in  std_logic_vector(15 downto 0);
    zx      : in  std_logic;                     -- Inicializar x en 0
    nx      : in  std_logic;                     -- Negar x
    zy      : in  std_logic;                     -- Inicializar y en 0
    ny      : in  std_logic;                     -- Negar y
    f       : in  std_logic;                     -- Función (1 para suma, 0 para AND)
    no      : in  std_logic;                     -- Negar la salida
    outt    : out std_logic_vector(15 downto 0); -- Salida de 16 bits
    zr, ng  : out std_logic                      -- Salidas zr (cero) y ng (negativo)
  );
end entity;

architecture ALU of ALU is
  signal x_internal, y_internal, out_internal, neg_out : std_logic_vector(15 downto 0);
  signal initialized : boolean := false;
begin
  process(x, y, zx, nx, zy, ny, f, no)
  begin
    if not initialized then
      -- Inicialización de vectores solo una vez
      x_internal <= (others => '0');
      y_internal <= (others => '0');
      out_internal <= (others => '0');
      neg_out <= (others => '0');
      initialized <= true;
    end if;
    
    -- Manipulación de entradas x e y
    if zx = '1' then
      x_internal <= (others => '0');
    elsif nx = '1' then
      x_internal <= not x;
    else
      x_internal <= x;
    end if;
    
    if zy = '1' then
      y_internal <= (others => '0');
    elsif ny = '1' then
      y_internal <= not y;
    else
      y_internal <= y;
    end if;
    
    -- Cálculo de la salida
    if f = '1' then
      out_internal <= (others => '0'); -- Inicializar la salida en 0
      for i in 0 to 15 loop
        if x_internal(i) = '1' or y_internal(i) = '1' then
          out_internal(i) <= '1';
        else
          out_internal(i) <= '0';
        end if;
      end loop;
    else
      out_internal <= x_internal and y_internal;
    end if;
    
    -- Negación de la salida si no = '1'
    if no = '1' then
      neg_out <= not out_internal;
    else
      neg_out <= out_internal;
    end if;
    
    -- Determinación de las señales zr y ng
    if out_internal = (others => '0') then
      zr <= '1';
    else
      zr <= '0';
    end if;
    
    ng <= out_internal(15);
  end process;
  
  -- Asignar la señal negada a la salida
  outt <= neg_out;
  
end architecture;
