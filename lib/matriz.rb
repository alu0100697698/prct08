class Matriz

	attr_accessor :fil, :col, :matriz #Getters & Setters
        
        def initialize(f,c) #Inicializa el valor de las filas y columnas 
			raise ArgumentError, 'Tamaño de la matriz no valido' unless f.is_a? Integer and c.is_a? Integer and f > 0 and c > 0                
			@fil, @col = f, c
			@matriz = Array.new(@fil,0)
			i = 0
			while i < @fil
				@matriz[i] = Array.new(@col,0)
				i += 1        
			end
        end
        
        def [](valor)
			raise ArgumentError, 'El índice no es válido' unless valor.is_a? Integer and valor >= 0 and valor < @fil
			@matriz[valor]
        end
        
        def []=(valor,other)
			raise ArgumentError, 'El índice no es válido' unless valor.is_a? Integer and valor >= 0 and valor < @fil
			raise ArgumentError, 'El tamaño de la fila no es valido' unless other.size <= @col                
			@matriz[valor] = other                        
        end
        
        def +(other)
			raise ArgumentError , 'El tipo es invalido' unless other.is_a? Matriz
			raise ArgumentError , 'La matriz no es compatible' unless @fil == other.fil and @col == other.col

			m = Matriz.new(@fil, @col)
			i = 0
			while(i < @fil)
			  j = 0
			  while(j < @col)
				m[i][j] = matriz[i][j] + other[i][j]
				j += 1
			  end
			  i += 1
			end
			m
    end
        
    def -(other)
      raise ArgumentError , 'El tipo es invalido' unless other.is_a? Matriz
      raise ArgumentError , 'La matriz no es compatible' unless @fil == other.fil and @col == other.col
  
      m = Matriz.new(@fil, @col)
      i = 0
      while(i < @fil)
        j = 0
        while(j < @col)
         m[i][j] = matriz[i][j] - other[i][j]
             j += 1
            end
            i += 1
      end
      m
    end
    
    def -@
      i = 0
      m = Matriz.new(@fil, @col)
      while(i < @fil)
        j = 0
        while(j < @col)
         m[i][j] = -matriz[i][j]
         j += 1
             end
         i += 1
      end
      m
    end
end
