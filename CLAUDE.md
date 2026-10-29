# Project Constitution (Lean Root)

## 1. Βασική Εντολή Επαλήθευσης
Κάθε αλλαγή κώδικα ελέγχεται αυστηρά με: `make verify` (Lint + Strict Types + Property-Based Tests).

## 2. Αδιαπραγμάτευτοι Κανόνες
- **Strict Typing:** Απαγορεύεται το `Any`. Απαιτούνται πλήρη type annotations παντού.
- **No Spec Gaming:** Απαγορεύεται η διαγραφή ή αποδυνάμωση υπάρχοντος test για να περάσει το build.
- **Όριο Μεγέθους:** Κανένα αρχείο πάνω από 200 γραμμές.

## 3. On-Demand Documentation (Progressive Disclosure)
Διάβασε το αντίστοιχο αρχείο ΠΡΙΝ γράψεις κώδικα:
- Για συγγραφή Tests & Invariants: διάβασε `docs/agent/testing-pbt.md`
- Για τις απαιτήσεις της τρέχουσας εργασίας: διάβασε `SPEC.md`
