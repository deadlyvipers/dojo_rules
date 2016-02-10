git tag  -a v1.2.0 -m "Created v1.2.0 tag."
git push --tags

Dojo Rules
git pull
git checkout new_rules
printf "Dojo Rules\n==========\n* Always be on time\n* Always take off your shoes\n* Keep the dojo tidy\n* Never bring live blades on the tatami\n* Respect your opponents\n* Most Sensei's should be respected\n* no coffee in the dojo" > dojo_rules.md
git commit -am "Fixed spelling errors"
git push origin new_rules
==========
* Always be on time
* Always take off your shoes
* Keep the dojo tidy
* Never bring live blades on the tatami
* Respect your opponents
* Most Sensei's should be respected
* no coffe in the Dojo
