with books as (
    select
        *
    from
        {{ ref('books_with_owner') }}
)

select
    owner_prefecture,
    count(*) as book_count
from
    {{ ref('books_with_owner') }}
group by owner_prefecture
