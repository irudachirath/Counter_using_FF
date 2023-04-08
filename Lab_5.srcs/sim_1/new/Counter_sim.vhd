----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2023 03:08:38 PM
-- Design Name: 
-- Module Name: Counter_sim - Behavioral
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

entity Counter_sim is
--  Port ( );
end Counter_sim;

architecture Behavioral of Counter_sim is

component Counter port(
    Dir : in STD_LOGIC;
    Res : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal dir, res, clk : std_logic;
signal q : std_logic_vector (2 downto 0);

begin

UUT: Counter port map(
    Dir => dir,
    Res => res,
    Clk => clk,
    Q => q);
    
Clock : process 
    begin
        clk <= '0';
        wait for 5ns;
        clk <= '1';
        wait for 5ns;
    end process;

process
begin
    res <= '1';
    dir <= '0';
    WAIT FOR 100 ns;
    
    res <= '0';
    WAIT FOR 500 ns;
    
    dir <= '1';
    WAIT;
end process;

end Behavioral;
