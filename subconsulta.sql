SELECT an.nome
FROM public.animal an, public.dono dn
WHERE an.coddono = (select dn.coddono from public.dono dn where dn.bairro = 'Vila Nova')
GROUP BY an.nome 

/*
or

select an.nome
from public.animal an, public.dono dn
where an.coddono = dn.coddono and dn.bairro = 'Vila Nova'

*/
