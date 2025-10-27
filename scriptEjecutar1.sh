#/bin/bash

./insee-master/insee topo=dragonfly_2_3_2 routing=quickvaliant-private tpattern=random_50 placement=consecutive rseed=13 > resultsInseValPriv.txt

./inrflow-master/build/bin/inrflow topo=dragonfly-cir_2_3_2 routing=dragonfly-quick-valiant-private tpattern=random_50 placement=sequential rseed=13 verbose=1 > resultsInrfValPriv.txt


diff resultsInseValPriv.txt resultsInrfValPriv.txt
