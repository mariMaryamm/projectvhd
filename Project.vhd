library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Project is
	port(T, L, CLK, reset : in std_logic;
		M : in std_logic_vector (2 downto 0);
		ConvertState : out std_logic_vector(1 downto 0);
		Temperature : out std_logic;
		Moisture : out std_logic_vector (2 downto 0);
		Light : out std_logic);
	
end Project;


Architecture sim of Project is

	Type state is (ST0, ST1);
	Signal PresentState : state;
	Signal NextState : state;

	

begin
	process( CLK , reset , NextState)
	begin

		if ( reset = '1' ) then
			PresentState <= ST0;
		elsif CLK = '1' then
			PresentState <= NextState;
		end if;
	end process;
		
	process(T, L, M, PresentState)
	begin
		case PresentState is
			when ST0 =>
				if ( T = '1' or L = '1') and ( M <= "001") then
					NextState <= ST1;
					Temperature <= T;
					Light <= L;
					Moisture <= M;
				elsif ( T = '0' and L = '0') and (  M <= "011") then
					NextState <= ST1;
					Temperature <= T;
					Light <= L;
					Moisture <= M;
				else
					NextState <= ST0;
					Temperature <= T;
					Light <= L;
					Moisture <= M;
				end if;
			when ST1 =>
				if ( M >= "111") then
					NextState <= ST0;
					Temperature <= T;
					Light <= L;
					Moisture <= M;
				elsif ( T = '1' or L = '1') and (M >= "011") then
					NextState <= ST0;
					Temperature <= T;
					Light <= L;
					Moisture <= M;
				else
					NextState <= ST1;
					Temperature <= T;
					Light <= L;
					Moisture <= M;
					
				end if;
				
			when others =>
					NextState <= ST0;
					Temperature <= T;
					Light <= L;
					Moisture <= M;
			end case;
	end process;

with PresentState select 
	ConvertState <= "00" when ST0,
	                "01" when ST1,
	                "11" when others;
	
					
end Architecture;			
		