#>magical_control:mana/decrease/abs
#
#マナ消費 絶対値
#
#@within function magical_control:mana/decrease/

data modify storage magical_control: temp.Api.Type set value "remove"
data modify storage magical_control: temp.Api.Value set from entity @s SelectedItem.tag.Mana.Amount
function magical_control:api/mana/ with storage magical_control: temp.Api