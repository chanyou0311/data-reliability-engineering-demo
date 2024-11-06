select
  published_date
from
  {{ ref('books_with_owner') }}
where
  published_date > today()
 
 