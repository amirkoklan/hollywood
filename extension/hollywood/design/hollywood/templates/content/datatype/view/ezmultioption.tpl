<div class="block">
{$attribute.content.name}
</div>

{foreach  $attribute.content.multioption_list as $multioptions}
<div class="block">
<label>{$multioptions.name}:</label>
{*<select name="eZOption[{$attribute.id}][]">*}
    {foreach $multioptions.optionlist as $index => $option}
            {if ne( $option.additional_price, '' )}
                {if eq( sum( $index, 1 ), $multioptions.default_option_id )}
                    <input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}" selected="selected">{$option.value}-{$option.additional_price|l10n( currency )}</input>
                {else}
                    <input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}">{$option.value}-{$option.additional_price|l10n( currency )}</input>
                {/if}
            {else}
                {if eq( sum( $index, 1 ), $multioptions.default_option_id)}
                    <input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}" selected="selected">{$option.value}</input>
                {else}
                    <input type="checkbox" name="eZOption[{$attribute.id}][{$option.option_id}]" value="{$option.option_id}">{$option.value}</input>
                {/if}
            {/if}
        {/foreach}
    {*</select>*}
</div>
{/foreach}