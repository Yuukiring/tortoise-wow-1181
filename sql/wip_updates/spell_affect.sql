-- ==============================================
-- Issue #314: Envenom (52531) should also affect Wound Poison, matching Improved Poisons.
-- Old mask 0x1E000 (bits 13-16) only covers Instant/Deadly/Crippling Poison; Wound Poison
-- is bit 28 (SpellFamilyFlags 0x10000000). New mask 0x1001E000 adds it in.
-- Applied via spell_affect rather than a direct spell_template edit (see CONTRIBUTING.md).
-- Effect 1 = proc chance, effect 2 = healing reduction.
-- Caveat: healing reduction is stored as an integer percent, so the 30% boost this grants
-- rounds 6.5 down to 6 per stack; at 5 stacks that's 30% instead of 32.5% (-2.5%).
-- ==============================================
INSERT INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES
(52531, 1, 268558336),
(52531, 2, 268558336);
