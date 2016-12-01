###################
## CLuster stuff ##
###################

SUBMIT = eval

#################
## Directories ##
#################

SRCDIR = $(CURDIR)/src
INPUT = $(CURDIR)/input
CHEMICAL = $(INPUT)/chemical
PHENOTYPEDIR = $(CHEMICAL)/phenotypes
PHENOTYPESTRAINSDIR = $(CHEMICAL)/strains
MUTATION = $(CURDIR)/mutations
SICKNESSDIR = $(CURDIR)/sickness
ASSOCIATIONDIR = $(CURDIR)/associations
ANNOTATION = $(CURDIR)/annotations
PLOTDATA = $(CURDIR)/plotdata
PLOTDIR = $(CURDIR)/plots
SCHEMEDIR = $(CURDIR)/schemes
FIGUREDIR = $(CURDIR)/figures
VEPDIR = $(CURDIR)/strains-scores

############
## Files ##
############

GENOME = genome.gbk

UNIPROT = $(MUTATION)/uniprot.txt
UNIPROTSIZES = $(MUTATION)/uniprot_sizes.txt

# Uniprot features
FEATURES = $(MUTATION)/features.tsv
FEATURECATEGS = $(INPUT)/features.txt
FILTEREDFEATURES = $(MUTATION)/filtered_features.tsv
FEATURESBED = $(MUTATION)/features.bed

# Uniprot mutations
MUTATIONS = $(MUTATION)/mutations.txt
ANNMUTATIONS = $(INPUT)/mutations.tsv
TOLMUTATIONS = $(MUTATION)/tolerated.txt
DELMUTATIONS = $(MUTATION)/deleterious.txt

# All nonsyn mutations observed (external data)
ALLNONSYN = $(INPUT)/all_nonsynmuts.tsv
ALLNONSYNBED = $(MUTATION)/all_nonsynmuts.bed
# All sift scores for the mutations
ALLSIFT = $(INPUT)/all_sift.tsv
ALLSIFTBED = $(MUTATION)/all_sift.bed
OBSSIFT = $(INPUT)/all_sift_nonsyn.tsv
OBSSIFTBED = $(MUTATION)/all_sift_nonsyn.bed
# All foldx scores for the mutations
EXPFOLDX = $(INPUT)/exp.tab
EXPFOLDXMOD = $(INPUT)/mod.tab
ALLFOLDX = $(INPUT)/all_foldx.tsv
ALLFOLDXBED = $(MUTATION)/all_foldx.bed
OBSFOLDX = $(INPUT)/all_foldx_nonsyn.tsv
OBSFOLDXBED = $(MUTATION)/all_foldx_nonsyn.bed
# Accessibility data
ACCESSIBILITY = $(INPUT)/all_accessibility.bed
ALLACCESSIBILITY = $(MUTATION)/all_accessibility.bed

# Overlap between Uniprot features and non-syn mutations
OBSFEATURES = $(MUTATION)/observed_features.bed
OBSOTHERS = $(MUTATION)/observed_others.bed
# SIFT data that overlaps with Uniprot features
ALLSIFTFEATURES = $(MUTATION)/all_sift_features.bed
ALLSIFTOTHERS = $(MUTATION)/all_sift_others.bed
SIFTFEATURES = $(MUTATION)/sift_features.bed
SIFTOTHERS = $(MUTATION)/sift_others.bed

ESSENTIAL = $(MUTATION)/essential.txt
ALLESSENTIALMUTS = $(MUTATION)/essential_nonsynmuts.tsv

ECKFILE = $(MUTATION)/eck_uniprot.tsv
GIFILE = $(MUTATION)/gi_uniprot.tsv
CONVERSION = $(MUTATION)/locus_uniprot.tsv

# Annotations sets
# Biocyc
PATHWAYS = $(ANNOTATION)/biocyc.pathways.txt
PATHWAYSORIG = $(INPUT)/biocyc.pathways.orig.txt
COMPLEXES = $(ANNOTATION)/biocyc.complexes.txt
COMPLEXESORIG = $(INPUT)/biocyc.complexes.orig.txt
# Operons
OPERONS = $(ANNOTATION)/operons.txt
OPERONSORIG = $(INPUT)/operons.orig.txt
# PPI
PPI = $(ANNOTATION)/ecoli_ppis_y2h_lit.txt

# Roary pangenome
PANGENOME = $(INPUT)/gene_presence_absence.csv
FIXEDPANGENOME = $(INPUT)/pangenome.csv
CONSERVATION = $(MUTATION)/bactNOG.members.tsv

# Analysis on mutations
TOLMUTATIONS = $(MUTATION)/tolerated.txt
DELMUTATIONS = $(MUTATION)/deleterious.txt
# TODO: add rule to generate this from observed SIFT data
TOLSIFT = $(INPUT)/tolerated.sift.txt
DELSIFT = $(INPUT)/deleterious.sift.txt

# Input (from external data)
TREE = $(INPUT)/tree.nwk
NONSYNCOUNT = $(INPUT)/strains_nonsyn.txt
PANGENOMECOUNT = $(INPUT)/strains_pangenome.txt
EVOLUTION = $(INPUT)/evolution_experiment.txt
OUTGROUPS = $(INPUT)/outgroups.txt

SCREENING = $(CHEMICAL)/emap.matrix.txt
SCREENINGFDR = $(CHEMICAL)/emap.fdr.txt
ASCREENING = $(CHEMICAL)/emap.matrix.all.txt
CONDITIONSDETAILS = $(CHEMICAL)/conditions_details.tsv
CONDITIONSMOA = $(CHEMICAL)/conditions_moa.tsv
REPLICATES1 = $(CHEMICAL)/matrixA.txt
REPLICATES2 = $(CHEMICAL)/matrixB.txt
REPLICATES3 = $(CHEMICAL)/matrixC.txt
SHARED = $(CHEMICAL)/shared_conditions.txt
DELETION = $(CHEMICAL)/all_genes_matched_and_joined_New_NT.txt
DELETIONFDR = $(CHEMICAL)/deletion.all.fdr.txt
PHENOTYPEDIRDONE = $(CHEMICAL)/.phenotypes.done
SEQUENCED = $(INPUT)/sequenced.txt

# Sickness files
CLUSTERS = $(SICKNESSDIR)/clusters.tsv
COMMONPROP = 0.05
UNCOMMONPROP= 0.05
COMMON = $(SICKNESSDIR)/common.txt 
UNCOMMON = $(SICKNESSDIR)/uncommon.txt
SICKNESS = $(SICKNESSDIR)/123456/all.txt
SCORE = $(SICKNESSDIR)/scores.done
PROFILEDATA = $(SICKNESSDIR)/sickness_profile.done
AUCDATA = $(SICKNESSDIR)/auc.done
BOOTSTRAPSDATA = $(SICKNESSDIR)/bootstraps.done
COLLECTBOOTSTRAPS = $(SICKNESSDIR)/collected.done

# Associations
ASSOCIATIONDATA = $(ASSOCIATIONDIR)/.associations.done

# Generated data for plots
FEATURESDATA = $(PLOTDATA)/features.tsv
SIFTFEATURESDATA = $(PLOTDATA)/sift_features.tsv
ACCESSIBILITYDATA = $(PLOTDATA)/accessibility.tsv
FOLDXACCESSIBILITYDATA = $(PLOTDATA)/foldx_accessibility.tsv
PURITYDATA1 = $(PLOTDATA)/purity1.txt
PURITYDATA2 = $(PLOTDATA)/purity2.txt
BOOTSTRAP1 = $(PLOTDATA)/bootstrap1.txt
BOOTSTRAP2 = $(PLOTDATA)/bootstrap2.txt
BOOTSTRAP3 = $(PLOTDATA)/bootstrap3.txt

# Plots
TREEPLOT = $(PLOTDIR)/tree.svg
TREEBARS = $(PLOTDIR)/tree_colorbars.svg
TREELEGEND = $(PLOTDIR)/tree_legend.svg
CONSTRAINTSPLOT = $(PLOTDIR)/constraints.svg
ESSENTIALPLOT = $(PLOTDIR)/sickness_essential.svg
CORRELATIONPLOT = $(PLOTDIR)/sickness_correlation.svg
ROCPLOT = $(PLOTDIR)/sickness_roc.svg
ANNOTATIONPLOT = $(PLOTDIR)/sickness_annotation.svg
PCHEMICAL = $(PLOTDIR)/p_chemical.svg
PPURITY = $(PLOTDIR)/p_purity.svg
PTARGETS = $(PLOTDIR)/p_targets.svg
PCORRELATION = $(PLOTDIR)/p_correlation.svg
PCORRELATIONL = $(PLOTDIR)/p_correlation_legend.svg
PCORRELATIONC = $(PLOTDIR)/p_correlation_colorbar.svg
PREPLICATES = $(PLOTDIR)/p_replicates.svg
PREPLICATESA = $(PLOTDIR)/p_replicates_all.svg
PTREEPLOT = $(PLOTDIR)/ptree.svg
PTREEBARS = $(PLOTDIR)/ptree_colorbars.svg
OVERALLPLOT = $(PLOTDIR)/overall_auc.svg
CONDITIONSPLOT = $(PLOTDIR)/conditions_auc.svg
CATEGORIESPLOT = $(PLOTDIR)/categories_auc.svg
ASSOCIATIONPLOT = $(PLOTDIR)/association_auc.svg
EXAMPLE1PLOT = $(PLOTDIR)/example_1.svg
EXAMPLE2PLOT = $(PLOTDIR)/example_2.svg
EXAMPLE1APLOT = $(PLOTDIR)/example_1a.svg
EXAMPLE2APLOT = $(PLOTDIR)/example_2a.svg
EXAMPLE2APLOT = $(PLOTDIR)/example_2a.svg
EXAMPLEROCPLOT = $(PLOTDIR)/example_roc.svg

# Schemes
SCHEMESICKNESS = $(SCHEMEDIR)/gene_sickness.svg
SCHEMEPHENOTYPES = $(SCHEMEDIR)/phenotypes.svg
SCHEMEPREDICTIONS = $(SCHEMEDIR)/prediction.svg

# Figures
FIGURE1 = $(FIGUREDIR)/figure_1.svg
FIGURE2 = $(FIGUREDIR)/figure_2.svg
FIGURE3 = $(FIGUREDIR)/figure_3.svg
FIGURE4 = $(FIGUREDIR)/figure_4.svg

###################################
## Variants and pangenome counts ##
###################################

$(NONSYNCOUNT):
	$(SRCDIR)/get_nonsyn > $@

$(PANGENOMECOUNT):
	$(SRCDIR)/get_all_pangenomes > $@

##############################
## Non-synonymous mutations ##
##############################

$(ALLNONSYN):
	cat $(VEPDIR)/*/nonsynmuts.tsv > $@

$(ALLNONSYNBED): $(ALLNONSYN)
	$(SRCDIR)/nonsyn2bed $(ALLNONSYN) > $@

##################
## Uniprot data ##
##################

$(UNIPROT): $(GENOME)
	$(SRCDIR)/gbk2uniprot $(GENOME) > $@
$(UNIPROTSIZES): $(GENOME)
	$(SRCDIR)/gbk2uniprot $(GENOME) --size > $@

$(FEATURES): $(UNIPROT)
	$(SRCDIR)/uniprot_features $< > $@

$(FILTEREDFEATURES): $(FEATURES) $(FEATURECATEGS)
	-rm $@
	for categ in $$(cat $(FEATURECATEGS)); do grep $$categ $(FEATURES) >> $@; done

$(FEATURESBED): $(FILTEREDFEATURES)
	$(SRCDIR)/features2bed $(FILTEREDFEATURES) > $(FEATURESBED)

$(OBSFEATURES): $(ALLNONSYNBED) $(FEATURESBED)
	bedtools intersect -a $(ALLNONSYNBED) -b $(FEATURESBED) | sort > $@
$(OBSOTHERS): $(ALLNONSYNBED) $(FEATURESBED)
	bedtools intersect -a $(ALLNONSYNBED) -b $(FEATURESBED) -v | sort > $@

$(MUTATIONS): $(UNIPROT)
	$(SRCDIR)/uniprot_mutations $(UNIPROT) > $(MUTATIONS)

$(TOLMUTATIONS): $(ANNMUTATIONS) $(ALLESSENTIALMUTS)
	$(SRCDIR)/mutations2nonsyn $(ANNMUTATIONS) $(TOLMUTATIONS) $(DELMUTATIONS) --essential $(ALLESSENTIALMUTS) 

###############
## SIFT data ##
###############


$(OBSSIFT):
	cat $(VEPDIR)/*.sift.* | sort | uniq > $@
$(ALLSIFTBED): $(ALLSIFT)
	$(SRCDIR)/sift2bed $< > $@
$(OBSSIFTBED): $(OBSSIFT)
	$(SRCDIR)/sift2bed $< > $@

$(ALLSIFTFEATURES): $(FEATURESBED) $(ALLSIFTBED)
	bedtools intersect -a $(ALLSIFTBED) -b $(FEATURESBED) > $@
$(ALLSIFTOTHERS): $(FEATURESBED) $(ALLSIFTBED)
	bedtools intersect -a $(ALLSIFTBED) -b $(FEATURESBED) -v > $@
$(SIFTFEATURES): $(FEATURESBED) $(OBSSIFTBED)
	bedtools intersect -a $(OBSSIFTBED) -b $(FEATURESBED) > $@
$(SIFTOTHERS): $(FEATURESBED) $(OBSSIFTBED)
	bedtools intersect -a $(OBSSIFTBED) -b $(FEATURESBED) -v > $@

################
## FOLDX data ##
################

$(ALLFOLDX): $(EXPFOLDX) $(EXPFOLDXMOD)
	$(SRCDIR)/get_all_foldx $(EXPFOLDX) $(EXPFOLDXMOD) > $@
$(OBSFOLDX):
	cat $(VEPDIR)/*.foldx.*  $(VEPDIR)/*.models.* | sort | uniq > $@
$(ALLFOLDXBED): $(ALLFOLDX)
	$(SRCDIR)/sift2bed $< > $@
$(OBSFOLDXBED): $(OBSFOLDX)
	$(SRCDIR)/sift2bed $< > $@

########################
## Accessibility data ##
########################

$(ALLACCESSIBILITY): $(ACCESSIBILITY) $(ALLNONSYNBED) 
	bedtools intersect -a $(ACCESSIBILITY) -b $(ALLNONSYNBED) > $@

######################
## Conversion files ##
######################

$(CONVERSION): $(GENOME)
	$(SRCDIR)/gbk2locusuniprot $(GENOME) > $(CONVERSION)

$(ECKFILE): $(GENOME)
	$(SRCDIR)/eck2uniprot $(GENOME) | sort | uniq > $(ECKFILE)

$(GIFILE): $(GENOME)
	$(SRCDIR)/gbk2giuniprot $(GENOME) | sort | uniq > $(GIFILE)

#######################
## Gene essentiality ##
#######################

$(ESSENTIAL): $(CONVERSION)
	wget -O $(MUTATION)/PECData.dat "http://shigen.nig.ac.jp/ecoli/pec/download/files/PECData.dat" && \
	awk -F'\t' '{if ($$10 == 1) print $$4"\t"$$10}' $(MUTATION)/PECData.dat | awk -F',' '{print $$1}' | sort | uniq > $(MUTATION)/PECData.txt && \
	$(SRCDIR)/essential2uniprot $(MUTATION)/PECData.txt $(CONVERSION) > $@

$(ALLESSENTIALMUTS): $(ALLNONSYN) $(ESSENTIAL)
	-rm $(ALLESSENTIALMUTS)
	-for essential in $$(cat $(ESSENTIAL)); do grep $$essential $(ALLNONSYN) >> $(ALLESSENTIALMUTS); done

#################
## Annotations ##
#################

$(PATHWAYS): $(PATHWAYSORIG) $(CONVERSION)
	tail -n+3 $(PATHWAYSORIG) > $(PATHWAYS)
	for l in $$(awk '{print $$1}' $(PATHWAYS) | sort | uniq); do u=$$(grep $$l $(CONVERSION) | awk '{print $$2}'); sed -i 's/'$$l/$$u'/g' $(PATHWAYS); done	

$(COMPLEXES): $(COMPLEXESORIG) $(CONVERSION)
	tail -n+2 $(COMPLEXESORIG) > $(COMPLEXES)
	for l in $$(awk '{print $$1}' $(COMPLEXES) | sort | uniq); do u=$$(grep $$l $(CONVERSION) | awk '{print $$2}'); sed -i 's/'$$l/$$u'/g' $(COMPLEXES); done	

$(OPERONS): $(OPERONSORIG) $(CONVERSION)
	tail -n+2 $(OPERONSORIG) | awk '{print $$3" "$$1}' > $(OPERONS)
	for l in $$(awk '{print $$1}' $(OPERONS) | sort | uniq); do u=$$(grep $$l $(CONVERSION) | awk '{print $$2}'); sed -i 's/'$$l/$$u'/g' $(OPERONS); done

$(CONSERVATION):
	wget -O $(MUTATION)/bactNOG.members.tsv.gz http://eggnogdb.embl.de/download/eggnog_4.5/data/bactNOG/bactNOG.members.tsv.gz
	gunzip -f $(MUTATION)/bactNOG.members.tsv.gz

###################
## Sickness data ##
###################

$(CLUSTERS): $(TREE)
	$(SRCDIR)/cluster_tree $(TREE) $(SICKNESSDIR)/tmp_strains_matrix.tsv
	$(SRCDIR)/cluster_distances $(SICKNESSDIR)/tmp_strains_matrix.tsv > $@

$(COMMON): $(CLUSTERS)
	$(SRCDIR)/common_mutations $(VEPDIR) --proportion $(COMMONPROP) --clusters $(CLUSTERS) > $@

$(UNCOMMON): $(CLUSTERS)
	$(SRCDIR)/uncommon_genes $(VEPDIR) --clusters $(CLUSTERS) --proportion $(UNCOMMONPROP) > $@

$(SICKNESS): $(CONVERSION) $(COMMON) $(UNCOMMON) $(OUTGROUPS)
	$(SRCDIR)/prepare_sickness_scripts --outdir $(SICKNESSDIR) --vepdir $(VEPDIR) --conversion $(CONVERSION) --exclude $(COMMON) --exclude-genes $(UNCOMMON) --outgroups $(OUTGROUPS) --coverage 0.0 --sift-slope -0.625 --sift-intercept 1.971 --sift-offset 1.527487632E-04 --foldx-slope -1.465 --foldx-intercept 1.201
	for script in $$(find $(SICKNESSDIR) -maxdepth 1 -type f -name '*.sh'); do $(SUBMIT) bash $$script; done

#######################
## Conditional score ##
#######################

$(SCORE): $(SICKNESS) $(ECKFILE) $(CONVERSION) $(UNCOMMON) $(DELETIONFDR) $(SHARED)
	for g in $$(find $(CHEMICAL) -type f -name 'deletion.all*.genes.*'); do \
	  gf=$$(echo $$g | awk -F'.' '{print $$(NF-1)}'); \
	  for d in $$(find $(SICKNESSDIR)/* -maxdepth 0 -type d); do \
	    $(SUBMIT) "$(SRCDIR)/get_score $$d/all.txt $$g --conversion $(ECKFILE) --lconversion $(CONVERSION) --uncommon $(UNCOMMON) --pseudocount 0.0 > $$d/score.$$gf.txt"; \
	    $(SUBMIT) "$(SRCDIR)/get_score $$d/all.txt $$g --fdr $(DELETIONFDR) --conditions $(SHARED) --conversion $(ECKFILE) --lconversion $(CONVERSION) --uncommon $(UNCOMMON) --pseudocount 0.0 > $$d/weighted_score.$$gf.txt"; \
	  done; \
	done && touch $@

$(AUCDATA): $(SCORE) $(SCREENING) $(SCREENINGFDR)
	for g in $$(find $(SICKNESSDIR) -maxdepth 2 -type f -name 'score.*.txt'); do \
	  gf=$$(echo $$g | awk -F'.' '{print $$(NF-1)}'); \
	  $(SUBMIT) "$(SRCDIR)/score_auc $$g $(SCREENING) $(SCREENINGFDR) > $$(dirname $$g)/auc_score.$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/overall_auc $$g $(SCREENING) $(SCREENINGFDR) > $$(dirname $$g)/overall_auc_score.$$gf.txt"; \
	done && \
	for g in $$(find $(SICKNESSDIR) -maxdepth 2 -type f -name 'weighted_score.*.txt'); do \
	  gf=$$(echo $$g | awk -F'.' '{print $$(NF-1)}'); \
	  $(SUBMIT) "$(SRCDIR)/score_auc $$g $(SCREENING) $(SCREENINGFDR) > $$(dirname $$g)/auc_weighted_score.$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/overall_auc $$g $(SCREENING) $(SCREENINGFDR) > $$(dirname $$g)/overall_auc_weighted_score.$$gf.txt"; \
	done && touch $@
	
$(BOOTSTRAPSDATA): $(SCORE) $(SCREENING) $(SCREENINGFDR) $(ECKFILE) $(CONVERSION) $(UNCOMMON) $(DELETION) $(DELETIONFDR) $(SHARED)
	for g in $$(find $(SICKNESSDIR) -maxdepth 2 -type f -name 'score.*.txt'); do \
	  gf=$$(echo $$g | awk -F'.' '{print $$(NF-1)}'); \
	  mkdir -p $$(dirname $$g)/bootstrap1_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/score_bootstrap_strains $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/bootstrap1_$$gf/$$round"; \
	  done; \
	  mkdir -p $$(dirname $$g)/bootstrap2_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/score_bootstrap_shuffle_sets $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/bootstrap2_$$gf/$$round"; \
	  done; \
	  mkdir -p $$(dirname $$g)/bootstrap3_$$gf; \
	  mkdir -p $$(dirname $$g)/overall_bootstrap3_$$gf; \
	  mkdir -p $$(dirname $$g)/matrices_bootstrap3_$$gf; \
	  for round in $$(seq 1 100); do \
	    mkdir -p $$(dirname $$g)/matrices_bootstrap3_$$gf/$$round/; \
	    mkdir -p $$(dirname $$g)/bootstrap3_$$gf/$$round/; \
	    mkdir -p $$(dirname $$g)/overall_bootstrap3_$$gf/$$round/; \
	    for sround in $$(seq 1 10); do \
	      $(SUBMIT) "$(SRCDIR)/generate_random_sets $$(dirname $$g)/all.txt $(CHEMICAL)/deletion.all.genes.$$gf.txt $(DELETION) $(SCREENING) --conversion $(ECKFILE) --lconversion $(CONVERSION) --uncommon $(UNCOMMON) --pseudocount 0.0 > $$(dirname $$g)/matrices_bootstrap3_$$gf/$$round/$$sround && $(SRCDIR)/score_auc $$(dirname $$g)/matrices_bootstrap3_$$gf/$$round/$$sround $(SCREENING) $(SCREENINGFDR) --comparison-matrix $$g > $$(dirname $$g)/bootstrap3_$$gf/$$round/$$sround && $(SRCDIR)/overall_auc $$(dirname $$g)/matrices_bootstrap3_$$gf/$$round/$$sround $(SCREENING) $(SCREENINGFDR) --comparison-matrix $$g > $$(dirname $$g)/overall_bootstrap3_$$gf/$$round/$$sround"; \
	    done; \
	  done; \
	  mkdir -p $$(dirname $$g)/overall_bootstrap1_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/overall_bootstrap_strains $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/overall_bootstrap1_$$gf/$$round"; \
	  done; \
	  mkdir -p $$(dirname $$g)/overall_bootstrap2_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/overall_bootstrap_shuffle_sets $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/overall_bootstrap2_$$gf/$$round"; \
	  done; \
	done && \
	for g in $$(find $(SICKNESSDIR) -maxdepth 2 -type f -name 'weighted_score.*.txt'); do \
	  gf=$$(echo $$g | awk -F'.' '{print $$(NF-1)}'); \
	  mkdir -p $$(dirname $$g)/weighted_bootstrap1_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/score_bootstrap_strains $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/weighted_bootstrap1_$$gf/$$round"; \
	  done; \
	  mkdir -p $$(dirname $$g)/weighted_bootstrap2_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/score_bootstrap_shuffle_sets $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/weighted_bootstrap2_$$gf/$$round"; \
	  done; \
	  mkdir -p $$(dirname $$g)/weighted_bootstrap3_$$gf; \
	  mkdir -p $$(dirname $$g)/weighted_overall_bootstrap3_$$gf; \
	  mkdir -p $$(dirname $$g)/weighted_matrices_bootstrap3_$$gf; \
	  for round in $$(seq 1 100); do \
	    mkdir -p $$(dirname $$g)/weighted_matrices_bootstrap3_$$gf/$$round/; \
	    mkdir -p $$(dirname $$g)/weighted_bootstrap3_$$gf/$$round/; \
	    mkdir -p $$(dirname $$g)/weighted_overall_bootstrap3_$$gf/$$round/; \
	    for sround in $$(seq 1 10); do \
	      $(SUBMIT) "$(SRCDIR)/generate_random_sets $$(dirname $$g)/all.txt $(CHEMICAL)/deletion.all.genes.$$gf.txt $(DELETION) $(SCREENING) --fdr $(DELETIONFDR) --conditions $(SHARED) --conversion $(ECKFILE) --lconversion $(CONVERSION) --uncommon $(UNCOMMON) --pseudocount 0.0 > $$(dirname $$g)/weighted_matrices_bootstrap3_$$gf/$$round/$$sround && $(SRCDIR)/score_auc $$(dirname $$g)/weighted_matrices_bootstrap3_$$gf/$$round/$$sround $(SCREENING) $(SCREENINGFDR) --comparison-matrix $$g > $$(dirname $$g)/weighted_bootstrap3_$$gf/$$round/$$sround && $(SRCDIR)/overall_auc $$(dirname $$g)/weighted_matrices_bootstrap3_$$gf/$$round/$$sround $(SCREENING) $(SCREENINGFDR) --comparison-matrix $$g > $$(dirname $$g)/weighted_overall_bootstrap3_$$gf/$$round/$$sround"; \
	    done; \
	  done; \
	  mkdir -p $$(dirname $$g)/weighted_overall_bootstrap1_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/overall_bootstrap_strains $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/weighted_overall_bootstrap1_$$gf/$$round"; \
	  done; \
	  mkdir -p $$(dirname $$g)/weighted_overall_bootstrap2_$$gf; \
	  for round in $$(seq 1 100); do \
	    $(SUBMIT) "$(SRCDIR)/overall_bootstrap_shuffle_sets $$g $(SCREENING) $(SCREENINGFDR) --bootstraps 100 > $$(dirname $$g)/weighted_overall_bootstrap2_$$gf/$$round"; \
	  done; \
	done &&touch $@

$(COLLECTBOOTSTRAPS): $(BOOTSTRAPSDATA) $(SCREENING) $(SCREENINGFDR)
	for g in $$(find $(SICKNESSDIR) -maxdepth 2 -type f -name 'score.*.txt'); do \
	  gf=$$(echo $$g | awk -F'.' '{print $$(NF-1)}'); \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/bootstrap1_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 0 > $$(dirname $$g)/bootstrap1_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/bootstrap1_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 10 > $$(dirname $$g)/bootstrap1_$$gf.10.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/bootstrap2_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 0 > $$(dirname $$g)/bootstrap2_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/bootstrap2_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 10 > $$(dirname $$g)/bootstrap2_$$gf.10.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_random_bootstraps $$(dirname $$g)/bootstrap3_$$gf/ --phenotypes 0 > $$(dirname $$g)/bootstrap3_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_random_bootstraps $$(dirname $$g)/bootstrap3_$$gf/ --phenotypes 10 > $$(dirname $$g)/bootstrap3_$$gf.10.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_overall_bootstraps $$(dirname $$g)/overall_bootstrap1_$$gf/ > $$(dirname $$g)/overall_bootstrap1_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_overall_bootstraps $$(dirname $$g)/overall_bootstrap2_$$gf/ > $$(dirname $$g)/overall_bootstrap2_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_overall_random_bootstraps $$(dirname $$g)/overall_bootstrap3_$$gf/ > $$(dirname $$g)/overall_bootstrap3_$$gf.txt"; \
	done && \
	for g in $$(find $(SICKNESSDIR) -maxdepth 2 -type f -name 'weighted_score.*.txt'); do \
	  gf=$$(echo $$g | awk -F'.' '{print $$(NF-1)}'); \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/weighted_bootstrap1_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 0 > $$(dirname $$g)/weighted_bootstrap1_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/weighted_bootstrap1_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 10 > $$(dirname $$g)/weighted_bootstrap1_$$gf.10.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/weighted_bootstrap2_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 0 > $$(dirname $$g)/weighted_bootstrap2_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_bootstraps $$(dirname $$g)/weighted_bootstrap2_$$gf/ $(SCREENING) $(SCREENINGFDR) --phenotypes 10 > $$(dirname $$g)/weighted_bootstrap2_$$gf.10.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_random_bootstraps $$(dirname $$g)/weighted_bootstrap3_$$gf/ --phenotypes 0 > $$(dirname $$g)/weighted_bootstrap3_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_random_bootstraps $$(dirname $$g)/weighted_bootstrap3_$$gf/ --phenotypes 10 > $$(dirname $$g)/weighted_bootstrap3_$$gf.10.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_overall_bootstraps $$(dirname $$g)/weighted_overall_bootstrap1_$$gf/ > $$(dirname $$g)/weighted_overall_bootstrap1_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_overall_bootstraps $$(dirname $$g)/weighted_overall_bootstrap2_$$gf/ > $$(dirname $$g)/weighted_overall_bootstrap2_$$gf.txt"; \
	  $(SUBMIT) "$(SRCDIR)/collect_overall_random_bootstraps $$(dirname $$g)/weighted_overall_bootstrap3_$$gf/ > $$(dirname $$g)/weighted_overall_bootstrap3_$$gf.txt"; \
	done &&touch $@

##################
## Associations ##
##################

$(FIXEDPANGENOME): $(PANGENOME)
	$(SRCDIR)/fix_roary $< > $@

$(SEQUENCED):
	find $(VEPDIR)/* -type d -exec basename {} \; | awk -F '_' '{print $$1}' > $@

$(PHENOTYPEDIRDONE): $(SCREENING) $(SCREENINGFDR) $(SEQUENCED)
	$(SRCDIR)/get_phenotypes $(SCREENING) $(SCREENINGFDR) $(PHENOTYPEDIR) --binary --separator "," --table --allowed $(SEQUENCED) && \
	$(SRCDIR)/get_phenotypes $(SCREENING) $(SCREENINGFDR) $(PHENOTYPESTRAINSDIR) --binary --separator "," --strains --allowed $(SEQUENCED) && \
	touch $@

$(ASSOCIATIONDATA): $(FIXEDPANGENOME) $(PHENOTYPEDIRDONE)
	cd $(ASSOCIATIONDIR) && \
	for i in $$(find $(PHENOTYPEDIR) -type f); do \
	  $(SUBMIT) "python ../Scoary/scoary.py -t $$i -g $(FIXEDPANGENOME) -r $(PHENOTYPESTRAINSDIR)/$$(basename $$i) --no-time -c I"; \
	done && touch $@

##########################
## Plot data generation ##
##########################

$(FEATURESDATA): $(ESSENTIAL) $(UNIPROTSIZES) $(FEATURESBED) $(OBSFEATURES) $(OBSOTHERS)
	$(SRCDIR)/run_constraints_features $(ESSENTIAL) $(UNIPROTSIZES) $(FEATURESBED) $(OBSFEATURES) $(OBSOTHERS) --bootstraps 100 > $@

$(SIFTFEATURESDATA): $(ESSENTIAL) $(SIFTFEATURES) $(SIFTOTHERS) $(ALLSIFTFEATURES) $(ALLSIFTOTHERS)
	$(SRCDIR)/run_constraints_features_sift $(ESSENTIAL)  $(SIFTFEATURES) $(SIFTOTHERS) $(ALLSIFTFEATURES) $(ALLSIFTOTHERS) --bootstraps 100 > $@

$(ACCESSIBILITYDATA): $(ESSENTIAL) $(ACCESSIBILITY) $(ALLACCESSIBILITY)
	$(SRCDIR)/run_constraints_accessibility $(ESSENTIAL) $(ACCESSIBILITY) $(ALLACCESSIBILITY) --bootstraps 100 --bins 100 > $@

$(FOLDXACCESSIBILITYDATA): $(ESSENTIAL) $(ACCESSIBILITY) $(ALLFOLDXBED) $(OBSFOLDXBED)
	$(SRCDIR)/run_constraints_accessibility_foldx $(ESSENTIAL) $(ACCESSIBILITY) $(ALLFOLDXBED) $(OBSFOLDXBED) --bootstraps 100 --buried 50 > $@

$(PROFILEDATA): $(SICKNESS) $(PANGENOME) $(CONSERVATION) $(ESSENTIAL) $(CONVERSION) $(ECKFILE) $(COMPLEXES) $(PATHWAYS) $(PPI) $(OPERONS) $(SICKNESSDIR)
	$(SRCDIR)/run_sickness_profile --sickness $(SICKNESS) --pangenome $(PANGENOME) --conservation $(CONSERVATION) --essential $(ESSENTIAL) --conversion $(CONVERSION) --eckconversion $(ECKFILE) --complexes $(COMPLEXES) --pathways $(PATHWAYS) --ppi $(PPI) --operons $(OPERONS) --outdir $(SICKNESSDIR) && touch $(PROFILEDATA)

$(PURITYDATA1): $(SCREENING) $(CONDITIONSDETAILS) $(CONDITIONSMOA)
	$(SRCDIR)/run_conditions_purity $(SCREENING) $(CONDITIONSDETAILS) $(CONDITIONSMOA) $(PURITYDATA1) $(PURITYDATA2)

$(BOOTSTRAP1): $(BOOTSTRAPSDATA)
	$(SRCDIR)/collect_overall_bootstraps $(SICKNESSDIR)/123456/overall_bootstrap1_2/ --curve > $@
$(BOOTSTRAP2): $(BOOTSTRAPSDATA)
	$(SRCDIR)/collect_overall_bootstraps $(SICKNESSDIR)/123456/overall_bootstrap2_2/ --curve > $@
$(BOOTSTRAP3): $(BOOTSTRAPSDATA)
	$(SRCDIR)/collect_overall_random_bootstraps $(SICKNESSDIR)/123456/overall_bootstrap3_2/ --curve > $@

######################
## Plots generation ##
######################

$(TREEPLOT): $(TREE) $(EVOLUTION) $(NONSYNCOUNT) $(PANGENOMECOUNT)
	$(SRCDIR)/run_tree_generation $(TREE) $(EVOLUTION) $(NONSYNCOUNT) $(PANGENOMECOUNT) $@ --height 7 --dpi 90

$(TREEBARS): $(TREE) $(NONSYNCOUNT) $(PANGENOMECOUNT)
	$(SRCDIR)/run_tree_colorbar $(TREE) $(NONSYNCOUNT) $(PANGENOMECOUNT) $@ --height 0.3 --width 5.7 --dpi 90

$(TREELEGEND):
	$(SRCDIR)/run_tree_legend $@ --height 0.5 --width 2 --dpi 90

$(CONSTRAINTSPLOT): $(FEATURESDATA) $(SIFTFEATURESDATA) $(ACCESSIBILITYDATA) $(FOLDXACCESSIBILITYDATA)
	$(SRCDIR)/run_constraints_plot $(FEATURESDATA) $(SIFTFEATURESDATA) $(ACCESSIBILITYDATA) $(FOLDXACCESSIBILITYDATA) $@ --height 7 --width 7 --dpi 300

$(ESSENTIALPLOT): $(PROFILEDATA)
	$(SRCDIR)/run_sickness_conservation $(SICKNESSDIR)/res_ess.json $(SICKNESSDIR)/res_conserved.json $(SICKNESSDIR)/res_non_conserved.json $(SICKNESSDIR)/res_rand.json $@ --width 3.5 --height 1.5 --dpi 90

$(CORRELATIONPLOT): $(PROFILEDATA)
	$(SRCDIR)/run_sickness_correlation $(SICKNESSDIR)/pcorr1.tsv $@ --width 3.5 --height 3.5 --dpi 300

$(ROCPLOT): $(PROFILEDATA)
	$(SRCDIR)/run_sickness_roc $(SICKNESSDIR)/bench.json $@ --width 3.5 --height 3.5 --dpi 90

$(ANNOTATIONPLOT): $(PROFILEDATA)
	$(SRCDIR)/run_sickness_annotations $(SICKNESSDIR)/results.tsv $@ --width 3.5 --height 3 --dpi 90

$(PTREEPLOT): $(TREE) $(EVOLUTION) $(SCREENING) $(SCREENINGFDR)
	$(SRCDIR)/run_ptree_generation $(TREE) $(EVOLUTION) $(SCREENING) $(SCREENINGFDR) $@ --height 7 --dpi 90

$(PTREEBARS): $(TREE) $(SCREENING) $(SCREENINGFDR)
	$(SRCDIR)/run_ptree_colorbar $(TREE) $(SCREENING) $(SCREENINGFDR) $@ --height 0.3 --width 5.7 --dpi 90

$(PREPLICATES): $(PURITYDATA1) $(REPLICATES1) $(REPLICATES2) $(REPLICATES3) $(ASCREENING) $(SCREENING) $(SCREENINGFDR) $(CONDITIONSDETAILS) $(CONDITIONSMOA) $(SHARED) $(DELETION)
	$(SRCDIR)/run_phenotypes_plot $(PLOTDIR) $(REPLICATES1) $(REPLICATES2) $(REPLICATES3) $(ASCREENING) $(SCREENING) $(SCREENINGFDR) $(CONDITIONSDETAILS) $(CONDITIONSMOA) $(SHARED) $(DELETION) $(PURITYDATA1) $(PURITYDATA2) --dpi 90

$(OVERALLPLOT): $(BOOTSTRAPSDATA) $(BOOTSTRAP1) $(BOOTSTRAP2) $(BOOTSTRAP3)
	$(SRCDIR)/run_overall_roc $(SICKNESSDIR)/123456/overall_auc_score.2.txt $(SICKNESSDIR)/123456/overall_auc_weighted_score.2.txt $(BOOTSTRAP1) $(BOOTSTRAP2) $(BOOTSTRAP3) $@ --size 3.5 --dpi 90

$(CONDITIONSPLOT): $(COLLECTBOOTSTRAPS)
	$(SRCDIR)/run_conditions_roc $(SICKNESSDIR)/1236 $(SICKNESSDIR)/5 $(SICKNESSDIR)/123456 $@ --height 3.5 --width 4 --dpi 90

$(CATEGORIESPLOT): $(AUCDATA) $(CONDITIONSDETAILS)
	$(SRCDIR)/run_categories_roc $(SICKNESSDIR)/123456/auc_weighted_score.2.txt $(CONDITIONSDETAILS) $@ --height 2 --width 3 --dpi 90

$(ASSOCIATIONPLOT): $(AUCDATA) $(ASSOCIATIONDATA) $(ECKFILE) $(CONVERSION) $(FIXEDPANGENOME) $(DELETION)
	$(SRCDIR)/run_associations_plot $(ECKFILE) $(CONVERSION) $(DELETION) $(CHEMICAL)/deletion.all.genes.2.txt $(FIXEDPANGENOME) $(SICKNESSDIR)/123456/auc_weighted_score.2.txt $(ASSOCIATIONDIR) $@ --height 2 --width 4 --dpi 300

$(EXAMPLE1PLOT): $(ECKFILE) $(GENOME) $(TREE) $(SCREENING) $(SCREENINGFDR) $(SCORE)
	$(SRCDIR)/run_examples $(ECKFILE) $(GENOME) $(CHEMICAL)/deletion.all.genes.2.txt $(SICKNESSDIR)/123456/all.txt $(SICKNESSDIR)/123456/weighted_score.2.txt $(SCREENING) $(SCREENINGFDR) $(TREE) OXACILLIN.5UM "Oxacillin 5 uM" $@ --height 4 --width 3 --dpi 300 --notree
$(EXAMPLE1APLOT): $(ECKFILE) $(GENOME) $(TREE) $(SCREENING) $(SCREENINGFDR) $(SCORE)
	$(SRCDIR)/run_examples $(ECKFILE) $(GENOME) $(CHEMICAL)/deletion.all.genes.2.txt $(SICKNESSDIR)/123456/all.txt $(SICKNESSDIR)/123456/weighted_score.2.txt $(SCREENING) $(SCREENINGFDR) $(TREE) OXACILLIN.5UM "Oxacillin 5 uM" $@ --height 4 --width 3.5 --dpi 300
$(EXAMPLE2PLOT): $(ECKFILE) $(GENOME) $(TREE) $(SCREENING) $(SCREENINGFDR) $(SCORE)
	$(SRCDIR)/run_examples $(ECKFILE) $(GENOME) $(CHEMICAL)/deletion.all.genes.2.txt $(SICKNESSDIR)/123456/all.txt $(SICKNESSDIR)/123456/weighted_score.2.txt $(SCREENING) $(SCREENINGFDR) $(TREE) PSEUDOMONICACID.2 "Pseudomonic acid 2 ug/ml" $@ --height 4 --width 3 --dpi 300 --notree
$(EXAMPLE2APLOT): $(ECKFILE) $(GENOME) $(TREE) $(SCREENING) $(SCREENINGFDR) $(SCORE)
	$(SRCDIR)/run_examples $(ECKFILE) $(GENOME) $(CHEMICAL)/deletion.all.genes.2.txt $(SICKNESSDIR)/123456/all.txt $(SICKNESSDIR)/123456/weighted_score.2.txt $(SCREENING) $(SCREENINGFDR) $(TREE) PSEUDOMONICACID.2 "Pseudomonic acid 2 ug/ml" $@ --height 4 --width 3.5 --dpi 300

$(EXAMPLEROCPLOT): $(AUCDATA)
	$(SRCDIR)/run_specific_conditions_roc $(SICKNESSDIR)/123456/auc_weighted_score.2.txt $@ --condition OXACILLIN.5UM PSEUDOMONICACID.2 --cname "Oxacillin 5 uM" "Pseudomonic acid 2 ug/ml" --size 3.5 --dpi 90

#############
## Figures ##
#############

$(FIGURE1): $(TREEPLOT) $(TREEBARS) $(TREELEGEND) $(CONSTRAINTSPLOT)
	$(SRCDIR)/run_figure_1 $(TREEPLOT) $(TREEBARS) $(TREELEGEND) $(CONSTRAINTSPLOT) $@

$(FIGURE2): $(SCHEMESICKNESS) $(ESSENTIALPLOT) $(CORRELATIONPLOT) $(ROCPLOT) $(ANNOTATIONPLOT)
	$(SRCDIR)/run_figure_2 $(SCHEMESICKNESS) $(ESSENTIALPLOT) $(CORRELATIONPLOT) $(ROCPLOT) $(ANNOTATIONPLOT) $@

$(FIGURE3): $(SCHEMEPHENOTYPES) $(PREPLICATES)
	$(SRCDIR)/run_figure_3 $(SCHEMEPHENOTYPES) $(PREPLICATES) $(PCORRELATION) $(PCORRELATIONL) $(PCORRELATIONC) $(PTREEPLOT) $(TREELEGEND) $(PTREEBARS) $(PPURITY) $(PCHEMICAL) $(PTARGETS) $@

$(FIGURE4): $(SCHEMEPREDICTIONS) $(OVERALLPLOT) $(CONDITIONSPLOT) $(CATEGORIESPLOT) $(ASSOCIATIONPLOT) $(EXAMPLE1PLOT) $(EXAMPLE2PLOT) $(EXAMPLEROCPLOT)
	$(SRCDIR)/run_figure_4 $(SCHEMEPREDICTIONS) $(OVERALLPLOT) $(CONDITIONSPLOT) $(CATEGORIESPLOT) $(ASSOCIATIONPLOT) $(EXAMPLE1PLOT) $(EXAMPLE2PLOT) $(EXAMPLEROCPLOT) $@

########################
## Targets definition ##
########################

constraints: $(FEATURESDATA) $(SIFTFEATURESDATA) $(ACCESSIBILITYDATA) $(FOLDXACCESSIBILITYDATA)
sickness: $(SICKNESS)
score: $(SCORE)
auc: $(AUCDATA)
bootstraps: $(BOOTSTRAPSDATA)
collect: $(COLLECTBOOTSTRAPS)
associations: $(ASSOCIATIONDATA)
plots: $(TREEPLOT) $(TREEBARS) $(TREELEGEND) \
       $(CONSTRAINTSPLOT) $(ESSENTIALPLOT) \
       $(CORRELATIONPLOT) $(ROCPLOT) $(ANNOTATIONPLOT) \
       $(PREPLICATES) $(PTREEPLOT) $(PTREEBARS) \
       $(OVERALLPLOT) $(CONDITIONSPLOT) \
       $(CATEGORIESPLOT) $(ASSOCIATIONPLOT) \
       $(EXAMPLE1PLOT) $(EXAMPLE1APLOT) \
       $(EXAMPLE2PLOT) $(EXAMPLE2APLOT) \
       $(EXAMPLEROCPLOT)
figures: $(FIGURE1) $(FIGURE2) $(FIGURE3) $(FIGURE4)

.PHONY: constraints sickness score auc bootstraps collect associations plots figures
