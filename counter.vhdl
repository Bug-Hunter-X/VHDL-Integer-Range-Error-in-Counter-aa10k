```vhdl
entity counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  INTEGER range 0 to 15); --This is the problematic line
end entity;

architecture behavioral of counter is
    signal internal_count : INTEGER range 0 to 15 := 0;
begin
    process (clk, rst)
    begin
        if rst = '1' then
            internal_count <= 0;
        elsif rising_edge(clk) then
            internal_count <= internal_count + 1;
        end if;
    end process;
    count <= internal_count;
end architecture;