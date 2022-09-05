# actual equality test
# TESTS
if [[ $(stat -c %a 1) == "100" ]]
then
        echo "-- Test 1 passed"
        echo
    I+=1
else
        echo "-- Test 1 failed, check 1"
        echo
fi
#
if [[ $(stat -c %a 2) == "356" ]]
then
        echo "-- Test 2 passed"
        echo
    I+=1
else
        echo "-- Test 2 failed, check 2"
        echo
fi
#
if [[ $(stat -c %a 3) == "1" ]]
then
        echo "-- Test 3 passed"
        echo
    I+=1
else
        echo "-- Test 3 failed, check 3"
        echo
fi
#
if [[ $(stat -c %a 4) == "1" ]]
then
        echo "-- Test 4 passed"
        echo
    I+=1
else
        echo "-- Test 4 failed, check 4"
        echo
fi
#
if [[ $(stat -c %a 5) == "644" ]]
then
        echo "-- Test 5 passed"
        echo
    I+=1
else
        echo "-- Test 5 failed, check 5"
        echo
fi
#
if [[ $(stat -c %a ./bin) == "755" ]]
then
        echo "-- Test 6 passed"
        echo
    I+=1
else
        echo "-- Test 6 failed, check bin"
        echo
fi
#
if [[ $(stat -c %a ./chat.png) == "644" ]]
then
        echo "-- Test 7 passed"
        echo
    I+=1
else
        echo "-- Test 7 failed, check chat.png"
        echo
fi
#
if [[ $(stat -c %a ./etudiant1) == "666" ]]
then
        echo "-- Test 8 passed"
        echo
    I+=1
else
        echo "-- Test 8 failed, check etudiant1"
        echo
fi
#
if [[ $(stat -c %a ./etudiant2) == "777" ]]
then
        echo "-- Test 9 passed"
        echo
    I+=1
else
        echo "-- Test 9 failed, check etudiant2"
        echo
fi
#
if [[ $(stat -c %a ./identity.pem) == "644" ]]
then
        echo "-- Test 10 passed"
        echo
    I+=1
else
        echo "-- Test 10 failed, check identity.pem"
        echo
fi
#
if [[ $(stat -c %a%G ./npm-project) == "755wheel" ]]
then
        echo "-- Test 11 passed"
        echo
    I+=1
else
        echo "-- Test 11 failed, check npm-project"
        echo
fi
#
if [[ $(stat -c %a ./npm-project/package.json) == "644" ]]
then
        echo "-- Test 12 passed"
        echo
    I+=1
else
        echo "-- Test 12 failed, check npm-project/package.json"
        echo
fi
#
if [[ $(stat -c %a ./npm-project/run) == "755" ]]
then
        echo "-- Test 13 passed"
        echo
    I+=1
else
        echo "-- Test 13 failed, check npm-project/run"
        echo
fi
#
if [[ $(stat -c %a ./npm-project/src) == "755" ]]
then
        echo "-- Test 14 passed"
        echo
    I+=1
else
        echo "-- Test 14 failed, check npm-project/src"
        echo
fi
#
if [[ $(stat -c %a ./run.sh) == "644" ]]
then
        echo "-- Test 15 passed"
        echo
    I+=1
else
        echo "-- Test 15 failed, check run.sh"
        echo
fi
#
if [[ $(stat -c %a ./tutoriel-js) == "755" ]]
then
        echo "-- Test 16 passed"
        echo
    I+=1
else
        echo "-- Test 16 failed, check tutoriel-js"
        echo
fi
#
if [[ $(stat -c %a  ./tutoriel-js/app.js) == "644" ]]
then
        echo "-- Test 17 passed"
        echo
    I+=1
else
        echo "-- Test 17 failed, check tutoriel-js/app.js"
        echo
fi
#
if [[ $(stat -c %a  ./tutoriel-js/bin) == "755" ]]
then
        echo "-- Test 18 passed"
        echo
    I+=1
else
        echo "-- Test 18 failed, check tutoriel-js/bin"
        echo
fi
#
if [[ $(stat -c %a  ./tutoriel-js/bin/www) == "755" ]]
then
        echo "-- Test 19 passed"
        echo
    I+=1
else
        echo "-- Test 19 failed, check tutoriel-js/bin/www"
        echo
fi
#
if [[ $(stat -c %a  ./tutoriel-js/package.json) == "644" ]]
then
        echo "-- Test 20 passed"
        echo
    I+=1
else
        echo "-- Test 20 failed, check tutoriel-js/package.json"
        echo
fi
#
if [[ $(stat -c %a  ./tutoriel-js/public/stylesheets/style.css) == "644" ]]
then
        echo "-- Test 21 passed"
        echo
    I+=1
else
        echo "-- Test 21 failed, check  ./tutoriel-js/public/stylesheets/style.css"
        echo
fi
#
if [[ $(stat -c %a  ./ynov-logo.svg) == "644" ]]
then
        echo "-- Test 22 passed"
        echo
    I+=1
else
        echo "-- Test 22 failed, check ynov-logo.svg"
        echo
fi
