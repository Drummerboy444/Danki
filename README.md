# Danki

# Style Guide

## Variable Naming

We use Hungarian notation for our variable names (both instance variables and local variables) according to the prefixes in the following table:

| Variable Type | Prefix |
|:-------------:|:------:|
| number | `num` |
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

When declaring an enum we use an uppercase prefix, and uppercase the first letter of the enum. Each value of the enum should be in all caps with words separated with underscores. For example we might have:
```
enum Enum_Actions {
    SLASH,
    SHIELD_BASH
}
```
however, an instance of this enum would still use a lowercase: `var _enum_action = Enum_Actions.SHIELD_BASH`.

## Resource Naming and Group Structure

The conventions for the resource naming and group structure are as follows:
* Objects are prefixed with a lower case "o" and sprites with a lower case "s". For example `oPlayer` and `sPlayer`.
* The scripts and sprites group structure should mirror that of the object group structure (see below for the structure of objects in the inheritance tree).
* Scripts should be related to an object and live in the relevant group for that object. Public scripts should go directly in this group, whereas private scripts should go in a subgroup called "Private". Some utility scripts may not be tied to one object in particular, these should go somewhere sensible and be prefixed by their group name, e.g. `Utility_InstantiateAtOrigin`.
* Script names should be prefixed with the name of the object that they relate to, e.g. `Player_Attack`, for private scripts the name should be in all caps, e.g. `Player_ATTACK`.

## Inheritance Tree

Objects in the Pausable group should all be in part of the inheritance tree. For example `oEntity` is a child of `oPauseable`, so `oEntity` is in a subgroup of the "Pauseable" group called "Entity". Any children of `oEntity` are then in subgroups of the group "Entity" and so on.

Each object in the inheritance tree should inherit its parents create event. They should also have a setup script, for example `Entity_Setup`, that calls its parents setup script and does any other important things that each instance of that object should do. For example, `Entity_Setup` call `Pauseable_Setup` and so on. Some key variables can be passed through these scripts, but usage of this should be limited. Then each object that will be directly instantiated into the room (e.g. the player) should call its parents setup script in its create event. Note that objects that won't be directly instantiated into the room (e.g. oEntity) should not call their parents setup script in their create event.
