symptom(fever).
symptom(cough).
symptom(headache).
symptom(bodypain).
symptom(rash).

disease(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(bodypain).

disease(cold) :-
    symptom(cough),
    symptom(headache).

disease(measles) :-
    symptom(fever),
    symptom(rash).

diagnose(Disease) :-
    disease(Disease),
    write('Patient may have: '),
    write(Disease).