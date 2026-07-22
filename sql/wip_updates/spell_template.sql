-- ==============================================
-- Issue #314: Shadow of Death (52710) needs its combo-point-store-on-apply /
-- accumulate-on-proc / detonate-on-remove logic bound to the new spell script system.
-- ==============================================
UPDATE `spell_template` SET `script_name` = 'spell_rogue_shadow_of_death' WHERE `entry` = 52710;
