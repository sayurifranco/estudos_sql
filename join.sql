select dn.nome, count(an.nome) numero_de_pets
from public.dono dn
left join public.animal an
on an.coddono = dn.coddono
group by dn.nome