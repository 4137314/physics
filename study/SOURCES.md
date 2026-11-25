# Source map

The notes are English concept summaries with original derivations and worked numbers; they follow
the local material in `../assets/` but are not translations or reproductions of it. Course-specific
conventions (for example the MOSFET delay model \(t_{PHL}=0.69\cdot1.7R_{on}C\) and the solved exam
problems) come from the course documents listed here.

| domain | local source (in `assets/`) | scope followed |
|---|---|---|
| quantum-mechanics | `quantum-mechanics/ModernQM.pdf` (Sakurai–Napolitano, 3rd ed.) | postulates, dynamics, angular momentum, symmetries, approximation methods, identical particles, scattering |
| quantum-mechanics (foundations) | `quantum-mechanics/978-3-319-70706-8.pdf` (Moretti, *Spectral Theory and QM*), `Foundations_of_Quantum_Theory…pdf` (Landsman), `978-3-319-64612-1-1.pdf` (Woit), `978-3-642-61458-3.pdf` (Haag, *Local Quantum Physics*) | self-adjointness, spectral theorem, Stone, Wigner, SU(2), C*-algebras, GNS, Gleason, Haag–Kastler |
| quantum-optics | `quantum-optics/quantum-optics.pdf` (Walls–Milburn) | field quantisation, states of light, correlations, JC model, master equations |
| quantum-electrodynamics | `quantum-electrodynamics/elettrodinamica_quantistica.pdf` (Greiner–Reinhardt, *QED*, 4th ed.) | ch. 1–5 and 7: propagators, S matrix, processes, Feynman rules, radiative corrections, strong fields |
| electromagnetic-fields | `electromagnetic-fields/campi-elettromagnetici.pdf` (Ida, *Engineering Electromagnetics*), `Pozar_Microwave Engineering(2012).pdf`, Bettini, Papachristou | statics to antennas; lines, Smith chart, S-parameters |
| optoelectronics | `optoelectronics/1.pdf`–`4.pdf` (course decks), `optoelectronics_and_photonics_2nd_edition_so_kasap.pdf`, `optoelectronics_problems.pdf`, `OptoElectronics_Formulas.pdf`, `coherence.pdf`, `Fresnel Equations.pdf`, `basics-of-optoelectronics/Material/` (course chapters 1–5, lab handouts and datasheets) | Kasap ch. 1–4 (wave optics, waveguides and fibres, LEDs, lasers and amplifiers) plus detectors, solar cells, modulators |
| revision (optoelectronics exam) | `optoelectronics/basics-of-optoelectronics/Exams/` (papers of February 2022, January, February and June 2024, June 2025; the January 2024 correction; the formula sheet handed out at the exam) | every exercise re-solved; two slips of the correction are pointed out |
| photonics | `photonics/Silicon Photonics Design…pdf` (Chrostowski–Hochberg), `optoelectronics/photonic-crystals-book.pdf` (Joannopoulos et al.) | SOI components and photonic crystals |
| solid-state | `digital-electronics/03.solid_state_physics.pdf`, `circuits/semiconductor-devices.pdf` | bands, statistics, transport, junctions |
| circuits | `circuits/01_sistemi_LTI.pdf` … `06_trasformatore_generazione_distribuzione.pdf` (Fisica 2, Teoria dei Circuiti), Horowitz–Hill | LTI, phasors, symbolic method, Fourier, Laplace, transformer, distribution; op-amps from Horowitz–Hill |
| digital-electronics | `digital-electronics/04`–`08*.pdf`, `20.esercitazioni.pdf`, `ES1…`, `Es2…`, `exam_ced_08_07_2024.pdf` | MOS model, NMOS/CMOS inverters, logic, sequential, memories; exam problems solved in revision |
| power-electronics | `power-electronics/semiconductor-power-devices.pdf` (Lutz et al.) | pin diodes, MOSFET/IGBT, thyristors, wide-bandgap devices |
| superconducting-electronics | `superconducting-electronics/978-3-031-47475-0.pdf` (Krylov–Jabbari–Friedman, *SFQ IC Design*) | superconductivity, Josephson junctions, RSFQ |
| revision | all of the above | formula sheets and original practice problems; the July 2024 CED exam problems are re-solved |

Corrections made while writing: the Klein–Nishina ratio at 1.33 MeV is 0.27 (the high-energy
approximation gives 0.31); the photodiode example with a 50 Ω load is thermal-noise limited at 24 dB
SNR.

The notes cite the papers that first proved, measured or proposed each result with org-cite,
`[cite:@key]`, next to the statement they support; the entries are in `refs.bib`. Their DOIs,
volumes and pages were checked against Crossref on 2026-11-25; the few works Crossref does not hold
(books, a patent, some journals of the 19th and early 20th century) are cited without a DOI. The
links to web pages that the notes used to end with were removed on the same day.
