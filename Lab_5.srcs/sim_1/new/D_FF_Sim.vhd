----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 04:22:06 PM
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is

COMPONENT D_FF 
    port(D, Res, Clk : in STD_LOGIC;
         Q, Qbar : out STD_LOGIC);
END COMPONENT;

signal d, res, clk, q, qbar : STD_LOGIC;

begin

UUT: D_FF port map(
    D => d,
    Res => res,
    Clk => clk,
    Q => q,
    Qbar => qbar
);

process
begin
    clk <= '0';
    WAIT FOR 100 ns;
    
    clk <= '1';
    WAIT FOR 100 ns;
    
    d <= '0';
    res <= '0';
    clk <= '0';
    WAIT FOR 100 ns;
    
    clk <= '1';
    WAIT FOR 100 ns;
    
    res <= '1';
    clk <= '0';
    WAIT FOR 100 ns;
    
    clk <= '1';
    WAIT FOR 100 ns;
    
    d <= '1';
    res <= '0';
    clk <= '0';
    WAIT FOR 100 ns;
    
    clk <= '1';
    WAIT FOR 100 ns;
    
    res <= '1';
    clk <= '0';
    WAIT FOR 100 ns;
    
    clk <= '1';
    WAIT FOR 100 ns;
end process;

end Behavioral;
