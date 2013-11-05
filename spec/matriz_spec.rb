require "matriz.rb"

describe Matriz do
	
	before :each do
		@m1 = Matriz.new(2, 2);
		@m1[0] = [1,1]
		@m1[1] = [1,1]
		
		@m2 = Matriz.new(2, 2)
		@m2[0] = [2,2]
		@m2[1] = [2,2]
		
		@m3 = Matriz.new(3,3)
		@m3[0] = [1,1,1]
		@m3[1] = [2,2,2]
		@m3[2] = [3,3,3]
	end
	
	describe "# Modo de almacenar las matrices" do
		it "# Almacenar el numero de filas" do
			@m1.fil
		end
		
		it "# Almacenar el numero de columnas" do
			@m1.col
		end
	end
end
