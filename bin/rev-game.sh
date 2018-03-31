#!/usr/bin/python
import pyspark
sc=pyspark.SparkContext()

def to_String(t):
	t[0].split(' ')
	year=ids[0][3:7]
	yearMonth=year+'-'+ids[0][7:9]
	date=yearMonth+'-'+ids[0][9:11]
	player='{} {} {}'.format(ids[1],ids[2], ids[3])
	HR=t[1]
	return('{},{},{},{},{}'.format(year,yearMonth))

players=(
sc.textFile('gs://practiceengineering/retrosheet/players')
.map(lambda s:s.plit(','))
.map(lambda a:(a[0],a[2]+' '+a[1]))
.collect()
)

players=dict(players)

print(players)

result=(
sc.textFile('gs://practiceengineering/retrosheet/revised_game_info/output/part*')
.map(lambda s:s.split(','))
.filter(lambda a:a[1]=='play')
.filter(lambda a:a[7][0]=='H' and a[7][1]!='P')
.map(lambda a:(a[0]+' '+a[4]+' '+players[a[4]],1))
.groupByKey()
.mapValues(sum)
.take(100)
)

print(result)
