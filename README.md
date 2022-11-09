# Orthogonal-glycolytic-pathway-enables-directed-evolution-of-noncanonical-cofactor-oxidase
This is the Rosetta docking protocol used in the manuscript from Professor Han Li lab at UC Irvine and Professor Justin Siegel lab at UC Davis. The Rosetta files listed here are for docking the ligand NMN, ligand FAD and LPNox LP-7 variant. Rosetta version: 2018.24.post.dev+17.master.450949e 450949e481542459ae6534e867a61fe9709846be

In order to successfully run the simulation, all the files are required:
1.  PDB file with the target ligands NMN and FAD bound in the active site. (LP7.pdb)
2.  NMN parameter file that is readable by Rosetta and the corresponding conformers' library pdb. (X00.params, X00_conformers.pdb)
3.  Constraint file that restricts the movement of active site catalytic residues and relative position between ligand and active site residues (LPNox.enzdes.cst)
4.  Rosetta simulation option flag file (dock_flags_LP7 or dock_flags_LP7_mutant)
5.  Rosetta ligand docking protocol xml file (docking.xml or docking_mutant.xml)
6.  Slurm submission file, only executed for cluster jobs running (submit_cluster_LP7.bash or submit_cluster_LP7_mutant.bash)

Below are example commands for generating protein-ligand models for LP7:

Run the following command to perform Rosetta docking locally in MacOS system:
Rosetta/main/source/bin/rosetta_scripts.default.macosclangrelease -database /Rosetta/main/database @dock_flags_LP7 -out:path:all ./

Run the following command to perform Rosetta docking in the cluster:
sbatch submit_cluster_LP7.bash
