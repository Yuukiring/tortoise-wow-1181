-- ==============================================
-- Improved Ambush (14079/14080/14081) SpellFamilyMask0 was 8389120, which OR's in
-- CF_ROGUE_MISC_COMBO_MOVES (bit 23) on top of CF_ROGUE_AMBUSH (bit 9). That extra
-- bit is also set on Backstab, Sinister Strike, and Eviscerate, so the talent's
-- energy refund procs off non-crit hits from those too, not just Ambush.
-- Correct mask is 512 (CF_ROGUE_AMBUSH only). Present since sql/base's initial
-- 1.18.1 spell_proc_event import (e1a48b4, 2026-05-03).
-- ==============================================
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 512 WHERE `entry` IN (14079, 14080, 14081) AND `SpellFamilyMask0` = 8389120;
