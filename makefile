default:
	@cat makefile

pg1065.txt:
	wget https://www.gutenberg.org/cache/epub/1065/pg1065.txt

raven_lines.txt:
	grep -i "Raven" pg1065.txt > raven_lines.txt

number_of_Raven.txt:
	grep -o Raven  raven_lines.txt | wc -l > number_of_Raven.txt

number_of_RAVEN.txt:
	grep -o RAVEN  raven_lines.txt | wc -l > number_of_RAVEN.txt

number_of_raven.txt:
	grep -o raven  raven_lines.txt | wc -l > number_of_raven.txt

all:
	grep -o Raven  raven_lines.txt | wc -l > number_of_Raven.txt
	grep -o RAVEN  raven_lines.txt | wc -l > number_of_RAVEN.txt
	grep -o raven  raven_lines.txt | wc -l > number_of_raven.txt

clean:
	rm *.txt


