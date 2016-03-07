#!/bin/sh
for x in *.ent;do
	qbsp -onlyents $x
done
