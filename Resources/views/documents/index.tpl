{extends file="parent:documents/index.tpl"}

{* Locher ensures that each position's supplierNumber is displayed *}
{block name="document_index_table_nr"}
    <td align="left" width="15%" class="bottom-lined">
        {$position.articleordernumber|truncate:14:""}{if $Document.name == 'Pickware Pickliste'}<br>{$position.meta.suppliernumber}{/if}
    </td>
{/block}

{* Locher ensures that the internal comment is displayed in every picklist *}
{block name="document_index_info_dispatch"}
    {if $Document.name == 'Pickware Pickliste'}
        <div class="info">
            <p>
                <strong>Interner Kommentar</strong>: {if $Order._order.internalcomment}{$Order._order.internalcomment}{else}-{/if}
            </p>
        </div>
    {/if}
    {$smarty.block.parent}
{/block}