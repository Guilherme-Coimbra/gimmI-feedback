-- GimmI Feedback — Initial Data Seed from Google Forms
-- Run this AFTER supabase-schema-v5.sql
-- This file populates questions, answers, preference_votes, grade_items, and gradings

-- ==========================================
-- PREFERENCE QUESTIONS (Activity 1)
-- ==========================================

INSERT INTO questions (external_qid, question_text) VALUES ('pref_q01', 'Why is the liver-stage silent?') ON CONFLICT (external_qid) DO NOTHING;
INSERT INTO questions (external_qid, question_text) VALUES ('pref_q02', 'Why is malaria transmitted by a female mosquito?') ON CONFLICT (external_qid) DO NOTHING;
INSERT INTO questions (external_qid, question_text) VALUES ('pref_q03', 'What is the transmission vector of malaria?') ON CONFLICT (external_qid) DO NOTHING;
INSERT INTO questions (external_qid, question_text) VALUES ('pref_q04', 'Which major human hepatocyte surface receptors are required for Plasmodium falciparum sporozoites to successfully recognize and invade the host cell?') ON CONFLICT (external_qid) DO NOTHING;
INSERT INTO questions (external_qid, question_text) VALUES ('pref_q05', 'Does Plasmodium falciparum form latent, relapsing liver-stage forms (hypnozoites) similar to Plasmodium vivax? Explain briefly.') ON CONFLICT (external_qid) DO NOTHING;

-- Insert preference answers with model metadata
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q01', 'A', 'Summary

    The liver-stage infection is clinically silent because the parasite develops within hepatocytes at low biomass before blood-stage rupture releases merozoites and pro-inflammatory products that drive fever and illness; immune responses that do form are often insufficient to abort development or cause symptoms. The clinically silent phase occurs during the pre-erythrocytic stage, before symptomatic blood-stage infection [1] The liver-stage progression culminates in thousands of merozoites released into the blood, after which clinical disease begins [2] The initial innate response to sporozoites and liver-stage infection is below pyrogenic threshold and fails to arrest development [3].

Sources

    Malaria parasite pre-erythrocytic stage infection: gliding and hiding (https://www.cell.com/cell-host-microbe/fulltext/S1931-3128(08)00266-7)
    The silent path to thousands of merozoites: the Plasmodium liver stage (https://www.nature.com/articles/nrmicro1529)
    Cytokines and Chemokines in Cerebral Malaria Pathogenesis (https://pmc.ncbi.nlm.nih.gov/articles/PMC5517394)', '{"model": "DrTulu"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q01', 'B', 'The liver-stage of malaria is considered "silent" or asymptomatic because it does not produce the clinical symptoms commonly associated with the disease . [1] During this phase, the parasite undergoes significant expansion within hepatocytes, effectively evading detection and clearance by the host''s immune system . [2] The characteristic clinical manifestations of malaria only emerge when the parasites transition from the liver to the bloodstream and begin to infect red blood cells . [3]
Sources

    Liver stage Plasmodium infection tunes clinical outcomes - PMC (https://pmc.ncbi.nlm.nih.gov/articles/PMC10634323/)
    Malaria parasite liver stages - Journal of Hepatology (https://www.journal-of-hepatology.eu/article/S0168-8278(21)00406-2/fulltext)
    Maria Mota (IMM) 2: Plasmodium liver stage infection activates host ... (https://www.youtube.com/watch?v=xxM0Iw3MrU0)
    establishing immunity to Plasmodium liver stage infection (https://www.sciencedirect.com/science/article/pii/S1471492225002971)
    DPDx - Malaria - CDC (https://www.cdc.gov/dpdx/malaria/index.html)', '{"model": "Gemini 2.5 Flash"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q01', 'C', 'The malaria liver stage is clinically silent primarily because Plasmodium parasites employ sophisticated immune evasion mechanisms during their intrahepatic development. [2] The parasite establishes itself within a parasitophorous vacuole (PV) surrounded by the parasitophorous vacuole membrane (PVM), which serves as a critical interface that prevents the release of molecular clues that would attract immune cells towards infected hepatocytes . [3] This structure protects the parasite from the host cell''s intracellular defense system while facilitating nutrient import and waste export . [1] Additionally, traversed Kupffer cells (liver macrophages) do not respond to sporozoites crossing their cytoplasm, and although infected hepatocytes can detect and attack the PV, they fall under the control of the parasite before they can react and alert the immune system . [4] The liver stage is therefore asymptomatic despite being an obligatory phase of development where sporozoites develop into thousands of merozoites . [5] Furthermore, when parasites exit the liver, they emerge in merosomes shrouded by host plasma membrane, allowing them to enter the vasculature undetected by the host immune system before reaching the lungs where merozoites are released to initiate symptomatic blood-stage infection . [6] Clinical manifestations only occur during the intra-erythrocytic stage when inflammatory cytokines are released following immune activation against blood-stage parasites . [7]
Sources

    Killing the competition: a theoretical framework for liver-stage malaria (https://pmc.ncbi.nlm.nih.gov/articles/PMC8965401)
    Hijacking of the host cell Golgi by Plasmodium liver stage parasites (https://api.unpaywall.org/v2/10.1101/2020.07.24.220137?email=<INSERT_YOUR_EMAIL)
    Hijacking of the host cell Golgi by Plasmodium berghei liver stage parasites (https://pmc.ncbi.nlm.nih.gov/articles/PMC8186485)
    Simple, sensitive and quantitative bioluminescence assay for determination of malaria pre-patent period (https://api.unpaywall.org/v2/10.1186/1475-2875-13-15?email=<INSERT_YOUR_EMAIL)
    Simple, sensitive and quantitative bioluminescence assay for determination of malaria pre-patent period (https://pmc.ncbi.nlm.nih.gov/articles/PMC3893453)
    Moving on: How malaria parasites exit the liver (https://api.unpaywall.org/v2/10.1111/mmi.15141?email=<INSERT_YOUR_EMAIL)
    Role of TAM Receptors in Antimalarial Humoral Immune Response (https://pmc.ncbi.nlm.nih.gov/articles/PMC11054553)', '{"model": "Qwen3.5 397b"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q02', 'A', 'Malaria is transmitted exclusively by female mosquitoes because only females bite and take blood meals, which is essential for both their reproduction and the parasite''s lifecycle. [1] Female mosquitoes possess a proboscis strong enough to pierce human skin and extract blood, whereas males have a proboscis that is not strong enough to penetrate skin and do not feed on blood at all . [2] Female mosquitoes require blood meals to obtain the proteins necessary for egg development . [3] Only female Anopheles mosquitoes can spread malaria from one person to another, as they must first bite an infected person to acquire the malaria parasites . [4] After ingesting gametocyte-stage parasites from an infected host''s blood, the parasites undergo development in the female mosquito''s midgut through a process called sporogony, eventually producing sporozoites that migrate to the salivary glands and are transmitted when the mosquito bites another person . [5] Male mosquitoes are harmless in this regard because they feed only on flower nectar and fruit juices, never on blood, and therefore cannot acquire or transmit the malaria parasite . [6]
Sources

    About Mosquitoes (https://www.cdc.gov/mosquitoes/about/index.html)
    The belief that malaria can be spread by insects other than ... (https://www.facebook.com/100083084603415/posts/the-belief-that-malaria-can-be-spread-by-insects-other-than-mosquitoes-is-a-myth/667979709314843/)
    Evaluation of Aedes aegypti Feeding Status. (https://pubmed.ncbi.nlm.nih.gov/36690389/)
    How Malaria Spreads (https://www.cdc.gov/malaria/causes/index.html)
    Malaria parasite development in mosquitoes. (https://pubmed.ncbi.nlm.nih.gov/9444756/)
    Male mosquitoes don''t want your blood, but they still find you ... (https://findanexpert.unimelb.edu.au/news/31460-male-mosquitoes-don''t-want-your-blood--but-they-still-find-you-very-attractive)
    Three things you should know about mosquitoes (https://www.nicd.ac.za/three-things-you-should-know-about-mosquitoes/)', '{"model": "Qwen3.5 397b"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q02', 'B', 'Summary answer

    Female mosquitoes are the only ones that bite people and animals to obtain blood, because a blood meal provides protein and iron needed to develop eggs; this is why malaria-transmitting mosquitoes disproportionately target humans at night while feeding en route to egg production Only female mosquitoes bite people and animals to get a blood meal; female mosquitoes need a blood meal to produce eggs [1] Only female Anopheles mosquitoes can spread malaria from one person to another [2] Malaria is transmitted among humans by female mosquitoes of the genus Anopheles; female mosquitoes take blood meals to carry out egg production [3].
    Inside a female Anopheles, malaria parasites complete sexual reproduction in the midgut after a blood meal and then produce motile sporozoites that migrate to the salivary glands; when she bites a human, sporozoites are injected with saliva, completing transmission to a new host In order to be transmitted by their mosquito vector, malaria parasites undergo sexual reproduction, which occurs between specialized male and female parasites (gametes) within the mosquito [4] Malaria is transmitted to humans through the bite of infected female Anopheles mosquitoes; gametocytes recognize the intestinal environment after being ingested during blood feeding and proceed to sexual reproduction; sporozoites migrate to salivary glands and are transmitted with saliva [5] Sporogony is complete when sporozoites invade the mosquito salivary glands; oocysts release sporozoites on days 12–14 and invasion of salivary glands is very efficient [6]. 

Sources

    About Mosquitoes (https://www.cdc.gov/mosquitoes/about/index.html)
    How Malaria Spreads (https://www.cdc.gov/malaria/causes/index.html)
    About Malaria - Biology - Mosquitoes - Anopheles ... (http://medbox.iiab.me/modules/en-cdc/www.cdc.gov/malaria/about/biology/mosquitoes/index.html)
    Plasmodium sex determination and transmission to mosquitoes (https://www.cell.com/trends/parasitology/abstract/S1471-4922(01)02122-5)
    The salivary protein Saglin facilitates efficient midgut colonization of Anopheles mosquitoes by malaria parasites (https://journals.plos.org/plospathogens/article/file?id=10.1371/journal.ppat.1010538&type=printable)
    Population dynamics of sporogony for Plasmodium vivax parasites from western Thailand developing within three species of colonized Anopheles mosquitoes (https://malariajournal.biomedcentral.com/counter/pdf/10.1186/1475-2875-5-68)', '{"model": "DrTulu"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q02', 'C', 'Only female Anopheles mosquitoes are responsible for transmitting malaria because they require a blood meal to produce eggs . The proteins and iron present in blood are essential nutrients for the development and maturation of their eggs . Male mosquitoes do not bite humans or animals; instead, they feed on plant nectar and other sugary fluids . When an infected female mosquito takes a blood meal from a person carrying the malaria parasite (Plasmodium), the parasites are ingested and undergo a crucial phase of sexual reproduction and development within the mosquito''s gut . Following this developmental period, the infective stage of the parasite (sporozoites) migrates to the mosquito''s salivary glands. When the infected female mosquito subsequently bites another human, it injects saliva containing these sporozoites into the new host, thus transmitting the disease .
Sources

    About Mosquitoes (https://www.cdc.gov/mosquitoes/about/index.html)
    Male Vs Female Mosquitoes (https://www.orkin.com/pests/mosquitoes/male-vs-female-mosquitoes)
    Why Do Mosquitoes Drink Blood? (https://www.britannica.com/science/Why-Do-Mosquitoes-Drink-Blood)
    Why female mosquitoes bite humans for egg development (https://www.facebook.com/BexarCountyTX/posts/did-you-know-only-female-mosquitoes-bite-humansand-its-not-because-theyre-mean-t/1133343818828522/)
    Male mosquitoes don''t want your blood, but they still find you ... (https://findanexpert.unimelb.edu.au/news/31460-male-mosquitoes-don''t-want-your-blood--but-they-still-find-you-very-attractive)
    PfARID Regulates P. falciparum Malaria Parasite Male Gametogenesis and Female Fertility and Is Critical for Parasite Transmission to the Mosquito Vector (https://doi.org/10.1128/mbio.00578-22)
    Sex and Death: The Effects of Innate Immune Factors on the Sexual Reproduction of Malaria Parasites (https://journals.plos.org/plospathogens/article/file?id=10.1371/journal.ppat.1001309&type=printable)
    Plasticity in malaria parasite development: mosquito resources influence vector-to-host transmission potential (https://doi.org/10.3389/fmala.2024.1481816)
    "Wonders unconceived": reflections on the birth of medical entomology. (https://pubmed.ncbi.nlm.nih.gov/21857128/)
    Malaria: influence of Anopheles mosquito saliva on Plasmodium infection. (https://www.sciencedirect.com/science/article/am/pii/S1471490623000303)', '{"model": "Gemini 2.5 Flash"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q03', 'A', 'Malaria is transmitted to humans by mosquitoes belonging to the genus Anopheles . Out of the 465 recognized species within the Anopheles genus, approximately 70 are capable of transmitting Plasmodium parasites to humans, with 41 of these considered dominant vectors . The Anopheles gambiae complex is identified as a principal malaria vector in some regions .
Sources

    Climate, environment and transmission of malaria. (https://pubmed.ncbi.nlm.nih.gov/27367318/)
    Seasonal malaria vector and transmission dynamics in western Burkina Faso. (https://malariajournal.biomedcentral.com/track/pdf/10.1186/s12936-019-2747-5)', '{"model": "Gemini 2.5 Flash"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q03', 'B', 'Malaria is transmitted exclusively by female mosquitoes of the Anopheles genus [1, 2, 3]. These anopheline mosquitoes serve as the definitive host for Plasmodium parasites, where sexual reproduction of the parasite occurs during its development in the insect [1]. The transmission cycle begins when a female Anopheles mosquito bites an infected person, ingesting the malaria parasites, and then subsequently bites another person, transmitting the infection [4]. Among the approximately 500 different species of Anopheles mosquitoes, about 100 species are capable of transmitting malaria to humans [3]. The Anopheles gambiae complex is particularly notable as one of the principal and most efficient malaria vectors, especially in sub-Saharan Africa [5, 6]. All five Plasmodium species that cause malaria in humans (P. falciparum, P. vivax, P. malariae, P. ovale, and P. knowlesi) are transmitted exclusively through these anopheline mosquitoes [1].
Sources

    Plasmodium-a brief introduction to the parasites causing human malaria and their basic biology. (https://jphysiolanthropol.biomedcentral.com/track/pdf/10.1186/s40101-020-00251-9)
    An overview of malaria transmission from the perspective of Amazon ... (https://pmc.ncbi.nlm.nih.gov/articles/PMC4371216/)
    Mosquito vector diversity and malaria transmission - Frontiers (https://www.frontiersin.org/journals/malaria/articles/10.3389/fmala.2025.1600850/full)
    Mosquito-borne diseases and their vectors - Target Malaria (https://targetmalaria.org/latest/blog/mosquito-borne-diseases-and-their-vectors/)
    Seasonal malaria vector and transmission dynamics in western Burkina Faso. (https://malariajournal.biomedcentral.com/track/pdf/10.1186/s12936-019-2747-5)
    Anopheles - Wikipedia (https://en.wikipedia.org/wiki/Anopheles)', '{"model": "Qwen3.5 397b"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q03', 'C', 'Summary answer

    The transmission vector of malaria is the female Anopheles mosquito, which transmits Plasmodium parasites to humans through a bite by inoculating sporozoites from its salivary glands into the skin during a blood meal.Human malaria parasites are transmitted by Anopheles mosquitoes [1] Only female Anopheles mosquitoes can spread malaria from one person to another [2] During a blood meal, a malaria-infected female Anopheles mosquito inoculates sporozoites into the human [3] Plasmodium sporozoites are released with saliva when an infected female mosquito takes a blood meal on a vertebrate host [4].

Sources

    Mosquito vector diversity and malaria transmission (https://www.frontiersin.org/journals/malaria/articles/10.3389/fmala.2025.1600850/full)
    How Malaria Spreads (https://www.cdc.gov/malaria/causes/index.html)
    DPDx - Malaria - CDC (https://www.cdc.gov/dpdx/malaria/index.html)
    Malaria: The influence of Anopheles mosquito saliva on ... - PMC - NIH (https://pmc.ncbi.nlm.nih.gov/articles/PMC10074230/)', '{"model": "DrTulu"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q04', 'A', 'Summary answer

    Major hepatocyte surface receptors required for Plasmodium falciparum sporozoite recognition and invasion are complement receptor 1 (CR1/CD35) and heparan sulfate proteoglycans (HSPG) on the host cell; sulfated glycosaminoglycan (GAG) moieties are essential for binding, and additional hepatocyte receptors/signaling components (e.g., EPHA2) contribute to productive invasion in vivo. Invasion of hepatocytes in vitro was inhibited by heparan sulfate analogs, and mapping studies implicate the type 1 complement receptor (CR1/CD35) in sporozoite–hepatocyte interactions [1] High-level heparan sulfate proteoglycans on hepatocytes are required for sporozoite targeting to the liver and invasion, and EPHA2 signaling has been implicated in invasion [2] Sulfate groups on GAGs are critical for sporozoite binding, and heparan sulfate directs sporozoites to stop migrating and invade hepatocytes [3] Complement receptor 1 (CR1/CD35) and host-derived heparan sulfate are highlighted as receptors involved in hepatocyte invasion [4].

Sources

    Hot, sweet and sticky: the glycobiology of Plasmodium falciparum (https://www.cell.com/trends/parasitology/abstract/S1471-4922(08)00088-3)
    Important extracellular interactions between Plasmodium sporozoites and host cells required for infection (https://www.cell.com/trends/parasitology/abstract/S1471-4922(18)30246-0)
    Heparan sulfate proteoglycans provide a signal to Plasmodium sporozoites to stop migrating and productively invade host cells (https://www.cell.com/cancer-cell/fulltext/S1931-3128(07)00248-X)
    Sticking for a cause: the falciparum malaria parasites cytoadherence paradigm (https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2019.01444/full)', '{"model": "DrTulu"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q04', 'B', 'Plasmodium falciparum sporozoites require several major human hepatocyte surface receptors to successfully recognize and invade host cells. Key among these is CD81, a host cell surface protein that P. falciparum relies on for hepatocyte infection [1]. Another crucial receptor is integrin αvβ3, which directly interacts with the P. falciparum surface protein, TRAP, and is essential for both gliding motility and invasion [2]. The human fibroblast growth factor receptor 4 (FGFR4) has also been identified as interacting with the P. falciparum protein Pf34, while the low-density lipoprotein receptor (LDLR) interacts with P. falciparum protein PIESP15 [3]. Glypican-3, a hepatocyte cell surface heparan sulfate proteoglycan, is implicated as a putative mediator of sporozoite invasion [4]. Additionally, the membrane-bound receptor tyrosine kinase EphA2 has been implicated in hepatocyte infection by P. falciparum [5]. Heparin and/or chondroitin sulfate proteoglycans on HepG2 cells are also suggested as receptors for P. falciparum rhoptry neck protein 4 (PfRON4) [6].
Sources

    Plasmodium P36 determines host cell receptor usage during sporozoite invasion. (https://doi.org/10.7554/elife.25903)
    Alpha-v-containing integrins are host receptors for the Plasmodium falciparum sporozoite surface protein, TRAP. (https://www.pnas.org/content/pnas/115/17/4477.full.pdf)
    A screen for Plasmodium falciparum sporozoite surface protein binding to human hepatocyte surface receptors identifies novel host-pathogen interactions. (https://malariajournal.biomedcentral.com/counter/pdf/10.1186/s12936-024-04913-2)
    The Selection of a Hepatocyte Cell Line Susceptible to Plasmodium falciparum Sporozoite Invasion That Is Associated With Expression of Glypican-3. (https://doi.org/10.3389/fmicb.2019.00127)
    Overexpression of hepatocyte EphA2 enhances liver-stage infection by Plasmodium vivax. (https://www.nature.com/articles/s41598-022-25281-4.pdf)
    Plasmodium falciparum rhoptry neck protein 4 has conserved regions mediating interactions with receptors on human erythrocytes and hepatocyte membrane. (https://doi.org/10.1016/j.ijmm.2023.151579)', '{"model": "Gemini 2.5 Flash"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q04', 'C', 'The major human hepatocyte surface receptors required for Plasmodium falciparum sporozoite recognition and invasion are CD81 (tetraspanin) and heparan sulfate proteoglycans (HSPGs), with EphA2 playing a potentially supportive but debated role. [2] P. [3] falciparum sporozoites rely specifically on CD81 for productive hepatocyte invasion, while the scavenger receptor SR-BI is important for P. [4] vivax but not P. [5] falciparum . [6] The circumsporozoite (CS) protein on sporozoites interacts with hepatocyte HSPGs and the low-density lipoprotein receptor-related protein (LRP) for initial binding and invasion . [7] The thrombospondin-related anonymous protein (TRAP) on sporozoites binds to integrin αvβ3 on host cells, facilitating gliding motility and invasion . [8] Recent screening has identified additional interactions including fibroblast growth factor receptor 4 (FGFR4) and low-density lipoprotein receptor (LDLR) with parasite proteins Pf34 and PIESP15, respectively . [9] The parasite 6-cysteine domain proteins P36 and P52 are critical determinants that mediate host receptor usage during invasion . [1] While EphA2 was initially proposed as an important host receptor for P. [10] falciparum infection , [11] subsequent studies demonstrated that sporozoites can invade hepatocytes independently of EphA2, [12] suggesting it is not essential . [13] Glypican-3, a hepatocyte surface heparan sulfate proteoglycan, has also been identified as a putative mediator of sporozoite invasion . [14]
Sources

    Plasmodium P36 determines host cell receptor usage during sporozoite invasion (https://pmc.ncbi.nlm.nih.gov/articles/PMC5470872)
    Plasmodium P36 determines host cell receptor usage during sporozoite invasion (https://pmc.ncbi.nlm.nih.gov/articles/PMC5470872)
    Plasmodium P36 determines host cell receptor usage during sporozoite invasion (https://pmc.ncbi.nlm.nih.gov/articles/PMC5470872)
    Dual interaction of the malaria circumsporozoite protein with the low density lipoprotein receptor-related protein (LRP) and heparan sulfate proteoglycans. (https://europepmc.org/articles/pmc2192891?pdf=render)
    The basolateral domain of the hepatocyte plasma membrane bears receptors for the circumsporozoite protein of Plasmodium falciparum sporozoites. (https://pubmed.ncbi.nlm.nih.gov/1326407/)
    Alpha-v-containing integrins are host receptors for the Plasmodium falciparum sporozoite surface protein, TRAP. (https://www.pnas.org/content/pnas/115/17/4477.full.pdf)
    Structural and functional dissection of the adhesive domains of Plasmodium falciparum thrombospondin-related anonymous protein (TRAP). (https://europepmc.org/articles/pmc1224115?pdf=render)
    A screen for Plasmodium falciparum sporozoite surface protein binding to human hepatocyte surface receptors identifies novel host-pathogen interactions. (https://malariajournal.biomedcentral.com/counter/pdf/10.1186/s12936-024-04913-2)
    A screen for Plasmodium falciparum sporozoite surface protein binding to human hepatocyte surface receptors identifies novel host–pathogen interactions (https://link.springer.com/article/10.1186/s12936-024-04913-2)
    Plasmodium P36 determines host cell receptor usage during sporozoite invasion (https://pmc.ncbi.nlm.nih.gov/articles/PMC5470872)
    Malaria parasites target the hepatocyte receptor EphA2 for successful host infection (https://www.science.org/doi/abs/10.1126/science.aad3318)
    Kaushansky, A. et al. Malaria parasites target the hepatocyte receptor EphA2 (../data/papers/PAPERS MOTA LAB/2020/2020_Mello Vieira_NatComm.pdf)
    Plasmodium sporozoites can invade hepatocytic cells independently of the Ephrin receptor A2 (https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0200032)
    Plasmodium sporozoites can invade hepatocytic cells independently of the Ephrin receptor A2 (https://pmc.ncbi.nlm.nih.gov/articles/PMC6033427)', '{"model": "Qwen3.5 397b"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q05', 'A', 'No, Plasmodium falciparum does not form latent, relapsing liver-stage forms (hypnozoites) similar to Plasmodium vivax. This is a key distinguishing feature between these malaria parasite species. Hypnozoites—dormant liver-stage parasites that can reactivate weeks, months, or even years after initial infection to cause relapse—are a distinct characteristic of P. vivax and P. ovale [1, 2, 3]. Multiple sources explicitly confirm that "Plasmodium falciparum and Plasmodium malariae do not have a dormant liver stage" [2], and that "hypnozoites have only been observed in P. vivax" with some cases in P. ovale [3]. The formation of hypnozoites is described as "one distinctive feature of P. vivax that enables the parasite to evade conventional control measures designed for P. falciparum" [4]. While P. falciparum infections can recur, these are termed recrudescences (resulting from persistent blood-stage parasites) rather than relapses (which originate from dormant liver hypnozoites) [5]. This fundamental difference in life cycle has important implications for treatment: P. vivax requires radical cure with 8-aminoquinolines (e.g., primaquine or tafenoquine) to eliminate hypnozoites, whereas P. falciparum treatment targets only blood and liver schizont stages [6, 7].
Sources

    Evolutionary genetics of malaria. (https://www.frontiersin.org/articles/10.3389/fgene.2022.1030463/pdf)
    Activation of the hypnozoite: a part of Plasmodium vivax life cycle and survival (https://pmc.ncbi.nlm.nih.gov/articles/PMC3086824)
    The role of the liver in the migration of parasites of global significance (https://pmc.ncbi.nlm.nih.gov/articles/PMC6842148)
    Elimination of Plasmodium vivax Malaria: Problems and Solutions (https://api.unpaywall.org/v2/10.5772/INTECHOPEN.96604?email=<INSERT_YOUR_EMAIL)
    Clinical implications of a gradual dormancy concept in malaria (https://link.springer.com/article/10.1007/s00436-016-5043-0)
    Tafenoquine for preventing relapse in people with Plasmodium vivax malaria (https://pmc.ncbi.nlm.nih.gov/articles/PMC4468925)
    Liver-stage fate determination in Plasmodium vivax parasites: Characterization of schizont growth and hypnozoite fating from patient isolates (https://pmc.ncbi.nlm.nih.gov/articles/PMC9539820)', '{"model": "Qwen3.5 397b"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q05', 'B', 'Short answer: No. Unlike Plasmodium vivax, Plasmodium falciparum does not form true latent, relapsing hepatic hypnozoites; relapses in falciparum are usually recrudescence from persistent blood-stage parasites rather than reactivation of dormant liver stages. Relapses in vivax are attributed to reactivation of dormant hepatic hypnozoites, whereas recrudescence reflects clonal expansion of residual blood-stage parasites from the original infection [1] Hypnozoite-driven relapse is characteristic of vivax and ovale, while recrudescence denotes renewed parasitemia after blood-stage persistence [2].
Sources

    Plasmodium vivax and Plasmodium falciparum infection dynamics: re-infections, recrudescences and relapses (https://link.springer.com/article/10.1186/s12936-018-2318-1)
    The Mystery of Relapse in Malaria Research (https://link.springer.com/chapter/10.1007/978-3-658-13875-2_27)
    Unravelling malaria latency: parasite intrinsic and environmental factors influencing dormant liver stages (https://www.cell.com/trends/parasitology/fulltext/S1471-4922(24)00366-0)', '{"model": "DrTulu"}');
INSERT INTO answers (external_qid, label, answer_text, metadata) VALUES ('pref_q05', 'C', 'No, Plasmodium falciparum does not form latent, relapsing liver-stage forms known as hypnozoites, unlike Plasmodium vivax [1,2].  The ability to form quiescent hypnozoites in the liver is a unique biological feature of P. vivax that allows it to remain dormant for weeks to years, causing relapsing infections and posing a significant challenge to malaria elimination efforts [3, 4, 2, 5, 6, 1, 7]. This characteristic distinguishes P. vivax from P. falciparum, which does not have this dormant liver stage [1,2].
Sources

    Plasmodium vivax: the potential obstacles it presents to malaria elimination and eradication. (https://tdtmvjournal.biomedcentral.com/counter/pdf/10.1186/s40794-022-00185-3)
    Plasmodium vivax pre-erythrocytic vaccines. (https://doi.org/10.1016/j.parint.2021.102411)
    Ethiopian Plasmodium vivax hypnozoites formation dynamics and their susceptibility to reference antimalarial drugs. (https://bmcinfectdis.biomedcentral.com/counter/pdf/10.1186/s12879-023-08381-y)
    A drug repurposing approach reveals targetable epigenetic pathways in Plasmodium vivax hypnozoites. (https://escholarship.org/content/qt5xg122bt/qt5xg122bt.pdf?t=rtrr2c)
    Relapse. (https://doi.org/10.13005/bpj/738)
    A Drug Repurposing Approach Reveals Targetable Epigenetic Pathways in Plasmodium vivax Hypnozoites. (https://www.biorxiv.org/content/biorxiv/early/2023/01/31/2023.01.31.526483.full.pdf)
    Ethiopian Plasmodium vivax hypnozoites formation dynamics and their susceptibility to reference antimalarial drugs (https://bmcinfectdis.biomedcentral.com/counter/pdf/10.1186/s12879-023-08381-y)', '{"model": "Gemini 2.5 Flash"}');

-- ==========================================
-- PREFERENCE VOTES (from Google Forms rankings)
-- Reconstructed as round-robin pairwise comparisons
-- ==========================================

-- NOTE: Insert actual preference votes from the 8 respondents here.
-- Each respondent ranked 3 answers per question (1st, 2nd, 3rd).
-- Reconstruct pairwise comparisons or store rankings directly.
-- See the generated Python script for the actual data.

-- ==========================================
-- GRADING ITEMS (Activity 2)
-- ==========================================

INSERT INTO grade_items (external_qid, answer_id, question_text, answer_text) VALUES ('grade_q01', 'ans-1', 'Why is Plasmodium berghei frequently used as a proxy tool in molecular biology labs to study malaria gene function, even when the lab''s ultimate target is human malaria?', 'Summary answer

    Plasmodium berghei is widely used because it combines genetic tractability with full life‑cycle in vivo models in small mammals, enabling rapid, high‑throughput functional studies that are ethically and logistically feasible compared with human malaria systems; findings from Pb frequently inform human malaria due to conserved core biology and orthologous gene function, though labs still validate in human or nonhuman primate models when possible. Species used for gene manipulation studies include Plasmodium falciparum and Plasmodium berghei, with advantages and trade‑offs evaluated in comparative reviews [1] Reviews emphasize the ethical difficulties of working with human malaria and note that rodent malaria parasites have been genetically tractable since the 1990s [2] P. berghei is a widely‑used mouse malaria model, with liver‑stage gene function studies benefiting from the most important advantage of rodent malaria parasites [3] CRISPR‑based editing in P. berghei facilitates studies of the entire parasite life cycle and supports gene knockout and epitope tagging with transgenics [4].

Sources

    Advances in molecular genetic systems in malaria (https://www.nature.com/articles/nrmicro3450)
    Current status of experimental models for the study of malaria (https://www.cambridge.org/core/journals/parasitology/article/current-status-of-experimental-models-for-the-study-of-malaria/DC3AA116BE55820193043159D48CC1FC)
    A novel genetic technique in Plasmodium berghei allows liver stage analysis of genes required for mosquito stage development and demonstrates that de novo … (https://journals.plos.org/plospathogens/article?id=10.1371/journal.ppat.1006396)
    A scalable CRISPR-Cas9 gene editing system facilitates CRISPR screens in the malaria parasite Plasmodium berghei (https://academic.oup.com/nar/article-abstract/53/2/gkaf005/7973899)');
INSERT INTO grade_items (external_qid, answer_id, question_text, answer_text) VALUES ('grade_q02', 'ans-1', 'What are the standard animal hosts used to study the Plasmodium berghei liver-stage infection in vivo, and why is this model advantageous over P. falciparum?', 'Summary

    Standard in vivo hosts: Plasmodium berghei liver-stage infection is routinely studied in laboratory mice (commonly C57BL/6 and BALB/c inbred strains), and tree rats (Thamnomys surdaster) are recognized as natural hosts for P. berghei. Genetically engineered P. berghei is used with C57BL/6 mice as a standard in vivo liver-stage model [1] C57BL/6 and BALB/c mice differ in susceptibility to hepatic P. berghei infection [2] Thamnomys surdaster is a natural host of Plasmodium berghei [3].
    Why it is advantageous over P. falciparum: P. berghei supports complete liver-stage development in vivo and robust imaging and genetic readouts in mice, whereas P. falciparum liver-stage development cannot be completed in vitro and is typically studied in human red blood cells in vitro or in vivo only with complex humanized systems. P. berghei can complete liver-stage development in vivo, while P. falciparum liver-stage development cannot be completed in vitro [4] P. berghei and other Plasmodium species support in vivo bioluminescence readouts in the liver [5] Intravital imaging of fluorescent P. berghei sporozoites in live mice enables direct observation of liver-stage infection [6] P. falciparum research is predominantly in in vitro blood-stage cultures, whereas P. berghei supports in vivo analysis and genetic manipulation of pre-erythrocytic stages [7].

Sources

    Optimization of an in vivo model to study immunity to Plasmodium falciparum pre-erythrocytic stages (https://link.springer.com/article/10.1186/s12936-019-3055-9)
    Susceptibility of different strains of mice to hepatic infection with Plasmodium berghei (https://journals.asm.org/doi/abs/10.1128/iai.62.11.4844-4847.1994)
    Susceptibility of different strains of mice to hepatic infection with Plasmodium berghei (https://journals.asm.org/doi/abs/10.1128/iai.62.11.4844-4847.1994)
    … Plasmodium berghei allows liver stage analysis of genes required for mosquito stage development and demonstrates that de novo heme synthesis is essential for liver … (https://journals.plos.org/plospathogens/article?id=10.1371/journal.ppat.1006396)
    Optimization of an in vivo model to study immunity to Plasmodium falciparum pre-erythrocytic stages (https://link.springer.com/article/10.1186/s12936-019-3055-9)
    Intravital observation of Plasmodium berghei sporozoite infection of the liver (https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.0030192)
    Towards genome-wide experimental genetics in the in vivo malaria model parasite Plasmodium berghei (https://www.tandfonline.com/doi/abs/10.1179/2047773215Y.0000000006)');
INSERT INTO grade_items (external_qid, answer_id, question_text, answer_text) VALUES ('grade_q03', 'ans-1', 'Which common human hepatoma cell lines are widely used to host Plasmodium berghei liver-stage infections in vitro, and how does this contrast with P. falciparum?', 'Summary

    Common human hepatoma cell lines used to host Plasmodium berghei liver‑stage infections in vitro are HepG2 and Huh7, which support invasion, development through exoerythrocytic schizogony, and production of merozoites in culture.Two different hepatoma cell lines, HepG2 and Huh7, support liver‑stage schizogony of Plasmodium berghei [1]Huh7 or HepG2 hepatoma cell lines are commonly used for Plasmodium berghei liver‑stage development through the end of schizogony [2]Human hepatoma cells (Huh‑7) and HepG2‑CD81 have been infected with P. berghei, with schizogony initiated and host Golgi remodeling observed [3]. In contrast, Plasmodium falciparum liver stages rely primarily on primary human hepatocytes (PHH) for exoerythrocytic schizont (EES) culture and hypnozoite studies; hepatoma lines are generally less permissive for P. falciparum and are used sparingly or in specialized configurations.Primary human hepatocytes are the accepted system for assessing therapeutic efficacy against Plasmodium liver parasites, with co‑culture platforms improved by patterning primary human hepatocytes [4]Primary human hepatocytes are considered an ideal model for P. falciparum liver stages, with culture readouts compared to HepG2 [5]Reviews of human liver models emphasize primary human hepatocytes (PHHs) for liver-stage work, noting that some hepatoma lines (e.g., HepG2) show distinct invasion dynamics and limited hypnozoite support relative to PHH [6].

Sources

    Discovery of druggable host factors critical to Plasmodium liver-stage infection (https://www.cell.com/cell-chemical-biology/fulltext/S2451-9456(19)30180-1)
    The PTEX Pore Component EXP2 Is Important for Intrahepatic Development during the Plasmodium Liver Stage (https://journals.asm.org/doi/abs/10.1128/mbio.03096-22)
    Hijacking of the host cell Golgi by Plasmodium berghei liver stage parasites (https://journals.biologists.com/jcs/article-abstract/134/10/jcs252213/268311)
    Development of an efficient human hepatocyte culture platform for assessing novel therapeutic efficacy against Plasmodium liver parasites (https://search.proquest.com/openview/c32a3122db828031d76d7aacc7d4fcf5/1?pq-origsite=gscholar&cbl=18750)
    A novel immortalized hepatocyte-like cell line (imHC) supports in vitro liver stage development of the human malarial parasite Plasmodium vivax (https://link.springer.com/article/10.1186/s12936-018-2198-4)
    Next-generation human liver models for antimalarial drug assays (https://www.mdpi.com/2079-6382/10/6/642)');
INSERT INTO grade_items (external_qid, answer_id, question_text, answer_text) VALUES ('grade_q04', 'ans-1', 'Describe briefly the specific mode of nuclear division (replication) that Plasmodium falciparum undergoes inside the hepatocyte.', 'Summary

    In hepatocytes, Plasmodium falciparum undergoes hepatic schizogony: multiple rounds of DNA replication and nuclear division occur in a shared cytoplasm, followed by a final cytokinesis that partitions the newly formed nuclei into daughter merozoites Liver stage schizogony starts with DNA replication and nuclear division, with organelles expanding and membrane production peaking at the cytomere stage, after which nuclei and organelles are segregated by cytokinesis to form exoerythrocytic merozoites [1] Exoerythrocytic schizogony is characterized by multiple rounds of DNA replication and segregation in the absence of immediate cytokinesis within a coenocyte-like cell [2] During liver-stage replication, merozoites are formed via schizogony, with nuclear division in a shared cytoplasm [3].

Sources

    Same, same but different: Exploring Plasmodium cell division during liver stage development (https://pmc.ncbi.nlm.nih.gov/articles/PMC10062574)
    A replication-competent late liver stage-attenuated human malaria parasite. (https://api.unpaywall.org/v2/10.1172/jci.insight.135589?email=<INSERT_YOUR_EMAIL)
    Expansion microscopy of apicomplexan parasites (https://api.unpaywall.org/v2/10.1111/mmi.15135?email=<INSERT_YOUR_EMAIL)');
INSERT INTO grade_items (external_qid, answer_id, question_text, answer_text) VALUES ('grade_q05', 'ans-1', 'What is the origin and primary function of the Parasitophorous Vacuole Membrane (PVM) surrounding the parasite inside the hepatocyte?', 'Summary

The parasitophorous vacuole membrane (PVM) is the host-derived limiting membrane of the parasitophorous vacuole (PV) that surrounds the liver-stage malaria parasite within hepatocytes. It forms during sporozoite invasion and serves as the primary interface for parasite–host communication, nutrient exchange, and parasite development, while also mediating interactions with hepatocyte immune pathways and membrane trafficking machinery. The PV is surrounded by a PVM of hepatocyte origin [1] and membranes of the PV in hepatocytes are of host-cell origin [2]. The PVM represents the interface between the parasite and its host hepatocyte, with transport occurring through membrane pores [3].

Sources

    Malaria parasite liver infection and exoerythrocytic biology (https://perspectivesinmedicine.cshlp.org/content/7/6/a025486.short)
    The silent path to thousands of merozoites: the Plasmodium liver stage (https://www.nature.com/articles/nrmicro1529)
    Progress in imaging methods: insights gained into Plasmodium biology (https://www.nature.com/articles/nrmicro.2016.158)');

-- ==========================================
-- GRADINGS (from Google Forms)
-- Insert actual grading data from the 8 respondents here
-- ==========================================

-- See generated Python script for actual grading data

-- END OF SEED FILE
