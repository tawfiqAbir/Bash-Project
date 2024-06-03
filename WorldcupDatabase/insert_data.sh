#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do  
if [[ $ROUND != round ]]
  then
    TEAMS_WINNER=$($PSQL "select team_id from teams where name='$WINNER'")
    if [[ -z $TEAMS_WINNER ]]
    then
      INSERT_WINNER_RESULT=$($PSQL "Insert into teams(name) values('$WINNER')") 
      if [[ $INSERT_WINNER_RESULT = 'INSERT 0 1' ]]
      then 
      echo "Inserted into teams, $WINNER"
      fi
      TEAMS_WINNER=$($PSQL "select team_id from teams where name='$WINNER'")
    fi

    TEAMS_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT'")
    if [[ -z $TEAMS_OPPONENT ]]
    then
      INSERT_OPPONENT_RESULT=$($PSQL "Insert into teams(name) values('$OPPONENT')") 
      if [[ $INSERT_OPPONENT_RESULT = 'INSERT 0 1' ]]
      then 
      echo "Inserted into teams, $OPPONENT"
      fi
      TEAMS_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT'")
    fi

    INSERT_GAMES_RESULT=$($PSQL "insert into games(year,round,winner_id,winner_goals,opponent_id,opponent_goals) values($YEAR,'$ROUND',$TEAMS_WINNER,$WINNER_GOALS,$TEAMS_OPPONENT,$OPPONENT_GOALS)")
    if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into games, $WINNER : $OPPONENT"
    fi
    
  fi
done