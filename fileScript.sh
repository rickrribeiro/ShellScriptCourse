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
echo
echo
echo "|cut -d aspasduplas com o delimitador e -fn ou fn,m,...x ou fn-m(n pra m) pro n que quer ou -b pra caracteres "
echo "um dois tres quatro cinco" |cut -d" "  -f3,4
echo "um dois tres quatro cindo" | cut -d " " -f1,2-3,5
echo "tr pra trocar os espacos por algum caracter (-d deleta caracter)" |tr " " "-"
