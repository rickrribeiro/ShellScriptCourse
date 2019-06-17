echo "digite algo para inseriro no arquivo fileForCat.txt com o cat"
cat >>fileForCat.txt 
echo "mostrando as 10 primeiras linhas com head. ou bota -n linhas"
head -n 5 fileForCat.txt
echo "mostrando os n primeiros caracteres com head ou tail bota -c. lembrando que \n conta"
head -c 10 fileForCat.txt
echo
echo"buscando os 23"
cat fileForCat.txt | grep --color "23"
echo
echo "Ultimas 10 linhas do arquivo com tail"
tail fileForCat.txt
