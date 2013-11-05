class matriz

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
end
