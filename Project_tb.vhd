library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Project_tb is

end entity;

Architecture sim of Project_tb is
	component Project
		port(T, L, CLK, reset : in std_logic;
		M : in std_logic_vector (2 downto 0);
		ConvertState : out std_logic_vector(1 downto 0);
		Temperature : out std_logic;
		Moisture : out std_logic_vector (2 downto 0);
		Light : out std_logic);
	end component;
	
	-- input signal
	Signal T : std_logic := '0';
	Signal L : std_logic := '0';
	Signal CLK : std_logic := '0';
	signal reset : std_logic := '0';
	Signal M : std_logic_vector( 2 downto 0) := "000";
	

	-- output signal
	Signal ConvertState : std_logic_vector(1 downto 0) := "00";
	Signal Temperature : std_logic := '0';
	Signal Moisture : std_logic_vector (2 downto 0) := "000";
	Signal Light : std_logic := '0';
	
begin
tb : Project Port map (
	T => T,
	L => L,
	CLK => CLK,
	reset => reset,
	M => M,
	ConvertState => ConvertState,
	Temperature => Temperature,
	Moisture => Moisture,
	Light => Light );

	

	process
	begin
		wait for 100 ns;
		T <= '0';
		L <= '0';
		M <= "000";

		wait for 10 ns;
		T <= '1';
		L <= '0';
		M <= "000";	
		
		wait for 10 ns;
	
		T <= '0';
		L <= '1';
		M <= "000";	
		wait for 10 ns;

		T <= '1';
		L <= '1';
		M <= "000";
		
		wait for 10 ns;

		T <= '0';
		L <= '0';
		M <= "001";
		
		wait for 10 ns;

		T <= '0';
		L <= '1';
		M <= "001";

		wait for 10 ns;

		T <= '1';
		L <= '1';
		M <= "001";

		wait for 10 ns;

		T <= '0';
		L <= '0';
		M <= "010";
		
		wait for 10 ns;

		T <= '0';
		L <= '1';
		M <= "010";
		
		wait for 10 ns;

		T <= '1';
		L <= '0';
		M <= "010";

		wait for 10 ns;

		T <= '1';
		L <= '1';
		M <= "010";

		wait for 10 ns;

		T <= '0';
		L <= '0';
		M <= "011";

		wait for 10 ns;

		T <= '0';
		L <= '1';
		M <= "011";

		wait for 10 ns;

		T <= '1';
		L <= '0';
		M <= "011";
		
		wait for 10 ns;

		T <= '1';
		L <= '1';
		M <= "011";
		wait for 10 ns;


		T <= '0';
		L <= '0';
		M <= "100";
		
		wait for 10 ns;

		T <= '0';
		L <= '1';
		M <= "100";

		wait for 10 ns;

		T <= '1';
		L <= '0';
		M <= "100";

		wait for 10 ns;

		T <= '1';
		L <= '1';
		M <= "100";

		wait for 10 ns;


		T <= '0';
		L <= '0';
		M <= "101";
		
		T <= '0';
		L <= '0';
		M <= "110";
		wait for 10 ns;

		T <= '0';
		L <= '1';
		M <= "110";
		wait for 10 ns;

		T <= '1';
		L <= '0';
		M <= "110";
		wait for 10 ns;

		T <= '1';
		L <= '1';
		M <= "110";
		wait for 10 ns;

		T <= '0';
		L <= '0';
		M <= "111";
		wait for 10 ns;
		
		T <= '0';
		L <= '1';
		M <= "111";
		wait for 10 ns;

		T <= '1';
		L <= '0';
		M <= "111";
		wait for 10 ns;

		T <= '1';
		L <= '1';
		M <= "111";
		wait for 10 ns;

		
		T <= '1';
		L <= '1';
		M <= "111";
		wait for 10 ns;

		


	end process;
end Architecture;

	
	

