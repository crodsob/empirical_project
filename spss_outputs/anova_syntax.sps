* Encoding: UTF-8.
GLM acq_csp_sacc_amplitude acq_csm_sacc_amplitude BY IU_group 
  /WSFACTOR=stimulus 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /POSTHOC=IU_group(LSD) 
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(IU_group) COMPARE ADJ(LSD) 
  /EMMEANS=TABLES(stimulus) COMPARE ADJ(LSD) 
  /EMMEANS=TABLES(IU_group*stimulus) COMPARE (IU_group) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(IU_group*stimulus) COMPARE (stimulus) ADJ (BONFERRONI) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /DESIGN= IU_group.
  
  GLM e_ext_csp_sacc_amplitude l_ext_csp_sacc_amplitude e_ext_csm_sacc_amplitude l_ext_csm_sacc_amplitude BY iu_group 
  /WSFACTOR=stimulus 2 Polynomial time 2 POLYNOMIAL    
  /MEASURE=ext_fix_count 
  /METHOD=SSTYPE(3) 
  /POSTHOC=iu_group(BONFERRONI) 
  /EMMEANS=TABLES(OVERALL) 
  /EMMEANS=TABLES(iu_group) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(stimulus) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(time) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus) COMPARE (iu_group) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus) COMPARE (stimulus) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*time) COMPARE (iu_group) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*time) COMPARE (time) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(stimulus*time) COMPARE (stimulus) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(stimulus*time) COMPARE (time) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus*time) COMPARE (iu_group) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus*time) COMPARE (stimulus) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus*time) COMPARE (time) ADJ (BONFERRONI) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=stimulus time stimulus*time 
  /DESIGN=iu_group.
