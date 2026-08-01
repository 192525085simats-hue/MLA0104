diet(diabetes,'Eat vegetables and avoid sugar').
diet(fever,'Drink water and eat fruits').
diet(bp,'Reduce salt intake').
diet(obesity,'Eat low fat food and exercise regularly').
diet(anemia,'Eat iron rich foods').


suggest(Disease) :-
    diet(Disease,Advice),
    write('Diet Advice: '),
    write(Advice).