----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:03 10/04/2016 
-- Design Name: 
-- Module Name:    bcd_digit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_digit is
    Port ( clk : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           digit : out  STD_LOGIC_VECTOR (8 downto 0);
           c_out : out  STD_LOGIC);
end bcd_digit;

architecture Behavioral of bcd_digit is

begin


end Behavioral;

