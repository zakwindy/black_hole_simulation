o3=m1*m1;
o4=px1*px1;
o5=py1*py1;
o6=pz1*pz1;
o7=o3+o4+o5+o6;
o8=1./sqrt(o7);
o17=m2*m2;
o18=px2*px2;
o19=py2*py2;
o20=pz2*pz2;
o21=o17+o18+o19+o20;
o22=sqrt(o21);
o11=o4+o5+o6;
o14=1/o7;
o23=-qx2;
o24=o23+qx1;
o25=o24*o24;
o26=-qy2;
o27=o26+qy1;
o28=o27*o27;
o29=-qz2;
o30=o29+qz1;
o31=o30*o30;
o32=o25+o28+o31;
o33=1./sqrt(o32);
o10=sqrt(o7);
o12=pow(o7,-2.);
o13=-2.*o11*o12*px1;
o15=2.*o14*px1;
o16=o13+o15;
o35=o11*o14;
o36=o18+o19+o20;
o37=1/o21;
o38=o36*o37;
o39=1.+o35+o38;
o41=-qx1;
o42=o41+qx2;
o43=o42*o42;
o44=-qy1;
o45=o44+qy2;
o46=o45*o45;
o47=-qz1;
o48=o47+qz2;
o49=o48*o48;
o50=o43+o46+o49;
o51=1./sqrt(o50);
o56=7.*px2;
o84=px1*px2;
o85=py1*py2;
o86=pz1*pz2;
o87=o84+o85+o86;
o88=o87*o87;
o74=o24*o33*px1;
o75=o27*o33*py1;
o76=o30*o33*pz1;
o77=o74+o75+o76;
o78=o77*o77;
o57=o24*o33*px2;
o58=o27*o33*py2;
o59=o30*o33*pz2;
o60=o57+o58+o59;
o79=o3+o78;
o80=sqrt(o79);
o93=o60*o60;
o101=o78*o93;
o114=1./sqrt(o79);
o73=1./sqrt(o21);
o81=o8*o80;
o82=1.+o81;
o89=-(o11*o88);
o90=2.*o78*o88;
o91=-2.*o11*o60*o77*o87;
o92=o11*o11;
o94=o92*o93;
o95=o89+o90+o91+o94;
o115=pow(o7,-1.5);
o97=o11*o36;
o98=-3.*o36*o78;
o99=8.*o60*o77*o87;
o100=-3.*o11*o93;
o102=o100+o101+o97+o98+o99;
o104=-o18;
o105=-o19;
o106=-o20;
o107=o104+o105+o106;
o138=2.*o24*o33*o77*o93;
o120=pow(o82,-2.);
o96=2.*o14*o95;
o103=o102*o8*o80;
o108=o107*o78;
o109=2.*o60*o77*o87;
o110=-(o11*o93);
o111=o101+o108+o109+o110+o88;
o112=2.*o111;
o113=o103+o112+o96;
o64=o42*o51*px2;
o65=o45*o51*py2;
o66=o48*o51*pz2;
o67=o64+o65+o66;
o153=o67*o67;
o154=o153+o17;
o162=o42*o51*px1;
o163=o45*o51*py1;
o164=o48*o51*pz1;
o165=o162+o163+o164;
o156=sqrt(o154);
o141=2.*o36*px1;
o133=2.*o87*px2;
o176=2.*o153*o165*o42*o51;
o155=1./sqrt(o154);
o157=o156*o73;
o158=1.+o157;
o159=pow(o158,-2.);
o161=o36*o36;
o188=o165*o165;
o201=o153*o188;
o215=-2.*o11*o12*py1;
o216=2.*o14*py1;
o217=o215+o216;
o224=7.*py2;
o83=pow(o82,-3.);
o254=2.*o27*o33*o77*o93;
o151=pow(o79,-1.5);
o257=2.*o36*py1;
o249=2.*o87*py2;
o279=2.*o153*o165*o45*o51;
o187=-(o36*o88);
o189=o161*o188;
o190=-2.*o165*o36*o67*o87;
o191=2.*o153*o88;
o192=o187+o189+o190+o191;
o193=2.*o192*o37;
o194=-(o188*o36);
o195=2.*o165*o67*o87;
o196=-o4;
o197=-o5;
o198=-o6;
o199=o196+o197+o198;
o200=o153*o199;
o202=o194+o195+o200+o201+o88;
o203=2.*o202;
o204=-3.*o188*o36;
o205=8.*o165*o67*o87;
o206=-3.*o11*o153;
o207=o201+o204+o205+o206+o97;
o208=o156*o207*o73;
o209=o193+o203+o208;
o295=-2.*o11*o12*pz1;
o296=2.*o14*pz1;
o297=o295+o296;
o304=7.*pz2;
o334=2.*o30*o33*o77*o93;
o337=2.*o36*pz1;
o329=2.*o87*pz2;
o359=2.*o153*o165*o48*o51;
o375=pow(o21,-2.);
o376=-2.*o36*o375*px2;
o377=2.*o37*px2;
o378=o376+o377;
o385=7.*px1;
o408=2.*o24*o33*o60*o78;
o411=2.*o87*px1;
o403=2.*o11*px2;
o424=2.*o188*o42*o51*o67;
o394=pow(o21,-1.5);
o459=-2.*o36*o375*py2;
o460=2.*o37*py2;
o461=o459+o460;
o468=7.*py1;
o490=2.*o27*o33*o60*o78;
o493=2.*o87*py1;
o485=2.*o11*py2;
o506=2.*o188*o45*o51*o67;
o451=pow(o158,-3.);
o453=pow(o154,-1.5);
o539=-2.*o36*o375*pz2;
o540=2.*o37*pz2;
o541=o539+o540;
o548=7.*pz1;
o570=2.*o30*o33*o60*o78;
o573=2.*o87*pz1;
o565=2.*o11*pz2;
o586=2.*o188*o48*o51*o67;
o618=pow(o32,-1.5);
o620=pow(o50,-1.5);
o624=7.*o87;
o634=-(o25*o618*px1);
o635=-(o24*o27*o618*py1);
o636=o33*px1;
o637=-(o24*o30*o618*pz1);
o638=o634+o635+o636+o637;
o628=-(o25*o618*px2);
o629=-(o24*o27*o618*py2);
o630=o33*px2;
o631=-(o24*o30*o618*pz2);
o632=o628+o629+o630+o631;
o672=2.*o60*o632*o78;
o673=2.*o638*o77*o93;
o648=o43*o620*px1;
o649=o42*o45*o620*py1;
o650=o42*o48*o620*pz1;
o651=-(o51*px1);
o652=o648+o649+o650+o651;
o642=o43*o620*px2;
o643=o42*o45*o620*py2;
o644=o42*o48*o620*pz2;
o645=-(o51*px2);
o646=o642+o643+o644+o645;
o698=2.*o188*o646*o67;
o699=2.*o153*o165*o652;
o625=o60*o77;
o626=o624+o625;
o656=o165*o67;
o657=o624+o656;
o729=-(o24*o27*o618*px1);
o730=-(o28*o618*py1);
o731=o33*py1;
o732=-(o27*o30*o618*pz1);
o733=o729+o730+o731+o732;
o723=-(o24*o27*o618*px2);
o724=-(o28*o618*py2);
o725=o33*py2;
o726=-(o27*o30*o618*pz2);
o727=o723+o724+o725+o726;
o765=2.*o60*o727*o78;
o766=2.*o733*o77*o93;
o686=1/o79;
o743=o42*o45*o620*px1;
o744=o46*o620*py1;
o745=o45*o48*o620*pz1;
o746=-(o51*py1);
o747=o743+o744+o745+o746;
o737=o42*o45*o620*px2;
o738=o46*o620*py2;
o739=o45*o48*o620*pz2;
o740=-(o51*py2);
o741=o737+o738+o739+o740;
o790=2.*o188*o67*o741;
o791=2.*o153*o165*o747;
o711=1/o154;
o813=o33*pz1;
o814=-(o24*o30*o618*px1);
o815=-(o27*o30*o618*py1);
o816=-(o31*o618*pz1);
o817=o813+o814+o815+o816;
o819=o33*pz2;
o820=-(o24*o30*o618*px2);
o821=-(o27*o30*o618*py2);
o822=-(o31*o618*pz2);
o823=o819+o820+o821+o822;
o854=2.*o77*o817*o93;
o857=2.*o60*o78*o823;
o834=o42*o48*o620*px1;
o835=o45*o48*o620*py1;
o836=o49*o620*pz1;
o837=-(o51*pz1);
o838=o834+o835+o836+o837;
o828=o42*o48*o620*px2;
o829=o45*o48*o620*py2;
o830=o49*o620*pz2;
o831=-(o51*pz2);
o832=o828+o829+o830+o831;
o881=2.*o188*o67*o832;
o882=2.*o153*o165*o838;
o911=o25*o618*px1;
o912=o24*o27*o618*py1;
o913=-(o33*px1);
o914=o24*o30*o618*pz1;
o915=o911+o912+o913+o914;
o905=o25*o618*px2;
o906=o24*o27*o618*py2;
o907=-(o33*px2);
o908=o24*o30*o618*pz2;
o909=o905+o906+o907+o908;
o947=2.*o60*o78*o909;
o948=2.*o77*o915*o93;
o925=-(o43*o620*px1);
o926=-(o42*o45*o620*py1);
o927=-(o42*o48*o620*pz1);
o928=o51*px1;
o929=o925+o926+o927+o928;
o919=-(o43*o620*px2);
o920=-(o42*o45*o620*py2);
o921=-(o42*o48*o620*pz2);
o922=o51*px2;
o923=o919+o920+o921+o922;
o972=2.*o188*o67*o923;
o973=2.*o153*o165*o929;
o1002=o24*o27*o618*px1;
o1003=o28*o618*py1;
o1004=-(o33*py1);
o1005=o27*o30*o618*pz1;
o1006=o1002+o1003+o1004+o1005;
o996=o24*o27*o618*px2;
o997=o28*o618*py2;
o998=-(o33*py2);
o999=o27*o30*o618*pz2;
o1000=o996+o997+o998+o999;
o1038=2.*o1000*o60*o78;
o1039=2.*o1006*o77*o93;
o1016=-(o42*o45*o620*px1);
o1017=-(o46*o620*py1);
o1018=-(o45*o48*o620*pz1);
o1019=o51*py1;
o1020=o1016+o1017+o1018+o1019;
o1010=-(o42*o45*o620*px2);
o1011=-(o46*o620*py2);
o1012=-(o45*o48*o620*pz2);
o1013=o51*py2;
o1014=o1010+o1011+o1012+o1013;
o1063=2.*o1014*o188*o67;
o1064=2.*o1020*o153*o165;
o1086=-(o33*pz1);
o1087=o24*o30*o618*px1;
o1088=o27*o30*o618*py1;
o1089=o31*o618*pz1;
o1090=o1086+o1087+o1088+o1089;
o1092=-(o33*pz2);
o1093=o24*o30*o618*px2;
o1094=o27*o30*o618*py2;
o1095=o31*o618*pz2;
o1096=o1092+o1093+o1094+o1095;
o1127=2.*o1090*o77*o93;
o1130=2.*o1096*o60*o78;
o1107=-(o42*o48*o620*px1);
o1108=-(o45*o48*o620*py1);
o1109=-(o49*o620*pz1);
o1110=o51*pz1;
o1111=o1107+o1108+o1109+o1110;
o1101=-(o42*o48*o620*px2);
o1102=-(o45*o48*o620*py2);
o1103=-(o49*o620*pz2);
o1104=o51*pz2;
o1105=o1101+o1102+o1103+o1104;
o1154=2.*o1105*o188*o67;
o1155=2.*o1111*o153*o165;
dqdt[0][0]=0.25*G*(o33*(o56+o24*o33*o60)+o51*(o56+o42*o51*o67))+o8*px1-0.5*G*(o10*o16*o22*o33+o10*o16*o22*o51+o22*o33*o39*o8*px1+o22*o39*o51*o8*px1)-0.25*G*(-(o113*o120*o151*o24*o33*o51*o73*o77)-o115*o155*o159*o209*o33*px1-2.*o113*o114*o51*o73*o83*(o114*o24*o33*o77*o8-o115*o80*px1)+o155*o159*o33*o8*(2.*(o133+o176-2.*o165*o36*o42*o51+2.*o42*o51*o67*o87-2.*o153*px1+2.*o165*o67*px2)+o156*o73*(o141+o176-6.*o165*o36*o42*o51+8.*o42*o51*o67*o87-6.*o153*px1+8.*o165*o67*px2)+2.*o37*(2.*o161*o165*o42*o51-2.*o36*o42*o51*o67*o87-2.*o165*o36*o67*px2+4.*o153*o87*px2-2.*o36*o87*px2))+o114*o120*o51*o73*(o102*o114*o24*o33*o77*o8-o102*o115*o80*px1-4.*o12*o95*px1+2.*(o133+o138+2.*o107*o24*o33*o77+2.*o24*o33*o60*o87-2.*o93*px1+2.*o60*o77*px2)+o8*o80*(o138+o141-6.*o24*o33*o36*o77+8.*o24*o33*o60*o87-6.*o93*px1+8.*o60*o77*px2)+2.*o14*(-2.*o11*o24*o33*o60*o87+4.*o24*o33*o77*o88-4.*o60*o77*o87*px1-2.*o88*px1+4.*o11*o93*px1-2.*o11*o60*o77*px2-2.*o11*o87*px2+4.*o78*o87*px2)));
dqdt[0][1]=0.25*G*(o33*(o224+o27*o33*o60)+o51*(o224+o45*o51*o67))+o8*py1-0.5*G*(o10*o217*o22*o33+o10*o217*o22*o51+o22*o33*o39*o8*py1+o22*o39*o51*o8*py1)-0.25*G*(-(o113*o120*o151*o27*o33*o51*o73*o77)-o115*o155*o159*o209*o33*py1-2.*o113*o114*o51*o73*o83*(o114*o27*o33*o77*o8-o115*o80*py1)+o155*o159*o33*o8*(2.*(o249+o279-2.*o165*o36*o45*o51+2.*o45*o51*o67*o87-2.*o153*py1+2.*o165*o67*py2)+o156*o73*(o257+o279-6.*o165*o36*o45*o51+8.*o45*o51*o67*o87-6.*o153*py1+8.*o165*o67*py2)+2.*o37*(2.*o161*o165*o45*o51-2.*o36*o45*o51*o67*o87-2.*o165*o36*o67*py2+4.*o153*o87*py2-2.*o36*o87*py2))+o114*o120*o51*o73*(o102*o114*o27*o33*o77*o8-o102*o115*o80*py1-4.*o12*o95*py1+2.*(o249+o254+2.*o107*o27*o33*o77+2.*o27*o33*o60*o87-2.*o93*py1+2.*o60*o77*py2)+o8*o80*(o254+o257-6.*o27*o33*o36*o77+8.*o27*o33*o60*o87-6.*o93*py1+8.*o60*o77*py2)+2.*o14*(-2.*o11*o27*o33*o60*o87+4.*o27*o33*o77*o88-4.*o60*o77*o87*py1-2.*o88*py1+4.*o11*o93*py1-2.*o11*o60*o77*py2-2.*o11*o87*py2+4.*o78*o87*py2)));
dqdt[0][2]=0.25*G*(o33*(o304+o30*o33*o60)+o51*(o304+o48*o51*o67))+o8*pz1-0.5*G*(o10*o22*o297*o33+o10*o22*o297*o51+o22*o33*o39*o8*pz1+o22*o39*o51*o8*pz1)-0.25*G*(-(o113*o120*o151*o30*o33*o51*o73*o77)-o115*o155*o159*o209*o33*pz1-2.*o113*o114*o51*o73*o83*(o114*o30*o33*o77*o8-o115*o80*pz1)+o155*o159*o33*o8*(2.*(o329+o359-2.*o165*o36*o48*o51+2.*o48*o51*o67*o87-2.*o153*pz1+2.*o165*o67*pz2)+o156*o73*(o337+o359-6.*o165*o36*o48*o51+8.*o48*o51*o67*o87-6.*o153*pz1+8.*o165*o67*pz2)+2.*o37*(2.*o161*o165*o48*o51-2.*o36*o48*o51*o67*o87-2.*o165*o36*o67*pz2+4.*o153*o87*pz2-2.*o36*o87*pz2))+o114*o120*o51*o73*(o102*o114*o30*o33*o77*o8-o102*o115*o80*pz1-4.*o12*o95*pz1+2.*(o329+o334+2.*o107*o30*o33*o77+2.*o30*o33*o60*o87-2.*o93*pz1+2.*o60*o77*pz2)+o8*o80*(o334+o337-6.*o30*o33*o36*o77+8.*o30*o33*o60*o87-6.*o93*pz1+8.*o60*o77*pz2)+2.*o14*(-2.*o11*o30*o33*o60*o87+4.*o30*o33*o77*o88-4.*o60*o77*o87*pz1-2.*o88*pz1+4.*o11*o93*pz1-2.*o11*o60*o77*pz2-2.*o11*o87*pz2+4.*o78*o87*pz2)));
dqdt[1][0]=0.25*G*(o51*(o385+o165*o42*o51)+o33*(o385+o24*o33*o77))+o73*px2-0.5*G*(o10*o22*o33*o378+o10*o22*o378*o51+o10*o33*o39*o73*px2+o10*o39*o51*o73*px2)-0.25*G*(-(o159*o209*o33*o42*o453*o51*o67*o8)-o113*o114*o120*o394*o51*px2-2.*o155*o209*o33*o451*o8*(o155*o42*o51*o67*o73-o156*o394*px2)+o114*o120*o51*o73*(2.*o14*(-2.*o11*o24*o33*o77*o87+2.*o24*o33*o60*o92-2.*o11*o60*o77*px1-2.*o11*o87*px1+4.*o78*o87*px1)+o8*o80*(o403+o408-6.*o11*o24*o33*o60+8.*o24*o33*o77*o87+8.*o60*o77*px1-6.*o78*px2)+2.*(o408+o411-2.*o11*o24*o33*o60+2.*o24*o33*o77*o87+2.*o60*o77*px1-2.*o78*px2))+o155*o159*o33*o8*(o155*o207*o42*o51*o67*o73-4.*o192*o375*px2-o156*o207*o394*px2+o156*o73*(o403+o424-6.*o11*o42*o51*o67+8.*o165*o42*o51*o87+8.*o165*o67*px1-6.*o188*px2)+2.*(o411+o424+2.*o199*o42*o51*o67+2.*o165*o42*o51*o87+2.*o165*o67*px1-2.*o188*px2)+2.*o37*(-2.*o165*o36*o42*o51*o87+4.*o42*o51*o67*o88-2.*o165*o36*o67*px1+4.*o153*o87*px1-2.*o36*o87*px1+4.*o188*o36*px2-4.*o165*o67*o87*px2-2.*o88*px2)));
dqdt[1][1]=0.25*G*(o51*(o468+o165*o45*o51)+o33*(o468+o27*o33*o77))+o73*py2-0.5*G*(o10*o22*o33*o461+o10*o22*o461*o51+o10*o33*o39*o73*py2+o10*o39*o51*o73*py2)-0.25*G*(-(o159*o209*o33*o45*o453*o51*o67*o8)-o113*o114*o120*o394*o51*py2-2.*o155*o209*o33*o451*o8*(o155*o45*o51*o67*o73-o156*o394*py2)+o114*o120*o51*o73*(2.*o14*(-2.*o11*o27*o33*o77*o87+2.*o27*o33*o60*o92-2.*o11*o60*o77*py1-2.*o11*o87*py1+4.*o78*o87*py1)+o8*o80*(o485+o490-6.*o11*o27*o33*o60+8.*o27*o33*o77*o87+8.*o60*o77*py1-6.*o78*py2)+2.*(o490+o493-2.*o11*o27*o33*o60+2.*o27*o33*o77*o87+2.*o60*o77*py1-2.*o78*py2))+o155*o159*o33*o8*(o155*o207*o45*o51*o67*o73-4.*o192*o375*py2-o156*o207*o394*py2+o156*o73*(o485+o506-6.*o11*o45*o51*o67+8.*o165*o45*o51*o87+8.*o165*o67*py1-6.*o188*py2)+2.*(o493+o506+2.*o199*o45*o51*o67+2.*o165*o45*o51*o87+2.*o165*o67*py1-2.*o188*py2)+2.*o37*(-2.*o165*o36*o45*o51*o87+4.*o45*o51*o67*o88-2.*o165*o36*o67*py1+4.*o153*o87*py1-2.*o36*o87*py1+4.*o188*o36*py2-4.*o165*o67*o87*py2-2.*o88*py2)));
dqdt[1][2]=0.25*G*(o51*(o165*o48*o51+o548)+o33*(o548+o30*o33*o77))+o73*pz2-0.5*G*(o10*o22*o33*o541+o10*o22*o51*o541+o10*o33*o39*o73*pz2+o10*o39*o51*o73*pz2)-0.25*G*(-(o159*o209*o33*o453*o48*o51*o67*o8)-o113*o114*o120*o394*o51*pz2-2.*o155*o209*o33*o451*o8*(o155*o48*o51*o67*o73-o156*o394*pz2)+o114*o120*o51*o73*(2.*o14*(-2.*o11*o30*o33*o77*o87+2.*o30*o33*o60*o92-2.*o11*o60*o77*pz1-2.*o11*o87*pz1+4.*o78*o87*pz1)+o8*o80*(o565+o570-6.*o11*o30*o33*o60+8.*o30*o33*o77*o87+8.*o60*o77*pz1-6.*o78*pz2)+2.*(o570+o573-2.*o11*o30*o33*o60+2.*o30*o33*o77*o87+2.*o60*o77*pz1-2.*o78*pz2))+o155*o159*o33*o8*(o155*o207*o48*o51*o67*o73-4.*o192*o375*pz2-o156*o207*o394*pz2+o156*o73*(o565+o586-6.*o11*o48*o51*o67+8.*o165*o48*o51*o87+8.*o165*o67*pz1-6.*o188*pz2)+2.*(o573+o586+2.*o199*o48*o51*o67+2.*o165*o48*o51*o87+2.*o165*o67*pz1-2.*o188*pz2)+2.*o37*(-2.*o165*o36*o48*o51*o87+4.*o48*o51*o67*o88-2.*o165*o36*o67*pz1+4.*o153*o87*pz1-2.*o36*o87*pz1+4.*o188*o36*pz2-4.*o165*o67*o87*pz2-2.*o88*pz2)));
dpdt[0][0]=0.5*G*(-(o10*o22*o24*o39*o618)+o10*o22*o39*o42*o620)-0.25*G*(-(o24*o618*o626)+o42*o620*o657+o51*(o165*o646+o652*o67)+o33*(o60*o638+o632*o77))+0.25*G*(o113*o114*o120*o42*o620*o73-o113*o120*o151*o51*o638*o73*o77-o155*o159*o209*o24*o618*o8-o159*o209*o33*o453*o646*o67*o8-2.*o209*o33*o451*o646*o67*o711*o73*o8-2.*o113*o51*o638*o686*o73*o77*o8*o83+o155*o159*o33*o8*(o155*o207*o646*o67*o73+2.*(-2.*o165*o36*o652+2.*o199*o646*o67+o698+o699+2.*o165*o646*o87+2.*o652*o67*o87)+o156*o73*(-6.*o165*o36*o652-6.*o11*o646*o67+o698+o699+8.*o165*o646*o87+8.*o652*o67*o87)+2.*o37*(2.*o161*o165*o652-2.*o165*o36*o646*o87-2.*o36*o652*o67*o87+4.*o646*o67*o88))+o114*o120*o51*o73*(o102*o114*o638*o77*o8+2.*(-2.*o11*o60*o632+o672+o673+2.*o107*o638*o77+2.*o60*o638*o87+2.*o632*o77*o87)+o8*o80*(-6.*o11*o60*o632+o672+o673-6.*o36*o638*o77+8.*o60*o638*o87+8.*o632*o77*o87)+2.*o14*(-2.*o11*o60*o638*o87-2.*o11*o632*o77*o87+4.*o638*o77*o88+2.*o60*o632*o92)));
dpdt[0][1]=0.5*G*(-(o10*o22*o27*o39*o618)+o10*o22*o39*o45*o620)-0.25*G*(-(o27*o618*o626)+o45*o620*o657+o51*(o165*o741+o67*o747)+o33*(o60*o733+o727*o77))+0.25*G*(o113*o114*o120*o45*o620*o73-o113*o120*o151*o51*o73*o733*o77-o155*o159*o209*o27*o618*o8-o159*o209*o33*o453*o67*o741*o8-2.*o209*o33*o451*o67*o711*o73*o741*o8-2.*o113*o51*o686*o73*o733*o77*o8*o83+o155*o159*o33*o8*(o155*o207*o67*o73*o741+2.*(2.*o199*o67*o741-2.*o165*o36*o747+o790+o791+2.*o165*o741*o87+2.*o67*o747*o87)+o156*o73*(-6.*o11*o67*o741-6.*o165*o36*o747+o790+o791+8.*o165*o741*o87+8.*o67*o747*o87)+2.*o37*(2.*o161*o165*o747-2.*o165*o36*o741*o87-2.*o36*o67*o747*o87+4.*o67*o741*o88))+o114*o120*o51*o73*(o102*o114*o733*o77*o8+2.*(-2.*o11*o60*o727+o765+o766+2.*o107*o733*o77+2.*o60*o733*o87+2.*o727*o77*o87)+o8*o80*(-6.*o11*o60*o727+o765+o766-6.*o36*o733*o77+8.*o60*o733*o87+8.*o727*o77*o87)+2.*o14*(-2.*o11*o60*o733*o87-2.*o11*o727*o77*o87+4.*o733*o77*o88+2.*o60*o727*o92)));
dpdt[0][2]=0.5*G*(-(o10*o22*o30*o39*o618)+o10*o22*o39*o48*o620)-0.25*G*(-(o30*o618*o626)+o48*o620*o657+o33*(o60*o817+o77*o823)+o51*(o165*o832+o67*o838))+0.25*G*(o113*o114*o120*o48*o620*o73-o155*o159*o209*o30*o618*o8-o113*o120*o151*o51*o73*o77*o817-2.*o113*o51*o686*o73*o77*o8*o817*o83-o159*o209*o33*o453*o67*o8*o832-2.*o209*o33*o451*o67*o711*o73*o8*o832+o155*o159*o33*o8*(o155*o207*o67*o73*o832+2.*o37*(2.*o161*o165*o838-2.*o165*o36*o832*o87-2.*o36*o67*o838*o87+4.*o67*o832*o88)+2.*(2.*o199*o67*o832-2.*o165*o36*o838+2.*o165*o832*o87+2.*o67*o838*o87+o881+o882)+o156*o73*(-6.*o11*o67*o832-6.*o165*o36*o838+8.*o165*o832*o87+8.*o67*o838*o87+o881+o882))+o114*o120*o51*o73*(o102*o114*o77*o8*o817+2.*(2.*o107*o77*o817-2.*o11*o60*o823+o854+o857+2.*o60*o817*o87+2.*o77*o823*o87)+o8*o80*(-6.*o36*o77*o817-6.*o11*o60*o823+o854+o857+8.*o60*o817*o87+8.*o77*o823*o87)+2.*o14*(-2.*o11*o60*o817*o87-2.*o11*o77*o823*o87+4.*o77*o817*o88+2.*o60*o823*o92)));
dpdt[1][0]=0.5*G*(o10*o22*o24*o39*o618-o10*o22*o39*o42*o620)-0.25*G*(o24*o618*o626-o42*o620*o657+o33*(o77*o909+o60*o915)+o51*(o165*o923+o67*o929))+0.25*G*(-(o113*o114*o120*o42*o620*o73)+o155*o159*o209*o24*o618*o8-o113*o120*o151*o51*o73*o77*o915-2.*o113*o51*o686*o73*o77*o8*o83*o915-o159*o209*o33*o453*o67*o8*o923-2.*o209*o33*o451*o67*o711*o73*o8*o923+o114*o120*o51*o73*(o102*o114*o77*o8*o915+2.*o14*(-2.*o11*o77*o87*o909-2.*o11*o60*o87*o915+4.*o77*o88*o915+2.*o60*o909*o92)+2.*(-2.*o11*o60*o909+2.*o77*o87*o909+2.*o107*o77*o915+2.*o60*o87*o915+o947+o948)+o8*o80*(-6.*o11*o60*o909+8.*o77*o87*o909-6.*o36*o77*o915+8.*o60*o87*o915+o947+o948))+o155*o159*o33*o8*(o155*o207*o67*o73*o923+2.*o37*(-2.*o165*o36*o87*o923+4.*o67*o88*o923+2.*o161*o165*o929-2.*o36*o67*o87*o929)+2.*(2.*o199*o67*o923+2.*o165*o87*o923-2.*o165*o36*o929+2.*o67*o87*o929+o972+o973)+o156*o73*(-6.*o11*o67*o923+8.*o165*o87*o923-6.*o165*o36*o929+8.*o67*o87*o929+o972+o973)));
dpdt[1][1]=0.5*G*(o10*o22*o27*o39*o618-o10*o22*o39*o45*o620)-0.25*G*(o27*o618*o626-o45*o620*o657+o51*(o1014*o165+o1020*o67)+o33*(o1006*o60+o1000*o77))+0.25*G*(-(o113*o114*o120*o45*o620*o73)-o1006*o113*o120*o151*o51*o73*o77+o155*o159*o209*o27*o618*o8-o1014*o159*o209*o33*o453*o67*o8-2.*o1014*o209*o33*o451*o67*o711*o73*o8-2.*o1006*o113*o51*o686*o73*o77*o8*o83+o155*o159*o33*o8*(o1014*o155*o207*o67*o73+2.*(o1063+o1064-2.*o1020*o165*o36+2.*o1014*o199*o67+2.*o1014*o165*o87+2.*o1020*o67*o87)+o156*o73*(o1063+o1064-6.*o1020*o165*o36-6.*o1014*o11*o67+8.*o1014*o165*o87+8.*o1020*o67*o87)+2.*o37*(2.*o1020*o161*o165-2.*o1014*o165*o36*o87-2.*o1020*o36*o67*o87+4.*o1014*o67*o88))+o114*o120*o51*o73*(o1006*o102*o114*o77*o8+2.*(o1038+o1039-2.*o1000*o11*o60+2.*o1006*o107*o77+2.*o1006*o60*o87+2.*o1000*o77*o87)+o8*o80*(o1038+o1039-6.*o1000*o11*o60-6.*o1006*o36*o77+8.*o1006*o60*o87+8.*o1000*o77*o87)+2.*o14*(-2.*o1006*o11*o60*o87-2.*o1000*o11*o77*o87+4.*o1006*o77*o88+2.*o1000*o60*o92)));
dpdt[1][2]=0.5*G*(o10*o22*o30*o39*o618-o10*o22*o39*o48*o620)-0.25*G*(o30*o618*o626-o48*o620*o657+o51*(o1105*o165+o1111*o67)+o33*(o1090*o60+o1096*o77))+0.25*G*(-(o113*o114*o120*o48*o620*o73)-o1090*o113*o120*o151*o51*o73*o77+o155*o159*o209*o30*o618*o8-o1105*o159*o209*o33*o453*o67*o8-2.*o1105*o209*o33*o451*o67*o711*o73*o8-2.*o1090*o113*o51*o686*o73*o77*o8*o83+o155*o159*o33*o8*(o1105*o155*o207*o67*o73+2.*(o1154+o1155-2.*o1111*o165*o36+2.*o1105*o199*o67+2.*o1105*o165*o87+2.*o1111*o67*o87)+o156*o73*(o1154+o1155-6.*o1111*o165*o36-6.*o11*o1105*o67+8.*o1105*o165*o87+8.*o1111*o67*o87)+2.*o37*(2.*o1111*o161*o165-2.*o1105*o165*o36*o87-2.*o1111*o36*o67*o87+4.*o1105*o67*o88))+o114*o120*o51*o73*(o102*o1090*o114*o77*o8+2.*(o1127+o1130-2.*o1096*o11*o60+2.*o107*o1090*o77+2.*o1090*o60*o87+2.*o1096*o77*o87)+o8*o80*(o1127+o1130-6.*o1096*o11*o60-6.*o1090*o36*o77+8.*o1090*o60*o87+8.*o1096*o77*o87)+2.*o14*(-2.*o1090*o11*o60*o87-2.*o1096*o11*o77*o87+4.*o1090*o77*o88+2.*o1096*o60*o92)));
PM1=o10+o22-0.5*G*(o10*o22*o33*o39+o10*o22*o39*o51)+0.25*G*(o33*o626+o51*o657)-0.25*G*(o113*o114*o120*o51*o73+o155*o159*o209*o33*o8);
