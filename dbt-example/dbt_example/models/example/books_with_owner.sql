with books as (
    select
        *
    from
        {{ ref('books') }}
),
users as (
    select
        *
    from
        {{ ref('users') }}
)

select
    books.*,
    users.name as owner_name,
    users.email as owner_email,
    users.age as owner_age,
    users.prefecture as owner_prefecture,
    users.created_at as owner_created_at,
    users.updated_at as owner_updated_at
from
    books
left join users on books.owner_id = users.id
