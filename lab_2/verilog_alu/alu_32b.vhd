----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:01 01/24/2026 
-- Design Name: 
-- Module Name:    alu_32b - Behavioral 
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
architecture Behavioral of alu_32b is

    signal B_sel      : STD_LOGIC_VECTOR(31 downto 0);
    signal Cin        : STD_LOGIC;
    signal add_result : STD_LOGIC_VECTOR(32 downto 0);

begin

    ------------------------------------------------------------------
    -- Select B input and carry-in for arithmetic operations
    ------------------------------------------------------------------
    process(A, B, M)
    begin
        case M is
            when "000" =>  -- ADD
                B_sel <= B;
                Cin   <= '0';

            when "001" =>  -- SUB
                B_sel <= not B;
                Cin   <= '1';

            when "010" =>  -- INC
                B_sel <= (others => '0');
                Cin   <= '1';

            when "011" =>  -- DEC
                B_sel <= (others => '1');
                Cin   <= '0';

            when others =>
                B_sel <= (others => '0');
                Cin   <= '0';
        end case;
    end process;

    ------------------------------------------------------------------
    -- Shared adder
    ------------------------------------------------------------------
    add_result <= ('0' & A) + ('0' & B_sel) + Cin;

    ------------------------------------------------------------------
    -- Final function selection
    ------------------------------------------------------------------
    process(A, B, M, add_result)
    begin
        case M is
            -- Arithmetic
            when "000" | "001" | "010" | "011" =>
                F  <= add_result(31 downto 0);
                C0 <= add_result(32);

            -- Multiply by 2 (shift left)
            when "100" =>
                F  <= A(30 downto 0) & '0';
                C0 <= A(31);

            -- Divide by 2 (shift right, unsigned)
            when "101" =>
                F  <= '0' & A(31 downto 1);
                C0 <= A(0);

            -- Bitwise AND
            when "110" =>
                F  <= A and B;
                C0 <= '0';

            -- Bitwise OR
            when "111" =>
                F  <= A or B;
                C0 <= '0';

            when others =>
                F  <= (others => '0');
                C0 <= '0';
        end case;
    end process;

end Behavioral;

