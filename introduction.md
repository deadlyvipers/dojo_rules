git clone https://github.com/username/dojo_rules.git
cd dojo_rules
echo "On my way to becoming a GitHub Master" > introduction.md
echo "On my way to becoming a GitHub Master. I love Ruby and JavaScript." > introduction.md
git commit -am "Added Code School Path"
git push
git checkout -b deadly_skills
git push origin deadly_skills
printf "On my way to becoming a GitHub Master. I love Ruby and JavaScript.\n\n* Ruby on Rails\n*Git" > introduction.md
git commit -am "Added deadly skills"
git push origin deadly_skills
git add introduction.md
git commit -m "Added introduction"
git push
