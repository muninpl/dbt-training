
select IS_SUPERHOST
from {{ ref('HOSTS') }}
where IS_SUPERHOST not in (
    'f','t')
    group by IS_SUPERHOST