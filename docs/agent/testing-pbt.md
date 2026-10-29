# Οδηγός Property-Based Testing (Hypothesis & Deterministic Oracles)
Χρησιμοποίησε τη βιβλιοθήκη `hypothesis` (`from hypothesis import given, strategies as st`) αντί για απλά στατικά παραδείγματα:
1. **Round-Trip Invariant (Αντιστρεψιμότητα):** `decode(encode(x)) == x` (π.χ. Huffman/Reed-Solomon/FFT).
2. **Oracle / Reference Comparison:** Σύγκρινε τον βελτιστοποιημένο σου αλγόριθμο O(N log N) με έναν απλό brute-force αλγόριθμο O(N^2) σε 200 τυχαίες μικρές εισόδους.
3. **Metamorphic & Algebraic Properties:** Επαλήθευσε μαθηματικές ιδιότητες (π.χ. στις αποστάσεις Dijkstra ισχύει η τριγωνική ανισότητα d(u,v) <= d(u,w) + d(w,v)).
