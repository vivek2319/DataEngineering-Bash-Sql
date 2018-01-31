#!/bin/bash
LINE=$(cat lahman2016.sql) 
echo $LINE > edit1
sed 's/\(CREATE TABLE `Batting`\)/\n\1/'<edit1>edit2
sed 's/\(CREATE TABLE `BattingPost`\)/\n/'<edit2 | grep 'CREATE TABLE `Batting`'>edit3

