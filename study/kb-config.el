;;; kb-config.el --- the physics base for the knowledge-base reader -*- lexical-binding: t; -*-

;; Loaded by the reader (flake input knowledge-base, `mkReader') before the notes are read.
;; Domains in study order: from the quantum theory down to the devices and circuits that
;; are built on it.  The area named like its domain holds the note presenting the subject.

(setq kb-domains '("revision" "quantum-mechanics" "quantum-optics" "quantum-electrodynamics"
                   "electromagnetic-fields" "optoelectronics" "photonics" "solid-state"
                   "circuits" "digital-electronics" "power-electronics"
                   "superconducting-electronics")
      kb-areas
      '("study-map" "quantum-mechanics" "quantum-optics" "quantum-electrodynamics"
        "electromagnetic-fields" "optoelectronics" "photonics" "solid-state" "circuits"
        "digital-electronics" "power-electronics" "superconducting-electronics"
        ;; quantum mechanics
        "postulates" "dynamics" "one-dimensional-systems" "angular-momentum" "symmetries"
        "approximation-methods" "many-particles" "quantum-information"
        "mathematical-foundations"
        ;; quantum optics
        "field-quantization" "states-of-light" "coherence" "light-matter"
        ;; quantum electrodynamics
        "relativistic-wave-equations" "scattering-theory" "qed-processes"
        "radiative-corrections"
        ;; electromagnetic fields
        "static-fields" "maxwell" "waves" "transmission-lines" "guided-waves" "radiation"
        ;; optoelectronics and photonics
        "wave-optics" "fibers" "light-sources" "photodetectors" "modulators"
        "silicon-photonics" "photonic-crystals"
        ;; solid state, circuits, electronics
        "band-theory" "carriers" "junctions" "lti-systems" "ac-circuits" "transforms"
        "power-systems" "analog-building-blocks" "mos-devices" "inverters" "logic-gates"
        "sequential" "memories" "power-devices" "converters" "josephson" "sfq-logic"
        ;; revision
        "formula-sheets" "exam-practice")
      ;; Notes describe concepts: no pointers to the course material.
      kb-forbidden
      "\\b\\(?:TODO\\|FIXME\\|[Ss]lides?\\|[Ll]ectures?\\|[Ll]ezion[ei]\\|file:\\)\\b")

;; Dirac notation, circuits and diagrams.
(kb-preamble-add "\\usepackage{braket,slashed}")
(kb-preamble-add "\\usepackage[american]{circuitikz}")
(kb-preamble-add "\\usetikzlibrary{arrows.meta,decorations.pathmorphing,decorations.markings,patterns,shapes.geometric,calc}")
(kb-preamble-add "\\newcommand{\\dd}{\\mathrm{d}}\\newcommand{\\ii}{\\mathrm{i}}\\newcommand{\\dg}{^{\\dagger}}\\newcommand{\\Tr}{\\operatorname{Tr}}")

;; Display formulas are rendered as inline $\displaystyle ...$: a wide text block keeps
;; them on one line instead of letting TeX break them at relations.
(kb-preamble-add "\\setlength{\\textwidth}{40cm}")

;; Plots: legend in one row above the axes, never on top of the curves.
(kb-preamble-add "\\pgfplotsset{every axis/.append style={legend style={at={(0.5,1.04)}, anchor=south, legend columns=-1, /tikz/every even column/.append style={column sep=8pt}}, xlabel style={yshift=-2pt}, ylabel style={yshift=2pt}}}")
