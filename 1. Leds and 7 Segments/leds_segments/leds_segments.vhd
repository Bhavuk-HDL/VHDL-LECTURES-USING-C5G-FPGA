-- Code for using different clocks of the Cyclone V
-- A clock for Leds and one for the Seven Segment Display

-- Libraries declaration
library IEEE;
use IEEE.std_logic_1164.all;


-- Entities declaration
entity leds_segments is
port(
		clk_led : in std_logic;
		LEDG0 : out std_logic;
		LEDG1 : out std_logic;
		LEDG2 : out std_logic;
		LEDG3 : out std_logic;
		LEDG4 : out std_logic;
		LEDG5 : out std_logic;
		LEDG6 : out std_logic;
		LEDG7 : out std_logic;
		LEDR0 : out std_logic;
		LEDR1 : out std_logic;
		LEDR2 : out std_logic;
		LEDR3 : out std_logic;
		LEDR4 : out std_logic;
		LEDR5 : out std_logic;
		LEDR6 : out std_logic;
		LEDR7 : out std_logic;
		LEDR8 : out std_logic;
		LEDR9 : out std_logic;
		
		clk_segment : in std_logic;
		segment0 : inout std_logic_vector(0 to 6) := "0000001";
		segment1 : inout std_logic_vector(0 to 6) := "0000001";
		segment2 : inout std_logic_vector(0 to 6) := "0000001";
		segment3 : inout std_logic_vector(0 to 6) := "0000001");
end leds_segments;

-- Architectures declaration
architecture leds_segments_arc of leds_segments is
	signal status1 : std_logic := '0';
	signal status2 : std_logic := '0';
	
	signal one : std_logic := '0';
	signal two : std_logic := '0';
	signal three : std_logic := '0';
	signal initilizer : std_logic := '1';
	
begin
	process (clk_led)
		variable count : integer range 0 to 50000000 := 0;
		begin
			if (rising_edge(clk_led)) and (clk_led = '1' ) then
				if count = 24999999 then
					status1 <= not status1;
					LEDG0 <= status1;
					LEDG2 <= status1;
					LEDG4 <= status1;
					LEDG6 <= status1;
					LEDR0 <= status1;
					LEDR2 <= status1;
					LEDR4 <= status1;
					LEDR6 <= status1;
					LEDR8 <= status1;
					count := count + 1;
				elsif count = 49999999 then
					status2 <= not status2;
					LEDG1 <= status2;
					LEDG3 <= status2;
					LEDG5 <= status2;
					LEDG7 <= status2;
					LEDR1 <= status2;
					LEDR3 <= status2;
					LEDR5 <= status2;
					LEDR7 <= status2;
					LEDR9 <= status2;
					count := 0;
				else
					count := count + 1;
				end if;
			end if;
	end process;
	
	process (clk_segment)
		variable count : integer range 0 to 125000000 :=0;
		begin
			if (rising_edge(clk_segment)) and (clk_segment = '1') then
				if count = 62499999 then
					count := 0;
					
					if segment0 = "0000000" then
						one <= '1';
					end if;
					if (segment1 = "0000100") and (segment0 = "0000000") then
						two <= '1';
					end if;
					if (segment2 = "0000100") and (segment1 = "0000100") and (segment0 = "0000000") then
						three <= '1';
					end if;
					
					case(segment0) is
					when "0000001" => segment0 <= "1001111";
					when "1001111" => segment0 <= "0010010";
					when "0010010" => segment0 <= "0000110";
					when "0000110" => segment0 <= "1001100";
					when "1001100" => segment0 <= "0100100";
					when "0100100" => segment0 <= "0100000";
					when "0100000" => segment0 <= "0001111";
					when "0001111" => segment0 <= "0000000";
					when "0000000" => segment0 <= "0000100";
					when "0000100" => segment0 <= "0000001";
					when others => segment0 <= "0000001";
					end case;
					
					
					if one = '1' then
						case(segment1) is
						when "0000001" => segment1 <= "1001111";
						when "1001111" => segment1 <= "0010010";
						when "0010010" => segment1 <= "0000110";
						when "0000110" => segment1 <= "1001100";
						when "1001100" => segment1 <= "0100100";
						when "0100100" => segment1 <= "0100000";
						when "0100000" => segment1 <= "0001111";
						when "0001111" => segment1 <= "0000000";
						when "0000000" => segment1 <= "0000100";
						when "0000100" => segment1 <= "0000001";
						when others => segment1 <= "0000001";
						end case;
						one <= '0';
					end if;
					
					
						
					if two = '1' then
						case(segment2) is
						when "0000001" => segment2 <= "1001111";
						when "1001111" => segment2 <= "0010010";
						when "0010010" => segment2 <= "0000110";
						when "0000110" => segment2 <= "1001100";
						when "1001100" => segment2 <= "0100100";
						when "0100100" => segment2 <= "0100000";
						when "0100000" => segment2 <= "0001111";
						when "0001111" => segment2 <= "0000000";
						when "0000000" => segment2 <= "0000100";
						when "0000100" => segment2 <= "0000001";
						when others => segment2 <= "0000001";
						end case;
						two <= '0';
					end if;
					
					
					
					if three = '1' then
						case(segment3) is
						when "0000001" => segment3 <= "1001111";
						when "1001111" => segment3 <= "0010010";
						when "0010010" => segment3 <= "0000110";
						when "0000110" => segment3 <= "1001100";
						when "1001100" => segment3 <= "0100100";
						when "0100100" => segment3 <= "0100000";
						when "0100000" => segment3 <= "0001111";
						when "0001111" => segment3 <= "0000000";
						when "0000000" => segment3 <= "0000100";
						when "0000100" => segment3 <= "0000001";
						when others => segment3 <= "0000001";
						end case;
						three <= '0';
					end if;
				
				elsif initilizer = '1' then
					initilizer <= '0';
					segment0 <= "0000001";
					segment1 <= "0000001";
					segment2 <= "0000001";
					segment3 <= "0000001";					
				
				else
					count := count + 1;
				end if;
			end if;
	end process;

end leds_segments_arc;