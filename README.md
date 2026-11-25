# Physics

English study knowledge base that follows the folder tree physics/ had before it was reorganised
(quantum mechanics → quantum electrodynamics → electromagnetic fields → photonics and electronics),
with every sub-topic in its own domain. It uses the same Org-note format and shared Emacs reader as
`../computer-science/`, `../remote-sensing/` and `../business/`, and it is registered in **Cerebro**.
Start with [the study map](study/kb/revision/physics-study-map.org).

The base has **180 connected notes** (5027 formulas and figures rendered by `make study-check`). Each
note has a statement or model, a derivation or proof, worked numbers, engineering applications, a
pitfall and links to explore further. The revision domain has three formula sheets, every past paper of the *Basics of Opto-Electronics* exam solved by exercise type, and five sets of
exam problems with full solutions, including the *Circuiti Elettronici Digitali* exam of July 2024
(NMOS mirror, dynamic logic, DRAM, pseudo-NMOS) solved in the course's conventions.

## Layout

| path | content |
|---|---|
| `study/kb/quantum-mechanics/` | 35 notes: postulates, dynamics, 1D systems, angular momentum, symmetries, approximation methods, identical particles, scattering, entanglement and qubits, mathematical foundations (self-adjoint operators, Stone, Wigner/SU(2), C*-algebras and GNS) |
| `study/kb/quantum-optics/` | 10 notes: field quantisation, Fock, coherent and squeezed states, Glauber correlations, beam splitter and HOM, Jaynes–Cummings, spontaneous emission and Purcell, master equations |
| `study/kb/quantum-electrodynamics/` | 16 notes: four-vectors, Klein–Gordon, Dirac, spinors, traces, Feynman propagator, S matrix, Mott, Møller/Bhabha, Compton, Feynman rules, renormalisation, g−2, Lamb shift, strong fields |
| `study/kb/electromagnetic-fields/` | 16 notes: vector calculus, electrostatics, Laplace and capacitance, magnetostatics, Faraday, Maxwell, potentials, Poynting, plane waves, Fresnel, transmission lines, Smith chart, S-parameters, waveguides, antennas |
| `study/kb/optoelectronics/` | 35 notes, 44 figures: dispersion, complex index, Gaussian beams, TIR and evanescent waves, AR coatings and Bragg mirrors, Fabry–Perot, diffraction, coherence, holography, slab waveguides, fibres, dispersion, link budgets, couplers, OTDR, fibre sensors, LEDs and photometry, three/four-level lasers, Q-switching and mode-locking, laser diodes, DFB/VCSEL/QW lasers, amplifiers, pin and APD, photoconductors, receiver circuits, noise, image sensors, solar cells, polarisation, modulators; every note ends with a solved exam-style exercise |
| `study/kb/photonics/` | 10 notes: effective index method, SOI waveguides, directional couplers, MZIs, rings, Bragg gratings, grating couplers, silicon modulators, photonic crystals |
| `study/kb/solid-state/` | 10 notes: Bloch bands, effective mass, statistics, doping, drift–diffusion, recombination, pn junction, diode current, heterojunctions and quantum wells |
| `study/kb/circuits/` | 12 notes: Kirchhoff and Thévenin, LTI systems, phasors, impedance, AC power, Fourier, filters, Laplace, transformer, three-phase distribution, op-amps |
| `study/kb/digital-electronics/` | 15 notes: MOSFET model, capacitances and scaling, diodes and ESD, VTC and noise margins, NMOS inverters, pseudo-NMOS, CMOS inverter, delay, power, static gates, dynamic logic, latches, SRAM, DRAM |
| `study/kb/power-electronics/` | 6 notes: pin diodes, power MOSFETs and IGBTs, thyristors, SiC and GaN, switching converters |
| `study/kb/superconducting-electronics/` | 4 notes: flux quantisation, Josephson junction and RCSJ, RSFQ logic |
| `study/kb/revision/` | 11 notes: study map, three formula sheets, five solved exam sets, the optoelectronics past papers and a 30-problem optoelectronics set over the whole programme |
| `study/kb-config.el` | domain and area order, forbidden words, LaTeX preamble (braket, slashed, circuitikz) |
| `study/study.mk` | the `make study*` targets |
| `study/cerebro-base.el` | registry entry for the Cerebro hub |
| `study/SOURCES.md` | which local book or course document each domain follows |
| `assets/` | course PDFs and textbooks by topic, not versioned (`.gitignore`) |

`assets/` is organised by domain: `quantum-mechanics/`, `quantum-optics/`, `quantum-electrodynamics/`,
`electromagnetic-fields/`, `photonics/`, `optoelectronics/`, `circuits/`, `digital-electronics/`,
`power-electronics/`, `superconducting-electronics/`. Exact duplicates found during the reorganisation
are kept in `assets/duplicates/` (Walls–Milburn, a Kasap copy named `07.flip_flop.pdf`, the second
`semiconductor-power-devices.pdf`) and can be deleted.

## Study

```sh
make study            # open Physics in its own reader
make study-check      # metadata, links, prerequisite graph, forbidden words, formulas and figures
make study-install    # optional: add Physics to the application launcher
make study-uninstall  # remove the launcher entry and profile; notes and reading state stay
nix develop path:.    # make, python, poppler, ngspice
```

In **Cerebro**, select **Physics** and press `RET`; `f` finds a note, `]`/`[` follow the prerequisite
order, `b` returns to the reading bookmark, `H` goes back to the bases, `?` lists the keys. A hub that
is already running reads the registry only at start: restart it to see Physics.

## Reader and Cerebro integration

The standalone instance uses command `physics-study`, Emacs server `physics` and state in
`${XDG_STATE_HOME:-~/.local/state}/physics-emacs`, separate from Cerebro's. The Make targets set
`PHYSICS_ROOT` and use the sibling `../../personal/knowledge-base` checkout when it exists. Cerebro reads
`study/kb` and `study/kb-config.el` directly; its entry in `../../personal/cerebro/bases.el` is

```elisp
("physics" :title "Physics" :root "uni/physics"
 :notes "study/kb" :config "study/kb-config.el")
```

This is a local study folder of the parent repository, with no remote of its own. If it becomes a
submodule, register its URL and `uni/physics` path in the parent's `.gitmodules` and
`registry/projects.yaml` together.

## Editing conventions

One concept per `study/kb/<domain>/<id>.org`; file name and `:ID:` agree. English prose with
`#+title`, `#+summary`, `DOMAIN`, `AREA`, `KIND`, `REQUIRES` (acyclic) and `SEE`; Italian course terms
as `ALIASES`. Formulas between `\( \)` and `\[ \]` (display formulas on one line), figures as
`tikzpicture` (circuits with circuitikz `to[...]` paths inside it), tables at most 86 columns and
without `|` inside cells. Provenance stays in `study/SOURCES.md`, not in the notes. Run
`make study-check` after every change.
