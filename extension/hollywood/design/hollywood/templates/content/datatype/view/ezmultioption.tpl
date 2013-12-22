{*<div class="block">
{$attribute.content.name}
</div>*}
{foreach  $attribute.content.multioption_list as $multioptions}
<table class="extras">
{*<label>{$multioptions.name}:</label>
<select name="eZOption[{$attribute.id}][]">*}
    {foreach $multioptions.optionlist as $index => $option}
            {if ne( $option.additional_price, '' )}
                {if eq( sum( $index, 1 ), $multioptions.default_option_id )}
                    <tr><td><input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}">{$option.value}-{$option.additional_price|l10n( currency )}</input></tr></td> 
                {else}
                   <tr><td><input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}">{$option.value}-{$option.additional_price|l10n( currency )}</input></tr></td> 
                {/if}
            {else}
                {if eq( sum( $index, 1 ), $multioptions.default_option_id)}
                   <tr><td><input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}">{$option.value}</input></tr></td> 
                {else}
                   <tr><td><input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}">{$option.value}</input></tr></td> 
                {/if}
            {/if}
        {/foreach}
    {*</select>*}
</table>
{/foreach}