--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity mem_op is
	generic(
				DATA_WIDTH	: positive := 32;
				ADDR_WIDTH	: positive := 27;
				MEM_DEPTH	: std_logic_vector(26 downto 0) := "100000000000000000000000000";
				BASE_ADDR	: std_logic_vector(26 downto 0) := "000000000000000000000000010"
			);
	port	(
				clk			: in std_logic;
				reset		: in std_logic;
				
				wr_en		: in std_logic;	--KEY[0]
				rd_en		: in std_logic; --KEY[1]
				addr_lat	: in std_logic; --KEY[2]
				data_lat	: in std_logic; --KEY[3]
				
				ram_rdy		: in std_logic;
				av1_ready	: in std_logic;
				
				read_data_valid	: in std_logic;
				
				av1_write_req	: out std_logic;
				av1_read_req	: out std_logic;
				
				full		: out std_logic;
				rd_done		: out std_logic;
				
				av1_addr	: out std_logic_vector((ADDR_WIDTH - 1) downto 0);
				wr_data		: out std_logic_vector((DATA_WIDTH - 1) downto 0);
				rd_data		: in std_logic_vector((DATA_WIDTH - 1) downto 0);
				
				SW			: in std_logic_vector(9 downto 0);
				
				LEDR		: out std_logic_vector(9 downto 0)
				--LEDG		: out std_logic_vector(7 downto 0);
			
			);
end mem_op;

--Architecture
architecture logic of mem_op is

constant ASSERT_L		: std_logic := '0';
constant DEASSERT_L	: std_logic := '1';
constant ASSERT_H		: std_logic := '1';
constant DEASSERT_H	: std_logic := '0';


type states is (IDLE, FILL);
signal wr_curr_state : states := IDLE;
type states_rd is (IDLE, READ);
signal rd_curr_state : states_rd := IDLE;

signal mem_rdy				: std_logic := '1';
signal wr_addr				: std_logic_vector((ADDR_WIDTH - 1) downto 0);
signal rd_addr				: std_logic_vector((ADDR_WIDTH - 1) downto 0);
signal data					: std_logic_vector((DATA_WIDTH - 1) downto 0);

begin

process(clk)
begin
	if (data_lat = '0') then	-- I/P is data
		data <= (others => '0');
		data(9 downto 0) <= SW;
	end if;

	if (wr_en = '0') then	-- Write OP
		av1_addr <= wr_addr;
		wr_data <= data;
	end if;

	if (rd_en = '0') then	-- Read OP
		av1_addr <= rd_addr;
	end if;
end process;

process(clk)	--Write
begin
	if rising_edge(clk) then
		if (addr_lat = '0') then	-- I/P is addr
		wr_addr <= (others => '0');
		wr_addr(9 downto 0) <= SW;
		end if;
		
		if (addr_lat = '0') then	-- I/P is addr
		wr_addr <= (others => '0');
		wr_addr(9 downto 0) <= SW;
		end if;
		
		if (reset = '0') then
			wr_curr_state <= IDLE;
			wr_addr <= BASE_ADDR;
			mem_rdy <= ASSERT_H;
			full <= DEASSERT_H;
			av1_write_req <= DEASSERT_H;
		
		elsif (ram_rdy = '1') then
			case(wr_curr_state) is
				when IDLE =>
					if (rd_done = '1') then
						full <= DEASSERT_H;
					end if;
					if ((wr_en = ASSERT_L) and (av1_ready = '1')) then
						wr_curr_state <= FILL;
						av1_write_req <= ASSERT_H;
					else
						wr_curr_state <= IDLE;
						av1_write_req <= DEASSERT_H;
					end if;
				
				when FILL =>
					if (unsigned(wr_addr) = unsigned(BASE_ADDR) + unsigned(MEM_DEPTH) - 1) then
						wr_curr_state <= IDLE;
						wr_addr <= BASE_ADDR;
						av1_write_req <= DEASSERT_H;
						full <= ASSERT_H;
					
					elsif ((wr_en = ASSERT_L) and (av1_ready = '1')) then
						
						wr_curr_state <= FILL;
						av1_write_req <= ASSERT_H;
					
					else
						wr_curr_state <= FILL;
						av1_write_req <= DEASSERT_H;
					end if;
			end case;
		end if;
	end if;
end process;

process(clk)
begin
	if rising_edge(clk) then
		if (addr_lat = '0') then	-- I/P is addr
		rd_addr <= (others => '0');
		rd_addr(9 downto 0) <= SW;
		end if;
		
		if (addr_lat = '0') then	-- I/P is addr
		rd_addr <= (others => '0');
		rd_addr(9 downto 0) <= SW;
		end if;
	
		if (reset = '0') then
			rd_curr_state <= IDLE;
			rd_addr <= BASE_ADDR;
			rd_done <= DEASSERT_H;
			av1_read_req <= DEASSERT_H;
		
		elsif (ram_rdy = '1') then
			case(rd_curr_state) is
				when IDLE =>
					if ((rd_en = ASSERT_L) and (mem_rdy = '1') and
						(wr_en = DEASSERT_L) and (av1_ready = '1')) then
						
						rd_curr_state <= READ;
						av1_read_req <= ASSERT_H;
						rd_done <= DEASSERT_H;
					else
						rd_curr_state <= IDLE;
						av1_read_req <= DEASSERT_H;
						if (wr_en) then
							rd_done <= DEASSERT_H;
						end if;
					end if;
				
				when READ =>
					if (unsigned(rd_addr) = unsigned(BASE_ADDR) + unsigned(MEM_DEPTH) - 1) then
						rd_curr_state <= IDLE;
						rd_addr <= BASE_ADDR;
						av1_read_req <= DEASSERT_H;
						rd_done <= ASSERT_H;
					
					elsif ((rd_en = ASSERT_L) and (wr_en = DEASSERT_L)
							and (av1_ready = '1')) then
						
						rd_curr_state <= READ;
						av1_read_req <= ASSERT_H;
					
					else
						rd_curr_state <= READ;
						av1_read_req <= DEASSERT_H;
					end if;
			end case;
		end if;
	end if;
end process;

process(clk)
begin
	if rising_edge(clk) then
		if (read_data_valid	= '1') then
			LEDR <= rd_data(9 downto 0);
		end if;
	end if;
end process;

end logic;