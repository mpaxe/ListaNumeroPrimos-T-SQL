DECLARE @esPrimo BIT,				-- Lo usaremos como boolean
	@rInicial INT = 2,			-- Donde empieza el bucle, empieza en 2 por que todo número es divisible por 
						-- la únidad 
	@divPrimos INT = 2,			-- El contador que emezará a dividir por números hasta llegar al @rInicial 
						-- sin incluirlo
	@rFinal INT = 100;			-- Hasta donde dura la lista para sacar números primos


WHILE @rInicial <= @rFinal			-- Empieza 1º while
BEGIN						-- Asigno a @esPrimo el valor 1 para usarlo como boolean
SET @esPrimo = 1;				-- (1 = true, 0 = false), es primo hasta q se demuestre lo contrario
	WHILE @rInicial > @divPrimos		-- Empieza el while que recorrerá todons los nº desde el 2 hasta @rInicial
	BEGIN
		IF @rInicial % @divPrimos = 0	-- Este while fija el @rInicial y busca si desde 2 (@divPrimos) a 
						-- @rIncial hay algún nº con resto 0
		BEGIN
			SET @esPrimo = 0	-- Si hay alguna división con resto 0 cambiamos el valor @esPrimo a 0
		END
		SET @divPrimos += 1		-- Aquí vamos aumentando el divisor para comprobar que no hay ninguna
						-- división con resto 0
	END
	IF @esPrimo = 1				-- Si @esprimo lo imprime
	BEGIN
		PRINT @rInicial
	END
	SET @rInicial += 1			-- sumamos uno a @rInicial para pasar al siguiente nº
	SET @divPrimos = 2			-- restablecemos el valor de @divPrimos al valor inicial
END
