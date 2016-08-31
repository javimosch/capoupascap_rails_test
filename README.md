## Cap ou pas Cap! (rails example)


##### Description

	Etape 1:

        - L'inscription de l'utilisateur ('devise' for ruby) avec des champ
        suplémmentaire comme le Prénom, L'age et Le type (Masculin, Féminin).

        - La modification de l'utilisateur.

        - La suppression de ce compte.

	Etape 2:

        - Sur la page principale, l'on doit voir 5 personnes aleatoire maximum
        inscrits sur le site (un peu d'algo en ruby)


        - Sur chaque personne, un score (ex: score = 100 points) et un bouton
        "Défier".

	Etape 3:

        Une fois que le joueur aura appuyer sur le bouton "Défier"

        - Une page avec les récapitulatif du joueur défier (Prénom, age, Type)

        - Un champ ou le joueur pourra écrire le défier + un Bouton envoyé.

	Etape4:

        - Vérifier que le joueur qui est défier un bien reçu le défi avec
          possibilité de l'accepter ou le décliner.

        - Si le joueur accepte le défie + 30 points a celui-ci et suppression
		automatique du challenge.



![Alt text](https://s18.postimg.org/a920trreh/Untitled.jpg "Optional title")


#### Steps 1..4

#### 1 -

 * Create a Cloud9 VM with a barebone Rails4 project ready to deploy to heroku.

	References
 	* [getting-started-with-rails4#local-workstation-setup](https://devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup)

#### 2 -

 * Configure Rails4 project to work correctly with postgresSQL on Cloud9 VM.

	References
 	* [cloud9 and postgress (stackoverflow)](http://stackoverflow.com/questions/26545746/cloud9-postgres)
 	* [cloud9 setup with postgress tutorial](https://github.com/Aerogami/guides/wiki/Cloud9-workspace-setup-with-Rails-and-Postgresql)

#### 3 -

 * Load bootstrap libraries for rails.
 * Code steps from the description.

	References
 	* [rails-bootstrap-form library](https://github.com/bootstrap-ruby/rails-bootstrap-forms)
 	* [ruby on rails official guides](http://guides.rubyonrails.org)
 	* [ruby on rails official api doc](http://api.rubyonrails.org)
 	* [ruby on rails apidock documentation](http://apidock.com/rails/)

#### More References

 * [association_basics](http://guides.rubyonrails.org/association_basics.html)
 	
    
 ## Local development
 
    OPTION 1: install heroku CLI and run heroku local
	OPTION 2: install foreman and run foreman start
  
    
  
```javascript
//create file .env and enviromental variables. Ex:
RACK_ENV=development
PORT=8080
USERNAME=admin
PASSWORD=root
``` 


## Try on heroku: 
 
[capoupascap-rails-test.herokuapp.com](http://capoupascap-rails-test.herokuapp.com)






