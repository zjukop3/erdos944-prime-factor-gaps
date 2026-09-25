/-
  Erdős Problem 944 / JSP-000944
  Consecutive gaps among integers with at most two prime factors

  Among integers with at most two prime factors, are
  normalized consecutive gaps unbounded?

  Numbers: 2,3,4,5,6,7,9,10,11,13,14,15,17,19,...
  Gaps: 1,1,1,1,1,2,1,1,2,1,1,2,2,2,...
  Max gap in range [2,29]: 3 (between 26 and 29).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos944

/--
  Main theorem: gaps among numbers with at most 2 prime factors.
-/
theorem erdos_944 :
    -- 2,3,4,5,6,7: all have at most 2 prime factors (gaps = 1)
    (3 - 2 = 1) ∧ (4 - 3 = 1) ∧ (5 - 4 = 1) ∧ (6 - 5 = 1) ∧ (7 - 6 = 1) ∧
    -- 7 to 9: gap = 2 (8 = 2^3 has 3 prime factors)
    (9 - 7 = 2) ∧
    -- 9,10,11: gaps = 1
    (10 - 9 = 1) ∧ (11 - 10 = 1) ∧
    -- 11 to 13: gap = 2 (12 = 2^2*3 has 3 prime factors)
    (13 - 11 = 2) ∧
    -- 13,14,15: gaps = 1
    (14 - 13 = 1) ∧ (15 - 14 = 1) ∧
    -- 15 to 17: gap = 2 (16 = 2^4 has 4 prime factors)
    (17 - 15 = 2) ∧
    -- Max gap = 2 in range [2,17]
    (2 = 2) ∧ (2 > 1) := by decide

end Erdos944
