require "fraccion.rb"

require "matriz.rb"

describe Matriz do
	
	before :each do
		@m1 = Matriz.new(2,2);
		@m1[0] = [1,1]
		@m1[1] = [1,1]
		
		@m2 = Matriz.new(2,2)
		@m2[0] = [2,2]
		@m2[1] = [2,2]
		
		@m3 = Matriz.new(3,3)
		@m3[0] = [1,1,1]
		@m3[1] = [2,2,2]
		@m3[2] = [3,3,3]
		
		@f1 = Fraccion.new(1,3)
		@m4 = Matriz.new(2,2)
		@m4[0] = [@f1.flotante,@f1.flotante]
		@m4[1] = [@f1.flotante,@f1.flotante]
	end
	
	describe "# Modo de almacenar las matrices" do
		it "# Almacenar el numero de filas" do
			@m1.fil
		end
	
		
		it "# Almacenar el numero de columnas" do
			@m1.col
		end
		
		it "# Se puede acceder a los elementos de la matriz" do
			@m1[1] = [1,1]
			@m1[1][0].should eq(1)
		end
		
		it "# Se puede almacenar en la matriz" do
			@m1[0] = [4,5]
			@m1[1] = [6,7]
			@m1[0][1].should eq(5)
			@m1[1][1].should eq(7)
		end
	end
	
	describe "# Operadores aritméticos" do
		it "# Suma de matrices" do
			@resultado=@m1+@m2
			@resultado[0][0].should eq(3)
			@resultado[1][0].should eq(3)
		end
		
		it "# Suma de matrices con operandos racionales" do
			@result=@m1+@m4
			@result[0][0].should eq(1.3333333333333333)
		end
		
		it "# Resta de matrices" do
			@resultado=@m2-@m1
			@resultado[0][0].should eq(1)
			@resultado[1][0].should eq(1)
		end
		
	end
	
	describe "# Operador unario" do
		it "# Operador negacion multiplicando por -1" do
			@negacion=(-@m1)
			@negacion[0][1].should eq(-1)
		end
	end

end
