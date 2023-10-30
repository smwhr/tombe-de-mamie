
LIST Characters = (Alice), (Benjamin), (Constance), (David), (Elena), (Florent), (Giulia)
VAR PrevAttention = ()
VAR Attention = ()

1er novembre 1992, 11h, Cimetière Jacques Prévert. # actionscalie

-> Groupe

=== Groupe

<:mamie>Mamie</> est assise en tailleur sur le marbre. Il pleut des cordes et c'est la seule qui est épargnée. <:les_autres>Les autres</> ne sont pas touchés non plus, la pluie <:fantomes>les traverse</>. {Attention: L'attention est portée sur <:{Attention}>{Attention}</>.}


{came_from(->select_mamie): <-actions_mamie(-> Groupe)}
{came_from(->select_les_autres): <-actions_les_autres(-> Groupe)}
{came_from(->actions_les_autres.select_alice): <-actions_alice(-> Groupe)}
{came_from(->actions_les_autres.select_benjamin): <-actions_benjamin(-> Groupe)}
{came_from(->actions_les_autres.select_constance): <-actions_constance(-> Groupe)}
{came_from(->actions_les_autres.select_david): <-actions_david(-> Groupe)}
{came_from(->actions_les_autres.select_elena): <-actions_elena(-> Groupe)}
{came_from(->actions_les_autres.select_florent): <-actions_florent(-> Groupe)}
{came_from(->actions_les_autres.select_giulia): <-actions_giulia(-> Groupe)}

+ (select_mamie)[envchoice: mamie]
    -> Groupe
+ (select_les_autres)[envchoice: les_autres]
    -> Groupe
+ [envchoice: Alice]
    ->actions_les_autres.select_alice
+ [envchoice: Benjamin]
    ->actions_les_autres.select_benjamin
+ [envchoice: Constance]
    ->actions_les_autres.select_constance
+ [envchoice: David]
    ->actions_les_autres.select_david
+ [envchoice: Elena]
    ->actions_les_autres.select_elena
+ [envchoice: Florent]
    ->actions_les_autres.select_florent
+ [envchoice: Giulia]
    ->actions_les_autres.select_giulia


* [envchoice: fantomes]
    En réalité, plus personne n'est venu sur la tombe de Mamie depuis son enterrement. # didascalie
    Ce sont les fantômes des problèmes familiaux irrésolus que Zélie convoque, le jour de la Toussaint, chaque année depuis. # didascalie
    -> Groupe

-
-> DONE


=== actions_les_autres (->then)
    +(select_alice) [Alice] 
        ~PrevAttention = Attention
        ~Attention = (Alice)
        {PrevAttention != Attention: L'attention se porte sur Alice. # actionscalie}
    +(select_benjamin) [Benjamin] 
        ~PrevAttention = Attention
        ~Attention = (Benjamin)
        {PrevAttention != Attention: L'attention se porte sur Benjamin. # actionscalie}
    +(select_constance) [Constance] 
        ~PrevAttention = Attention
        ~Attention = (Constance)
        {PrevAttention != Attention: L'attention se porte sur Constance. # actionscalie}
    +(select_david) [David] 
        ~PrevAttention = Attention
        ~Attention = (David)
        {PrevAttention != Attention: L'attention se porte sur David. # actionscalie}
    +(select_elena) [Elena] 
        ~PrevAttention = Attention
        ~Attention = (Elena)
        {PrevAttention != Attention: L'attention se porte sur Elena. # actionscalie}
    +(select_florent) [Florent] 
        ~PrevAttention = Attention
        ~Attention = (Florent)
        {PrevAttention != Attention: L'attention se porte sur Florent. # actionscalie}
    +(select_giulia) [Giulia] 
        ~PrevAttention = Attention
        ~Attention =(Giulia)
        {PrevAttention != Attention: L'attention se porte sur Giulia. # actionscalie}
-
-> then


=== actions_mamie (-> then)
    +(vue_mamie) [actchoice: Observer]
        C'est mamie. Mamie Zélie comme l'appelaient Constance et Giulia quand elles étaient enfants. # didascalie
        Elle est la seule éclairée par le seul rayon de soleil qui perce l'épaisse couverture nuageuse. # didascalie
    *(lance_debat) [actchoice: “Quelqu'un veut se lancer ?”] “Quelqu'un veut se lancer ?”, demande Zélie # actionscalie
        “Constance peut-être ?” # actionscalie
        ->actions_les_autres.select_constance
-
-> then

=== actions_alice (-> then)
    + [actchoice: Observer]
        Alice a 59 ans. C'est la première fille de {actions_mamie.vue_mamie:Zélie|Mamie}, issue de son premier mariage. # didascalie
-
-> then

=== actions_benjamin (-> then)
    + [actchoice: Observer]
        Benjamin a 57 ans. C'est le mari de Alice. # didascalie
-
-> then

=== actions_constance (-> then)
    + [actchoice: Observer]
        Constance a 35 ans. C'est la fille de Alice et Benjamin. # didascalie
-
-> then

=== actions_david (-> then)
    + [actchoice: Observer]
        David a 41 ans. C'est le mari de Constance. # didascalie
-
-> then

=== actions_elena (-> then)
    + [actchoice: Observer]
        Elena a 48 ans, c'est la seconde fille de {actions_mamie.vue_mamie:Zélie|Mamie} issue de son troisième mariage. # didascalie
-
-> then

=== actions_florent (-> then)
    + [actchoice: Observer]
        Florent a 55 ans. # didascalie
-
-> then

=== actions_giulia (-> then)
    + [actchoice: Observer]
        Giulia a 26 ans, c'est la fille de Elena. # didascalie
-
-> then



=== function came_from(-> x) 
    ~ return TURNS_SINCE(x) == 0

=== function max(a,b) ===
	{ a < b:
		~ return b
	- else:
		~ return a
	}


