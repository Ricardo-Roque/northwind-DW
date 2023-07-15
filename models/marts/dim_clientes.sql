with 
    tabela_clientes as (
        select
            id_cliente						
            , nome_empresa					
            , nome_contato						
            , cargo_profissional				
            , endereco_cliente						
            , cidade_clinte 					
            , regiao_cliente						
            , cep_cliente						
            , pais_cliente						
        from {{ ref('stg_erp__clientes') }}
    )

select *
from tabela_clientes