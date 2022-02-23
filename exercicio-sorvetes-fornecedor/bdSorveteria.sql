USE bdSorveteria

SELECT * FROM tbsorvetes

DELETE FROM tbsorvetes WHERE codsorvete = 1
DELETE FROM tbsorvetes WHERE codsorvete = 2
DELETE FROM tbsorvetes WHERE codsorvete = 3

SELECT * FROM tbfornecedor

DELETE FROM tbfornecedor WHERE codfornecedor = 1
DELETE FROM tbfornecedor WHERE codfornecedor = 2
DELETE FROM tbfornecedor WHERE codfornecedor = 3