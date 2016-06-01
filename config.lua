require 'defines'

-- times per second (max 60) that belt combinators will search connected belts for items.
-- polling too frequently, when you have lots of these, may cause performance issues.
-- you can dial it to 60 (instant refresh) if you want, but I do not recommend it.
belt_polling_rate = 1
