# I_CAN_COOK_APP

This prototype has been developed during Hackday at @simplificator.

## Problem

I know that I can cook 30-40 dishes. But I don't remember them all by heart and sometimes I struggle trying to get an idea what to cook. At the same time I don't want to surf through internet looking for any new recipes - I want to cook what I can. 

## Solution
The idea is that user can create a list of dishes that he can cook and render them by categories (breakfast, lunch, dinner) and by time of cooking: less than 30 min, 30-60 min, more than 60 min.

## Project setup

- Clone repo

```bash
# this includes the postgres client (required for gem pg)
brew install postgresql

# includes `bundle install` and `db:setup`
bin/setup

yarn install --check-files

rails db:migrate

bin/rails server
```

- Navigate to localhost:3000
