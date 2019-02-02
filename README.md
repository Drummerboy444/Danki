# Danki

# Style Guide

## Naming Convention

We use Hugarian notation for our variable names (both instance variables and local variables) according to the prefixes in the following table:

| Variable Type | Prefix |
|:-------------:|:------:|
| nubmer | `num` |
| string | `str` |
| enumeration | `enum` |
| boolean | `bool` |
| array | `arr`|
| ds_list | `list` |
| ds_map | `map` |
| ds_grid | `grid` |
| instance_id | `id` |
| object_index | `obj` |
| sprite_index | `sprite` |

Local variables should be prefixed with an underscore, whereas instance variables should not. For example, say player health is stored as an instance variable on the player, the variable would be `num_playerHealth`. However, say we have a local variable that tells us if something has been hit, the variable would be `_bool_isHit`.

### Enums

When declaring an enum we use an uppercase prefix, and upercase the first letter of the enum. Each value of the enum should be in all caps with words separated with underscores. For example we might have
```
enum Enum_Actions {
    SLASH,
    SHIELD_BASH
    }
```
however, an instance of this enum would still use a lowercase: `var _enum_action = Enum_Actions.SHIELD_BASH`.
