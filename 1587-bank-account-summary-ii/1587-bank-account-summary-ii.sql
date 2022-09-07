select name,sum(amount) as balance  from Users as U join Transactions as T on U.account = T.account
    group by U.account
Having sum(amount) > 10000
