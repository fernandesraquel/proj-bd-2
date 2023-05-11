/*Faça uma função para calcular a idade do funcionário. */

-- fetch 
CREATE FUNCTION calcular_idade_func(codigo_func integer)
RETURNS integer AS $$
DECLARE
  data_nascimento date;
BEGIN
  SELECT datanasc INTO data_nascimento
  FROM funcionario
  WHERE codigo = codigo_func;

  RETURN EXTRACT(YEAR FROM age(current_date, data_nascimento));
END;
$$ LANGUAGE plpgsql;

SELECT calcular_idade_func(1) AS idade;