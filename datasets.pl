:-dynamic(prediction/3).
prediction(1,hidup,[anemia=no,diabetes=no]).
prediction(2,hidup,[anemia=no,diabetes=no]).
prediction(3,hidup,[anemia=no,diabetes=no]).
prediction(4,hidup,[anemia=yes,diabetes=no]).
prediction(5,hidup,[anemia=yes,diabetes=yes]).
prediction(6,meninggal,[anemia=yes,diabetes=no]).
prediction(7,meninggal,[anemia=yes,diabetes=no]).
prediction(8,meninggal,[anemia=no,diabetes=yes]).
prediction(9,meninggal,[anemia=yes,diabetes=yes]).
prediction(10,meninggal,[anemia=no,diabetes=yes]).
/* List of variables                                        */
variables([class, anemia, diabetes]).
/* Values for variables                                    */
values(anemia,[yes,no]). #zayyan
values(diabetes,[yes,no]).
values(class,[hidup,meninggal]).






