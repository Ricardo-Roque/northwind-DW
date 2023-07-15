with 
    fonte_cliente as (
        select
            cast(customer_id as string) as id_cliente						
            , cast(company_name	as string) as nome_empresa					
            , cast(contact_name as string) as nome_contato						
            , cast(contact_title as string)	as cargo_profissional				
            , cast(address as string) as endereco_cliente						
            , cast(city	as string) as cidade_clinte 					
            , cast(region as string) as regiao_cliente						
            , cast(postal_code as string) as cep_cliente						
            , cast(country as string) as pais_cliente						
            --, cast(phone as int) as telefone						
            --, fax 	
        from {{ source('erp', 'customers') }}
    )
select *
from fonte_cliente