cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  extrahepatic-death-by-neoplasms-natural-cause---secondary:
    run: extrahepatic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  death-by-neoplasms-natural-cause-unspeci---secondary:
    run: death-by-neoplasms-natural-cause-unspeci---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: extrahepatic-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-breast---secondary:
    run: death-by-neoplasms-natural-cause-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-unspeci---secondary/output
  death-by-neoplasms-natural-cause-blast---secondary:
    run: death-by-neoplasms-natural-cause-blast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-breast---secondary/output
  mesothelial-death-by-neoplasms-natural-cause---secondary:
    run: mesothelial-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-blast---secondary/output
  pluriglandular-death-by-neoplasms-natural-cause---secondary:
    run: pluriglandular-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: mesothelial-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-appendix---secondary:
    run: death-by-neoplasms-natural-cause-appendix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: pluriglandular-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-mesothelioma---secondary:
    run: death-by-neoplasms-natural-cause-mesothelioma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-appendix---secondary/output
  death-by-neoplasms-natural-cause-illdefined---secondary:
    run: death-by-neoplasms-natural-cause-illdefined---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-mesothelioma---secondary/output
  death-by-neoplasms-natural-cause-penis---secondary:
    run: death-by-neoplasms-natural-cause-penis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-illdefined---secondary/output
  death-by-neoplasms-natural-cause-anaemia---secondary:
    run: death-by-neoplasms-natural-cause-anaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-penis---secondary/output
  death-by-neoplasms-natural-cause-abdoman---secondary:
    run: death-by-neoplasms-natural-cause-abdoman---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-anaemia---secondary/output
  death-by-neoplasms-natural-cause-uterine---secondary:
    run: death-by-neoplasms-natural-cause-uterine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-abdoman---secondary/output
  death-by-neoplasms-natural-cause-trachea---secondary:
    run: death-by-neoplasms-natural-cause-trachea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-uterine---secondary/output
  intestinal-death-by-neoplasms-natural-cause---secondary:
    run: intestinal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-trachea---secondary/output
  death-by-neoplasms-natural-cause-overlap---secondary:
    run: death-by-neoplasms-natural-cause-overlap---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: intestinal-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-limbinc---secondary:
    run: death-by-neoplasms-natural-cause-limbinc---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-overlap---secondary/output
  external-death-by-neoplasms-natural-cause---secondary:
    run: external-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-limbinc---secondary/output
  death-by-neoplasms-natural-cause-accessory---secondary:
    run: death-by-neoplasms-natural-cause-accessory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: external-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-ovary---secondary:
    run: death-by-neoplasms-natural-cause-ovary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-accessory---secondary/output
  death-by-neoplasms-natural-cause-melanoma---secondary:
    run: death-by-neoplasms-natural-cause-melanoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-ovary---secondary/output
  death-by-neoplasms-natural-cause-descending---secondary:
    run: death-by-neoplasms-natural-cause-descending---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-melanoma---secondary/output
  death-by-neoplasms-natural-cause-lymph---secondary:
    run: death-by-neoplasms-natural-cause-lymph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-descending---secondary/output
  death-by-neoplasms-natural-cause-surface---secondary:
    run: death-by-neoplasms-natural-cause-surface---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-lymph---secondary/output
  death-by-neoplasms-natural-cause-hypopharynx---secondary:
    run: death-by-neoplasms-natural-cause-hypopharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-surface---secondary/output
  chronic-death-by-neoplasms-natural-cause---secondary:
    run: chronic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-hypopharynx---secondary/output
  death-by-neoplasms-natural-cause-urethra---secondary:
    run: death-by-neoplasms-natural-cause-urethra---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: chronic-death-by-neoplasms-natural-cause---secondary/output
  renal-death-by-neoplasms-natural-cause---secondary:
    run: renal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-urethra---secondary/output
  urinary-death-by-neoplasms-natural-cause---secondary:
    run: urinary-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: renal-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-carcinoma---secondary:
    run: death-by-neoplasms-natural-cause-carcinoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: urinary-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-gallbladder---secondary:
    run: death-by-neoplasms-natural-cause-gallbladder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-carcinoma---secondary/output
  death-by-neoplasms-natural-cause-vagina---secondary:
    run: death-by-neoplasms-natural-cause-vagina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-gallbladder---secondary/output
  central-death-by-neoplasms-natural-cause---secondary:
    run: central-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-vagina---secondary/output
  eyelid-death-by-neoplasms-natural-cause---secondary:
    run: eyelid-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: central-death-by-neoplasms-natural-cause---secondary/output
  artic-death-by-neoplasms-natural-cause---secondary:
    run: artic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: eyelid-death-by-neoplasms-natural-cause---secondary/output
  uncertain-death-by-neoplasms-natural-cause---secondary:
    run: uncertain-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: artic-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-subacute---secondary:
    run: death-by-neoplasms-natural-cause-subacute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: uncertain-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-conjunctiva---secondary:
    run: death-by-neoplasms-natural-cause-conjunctiva---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-subacute---secondary/output
  death-by-neoplasms-natural-cause-scrotum---secondary:
    run: death-by-neoplasms-natural-cause-scrotum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-conjunctiva---secondary/output
  death-by-neoplasms-natural-cause-oropharynx---secondary:
    run: death-by-neoplasms-natural-cause-oropharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-scrotum---secondary/output
  death-by-neoplasms-natural-cause-respiratory---secondary:
    run: death-by-neoplasms-natural-cause-respiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-oropharynx---secondary/output
  lateral-death-by-neoplasms-natural-cause---secondary:
    run: lateral-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-respiratory---secondary/output
  mixed-death-by-neoplasms-natural-cause---secondary:
    run: mixed-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: lateral-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-kidney---secondary:
    run: death-by-neoplasms-natural-cause-kidney---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: mixed-death-by-neoplasms-natural-cause---secondary/output
  sigmoid-death-by-neoplasms-natural-cause---secondary:
    run: sigmoid-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-kidney---secondary/output
  death-by-neoplasms-natural-cause-canthu---secondary:
    run: death-by-neoplasms-natural-cause-canthu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: sigmoid-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-prostate---secondary:
    run: death-by-neoplasms-natural-cause-prostate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-canthu---secondary/output
  death-by-neoplasms-natural-cause-specification---secondary:
    run: death-by-neoplasms-natural-cause-specification---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-prostate---secondary/output
  death-by-neoplasms-natural-cause-nasal---secondary:
    run: death-by-neoplasms-natural-cause-nasal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-specification---secondary/output
  lacrimal-death-by-neoplasms-natural-cause---secondary:
    run: lacrimal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-nasal---secondary/output
  death-by-neoplasms-natural-cause-ligament---secondary:
    run: death-by-neoplasms-natural-cause-ligament---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: lacrimal-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-bones---secondary:
    run: death-by-neoplasms-natural-cause-bones---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-ligament---secondary/output
  death-by-neoplasms-natural-cause-chain---secondary:
    run: death-by-neoplasms-natural-cause-chain---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-bones---secondary/output
  death-by-neoplasms-natural-cause-uterus---secondary:
    run: death-by-neoplasms-natural-cause-uterus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-chain---secondary/output
  death-by-neoplasms-natural-cause-trunk---secondary:
    run: death-by-neoplasms-natural-cause-trunk---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-uterus---secondary/output
  female-death-by-neoplasms-natural-cause---secondary:
    run: female-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-trunk---secondary/output
  death-by-neoplasms-natural-cause-clavicle---secondary:
    run: death-by-neoplasms-natural-cause-clavicle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: female-death-by-neoplasms-natural-cause---secondary/output
  cerebral-death-by-neoplasms-natural-cause---secondary:
    run: cerebral-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-clavicle---secondary/output
  death-by-neoplasms-natural-cause-lymphangioma---secondary:
    run: death-by-neoplasms-natural-cause-lymphangioma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: cerebral-death-by-neoplasms-natural-cause---secondary/output
  lymphocytic-death-by-neoplasms-natural-cause---secondary:
    run: lymphocytic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-lymphangioma---secondary/output
  death-by-neoplasms-natural-cause-thymu---secondary:
    run: death-by-neoplasms-natural-cause-thymu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: lymphocytic-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-tumour---secondary:
    run: death-by-neoplasms-natural-cause-tumour---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-thymu---secondary/output
  death-by-neoplasms-natural-cause-intrathorac---secondary:
    run: death-by-neoplasms-natural-cause-intrathorac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-tumour---secondary/output
  axillary-death-by-neoplasms-natural-cause---secondary:
    run: axillary-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-intrathorac---secondary/output
  death-by-neoplasms-natural-cause-scapula---secondary:
    run: death-by-neoplasms-natural-cause-scapula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: axillary-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-retroperitoneum---secondary:
    run: death-by-neoplasms-natural-cause-retroperitoneum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-scapula---secondary/output
  death-by-neoplasms-natural-cause-leiomyoma---secondary:
    run: death-by-neoplasms-natural-cause-leiomyoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-retroperitoneum---secondary/output
  death-by-neoplasms-natural-cause-cornea---secondary:
    run: death-by-neoplasms-natural-cause-cornea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-leiomyoma---secondary/output
  death-by-neoplasms-natural-cause-tcell---secondary:
    run: death-by-neoplasms-natural-cause-tcell---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-cornea---secondary/output
  death-by-neoplasms-natural-cause-heart---secondary:
    run: death-by-neoplasms-natural-cause-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-tcell---secondary/output
  death-by-neoplasms-natural-cause-ciliary---secondary:
    run: death-by-neoplasms-natural-cause-ciliary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-heart---secondary/output
  haematapoietic-death-by-neoplasms-natural-cause---secondary:
    run: haematapoietic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-ciliary---secondary/output
  death-by-neoplasms-natural-cause-duodenum---secondary:
    run: death-by-neoplasms-natural-cause-duodenum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: haematapoietic-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-involvement---secondary:
    run: death-by-neoplasms-natural-cause-involvement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-duodenum---secondary/output
  death-by-neoplasms-natural-cause-larynx---secondary:
    run: death-by-neoplasms-natural-cause-larynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-involvement---secondary/output
  death-by-neoplasms-natural-cause-thorax---secondary:
    run: death-by-neoplasms-natural-cause-thorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-larynx---secondary/output
  death-by-neoplasms-natural-cause-floor---secondary:
    run: death-by-neoplasms-natural-cause-floor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-thorax---secondary/output
  death-by-neoplasms-natural-cause-tongue---secondary:
    run: death-by-neoplasms-natural-cause-tongue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-floor---secondary/output
  death-by-neoplasms-natural-cause-ureter---secondary:
    run: death-by-neoplasms-natural-cause-ureter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-tongue---secondary/output
  death-by-neoplasms-natural-cause-cutan---secondary:
    run: death-by-neoplasms-natural-cause-cutan---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-ureter---secondary/output
  connective-death-by-neoplasms-natural-cause---secondary:
    run: connective-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-cutan---secondary/output
  death-by-neoplasms-natural-cause-myeloma---secondary:
    run: death-by-neoplasms-natural-cause-myeloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: connective-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-subcut---secondary:
    run: death-by-neoplasms-natural-cause-subcut---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-myeloma---secondary/output
  death-by-neoplasms-natural-cause-skull---secondary:
    run: death-by-neoplasms-natural-cause-skull---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-subcut---secondary/output
  secondary-death-by-neoplasms-natural-cause---secondary:
    run: secondary-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-skull---secondary/output
  death-by-neoplasms-natural-cause-palate---secondary:
    run: death-by-neoplasms-natural-cause-palate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: secondary-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-rectum---secondary:
    run: death-by-neoplasms-natural-cause-rectum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-palate---secondary/output
  death-by-neoplasms-natural-cause-naevi---secondary:
    run: death-by-neoplasms-natural-cause-naevi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-rectum---secondary/output
  nodular-death-by-neoplasms-natural-cause---secondary:
    run: nodular-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-naevi---secondary/output
  death-by-neoplasms-natural-cause-periph---secondary:
    run: death-by-neoplasms-natural-cause-periph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: nodular-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-column---secondary:
    run: death-by-neoplasms-natural-cause-column---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-periph---secondary/output
  other-death-by-neoplasms-natural-cause---secondary:
    run: other-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-column---secondary/output
  death-by-neoplasms-natural-cause-description---secondary:
    run: death-by-neoplasms-natural-cause-description---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: other-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-scalp---secondary:
    run: death-by-neoplasms-natural-cause-scalp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-description---secondary/output
  death-by-neoplasms-natural-cause-pelvi---secondary:
    run: death-by-neoplasms-natural-cause-pelvi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-scalp---secondary/output
  death-by-neoplasms-natural-cause-placenta---secondary:
    run: death-by-neoplasms-natural-cause-placenta---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-pelvi---secondary/output
  immunoproliferative-death-by-neoplasms-natural-cause---secondary:
    run: immunoproliferative-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-placenta---secondary/output
  upper-death-by-neoplasms-natural-cause---secondary:
    run: upper-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: immunoproliferative-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-stomach---secondary:
    run: death-by-neoplasms-natural-cause-stomach---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: upper-death-by-neoplasms-natural-cause---secondary/output
  pineal-death-by-neoplasms-natural-cause---secondary:
    run: pineal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-stomach---secondary/output
  death-by-neoplasms-natural-cause-region---secondary:
    run: death-by-neoplasms-natural-cause-region---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: pineal-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-endocervix---secondary:
    run: death-by-neoplasms-natural-cause-endocervix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-region---secondary/output
  lymphoblastic-death-by-neoplasms-natural-cause---secondary:
    run: lymphoblastic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-endocervix---secondary/output
  death-by-neoplasms-natural-cause-erythraemia---secondary:
    run: death-by-neoplasms-natural-cause-erythraemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: lymphoblastic-death-by-neoplasms-natural-cause---secondary/output
  auricular-death-by-neoplasms-natural-cause---secondary:
    run: auricular-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-erythraemia---secondary/output
  lipomatous-death-by-neoplasms-natural-cause---secondary:
    run: lipomatous-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: auricular-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-sideroblast---secondary:
    run: death-by-neoplasms-natural-cause-sideroblast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: lipomatous-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-cavity---secondary:
    run: death-by-neoplasms-natural-cause-cavity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-sideroblast---secondary/output
  death-by-neoplasms-natural-cause-hodgkin---secondary:
    run: death-by-neoplasms-natural-cause-hodgkin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-cavity---secondary/output
  death-by-neoplasms-natural-cause-bronchu---secondary:
    run: death-by-neoplasms-natural-cause-bronchu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-hodgkin---secondary/output
  death-by-neoplasms-natural-cause-epididymi---secondary:
    run: death-by-neoplasms-natural-cause-epididymi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-bronchu---secondary/output
  supratentorial-death-by-neoplasms-natural-cause---secondary:
    run: supratentorial-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-epididymi---secondary/output
  frontal-death-by-neoplasms-natural-cause---secondary:
    run: frontal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: supratentorial-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-aspect---secondary:
    run: death-by-neoplasms-natural-cause-aspect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: frontal-death-by-neoplasms-natural-cause---secondary/output
  choroid-death-by-neoplasms-natural-cause---secondary:
    run: choroid-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-aspect---secondary/output
  spinal-death-by-neoplasms-natural-cause---secondary:
    run: spinal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: choroid-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-pancrea---secondary:
    run: death-by-neoplasms-natural-cause-pancrea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: spinal-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-curvature---secondary:
    run: death-by-neoplasms-natural-cause-curvature---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-pancrea---secondary/output
  independent-death-by-neoplasms-natural-cause---secondary:
    run: independent-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-curvature---secondary/output
  death-by-neoplasms-natural-cause-posterior---secondary:
    run: death-by-neoplasms-natural-cause-posterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: independent-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-cerebrum---secondary:
    run: death-by-neoplasms-natural-cause-cerebrum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-posterior---secondary/output
  death-by-neoplasms-natural-cause-meninge---secondary:
    run: death-by-neoplasms-natural-cause-meninge---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-cerebrum---secondary/output
  death-by-neoplasms-natural-cause-third---secondary:
    run: death-by-neoplasms-natural-cause-third---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-meninge---secondary/output
  death-by-neoplasms-natural-cause-caecum---secondary:
    run: death-by-neoplasms-natural-cause-caecum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-third---secondary/output
  death-by-neoplasms-natural-cause-endometrium---secondary:
    run: death-by-neoplasms-natural-cause-endometrium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-caecum---secondary/output
  death-by-neoplasms-natural-cause-malignant---secondary:
    run: death-by-neoplasms-natural-cause-malignant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-endometrium---secondary/output
  myeloid-death-by-neoplasms-natural-cause---secondary:
    run: myeloid-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-malignant---secondary/output
  death-by-neoplasms-natural-cause-coccyx---secondary:
    run: death-by-neoplasms-natural-cause-coccyx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: myeloid-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-oesophagu---secondary:
    run: death-by-neoplasms-natural-cause-oesophagu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-coccyx---secondary/output
  death-by-neoplasms-natural-cause-kaposis---secondary:
    run: death-by-neoplasms-natural-cause-kaposis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-oesophagu---secondary/output
  large-death-by-neoplasms-natural-cause---secondary:
    run: large-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-kaposis---secondary/output
  death-by-neoplasms-natural-cause-mediastinum---secondary:
    run: death-by-neoplasms-natural-cause-mediastinum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: large-death-by-neoplasms-natural-cause---secondary/output
  monocytic-death-by-neoplasms-natural-cause---secondary:
    run: monocytic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-mediastinum---secondary/output
  intrathoracic-death-by-neoplasms-natural-cause---secondary:
    run: intrathoracic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: monocytic-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-vulva---secondary:
    run: death-by-neoplasms-natural-cause-vulva---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: intrathoracic-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-ventricle---secondary:
    run: death-by-neoplasms-natural-cause-ventricle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-vulva---secondary/output
  death-by-neoplasms-natural-cause-transverse---secondary:
    run: death-by-neoplasms-natural-cause-transverse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-ventricle---secondary/output
  inner-death-by-neoplasms-natural-cause---secondary:
    run: inner-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-transverse---secondary/output
  death-by-neoplasms-natural-cause-quadrant---secondary:
    run: death-by-neoplasms-natural-cause-quadrant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: inner-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-colon---secondary:
    run: death-by-neoplasms-natural-cause-colon---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-quadrant---secondary/output
  cranial-death-by-neoplasms-natural-cause---secondary:
    run: cranial-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-colon---secondary/output
  death-by-neoplasms-natural-cause-labium---secondary:
    run: death-by-neoplasms-natural-cause-labium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: cranial-death-by-neoplasms-natural-cause---secondary/output
  tonsillar-death-by-neoplasms-natural-cause---secondary:
    run: tonsillar-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-labium---secondary/output
  death-by-neoplasms-natural-cause-retina---secondary:
    run: death-by-neoplasms-natural-cause-retina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: tonsillar-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-orbit---secondary:
    run: death-by-neoplasms-natural-cause-orbit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-retina---secondary/output
  death-by-neoplasms-natural-cause-pleura---secondary:
    run: death-by-neoplasms-natural-cause-pleura---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-orbit---secondary/output
  death-by-neoplasms-natural-cause-anterior---secondary:
    run: death-by-neoplasms-natural-cause-anterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-pleura---secondary/output
  death-by-neoplasms-natural-cause-syndrome---secondary:
    run: death-by-neoplasms-natural-cause-syndrome---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-anterior---secondary/output
  intraabdominal-death-by-neoplasms-natural-cause---secondary:
    run: intraabdominal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-syndrome---secondary/output
  canal-death-by-neoplasms-natural-cause---secondary:
    run: canal-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: intraabdominal-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-brain---secondary:
    run: death-by-neoplasms-natural-cause-brain---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: canal-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-nasopharynx---secondary:
    run: death-by-neoplasms-natural-cause-nasopharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-brain---secondary/output
  multiple-death-by-neoplasms-natural-cause---secondary:
    run: multiple-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-nasopharynx---secondary/output
  death-by-neoplasms-natural-cause-fundu---secondary:
    run: death-by-neoplasms-natural-cause-fundu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: multiple-death-by-neoplasms-natural-cause---secondary/output
  death-by-neoplasms-natural-cause-flexure---secondary:
    run: death-by-neoplasms-natural-cause-flexure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-fundu---secondary/output
  death-by-neoplasms-natural-cause-polycythaemia---secondary:
    run: death-by-neoplasms-natural-cause-polycythaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-flexure---secondary/output
  spermatic-death-by-neoplasms-natural-cause---secondary:
    run: spermatic-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-polycythaemia---secondary/output
  death-by-neoplasms-natural-cause-liver---secondary:
    run: death-by-neoplasms-natural-cause-liver---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: spermatic-death-by-neoplasms-natural-cause---secondary/output
  infratentorial-death-by-neoplasms-natural-cause---secondary:
    run: infratentorial-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-liver---secondary/output
  death-by-neoplasms-natural-cause-pyriform---secondary:
    run: death-by-neoplasms-natural-cause-pyriform---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: infratentorial-death-by-neoplasms-natural-cause---secondary/output
  lower-death-by-neoplasms-natural-cause---secondary:
    run: lower-death-by-neoplasms-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-pyriform---secondary/output
  death-by-neoplasms-natural-cause-specified---secondary:
    run: death-by-neoplasms-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: lower-death-by-neoplasms-natural-cause---secondary/output
  neoplasms---secondary:
    run: neoplasms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-specified---secondary/output
  death-by-neoplasms-natural-cause-cleaved---secondary:
    run: death-by-neoplasms-natural-cause-cleaved---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: neoplasms---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: death-by-neoplasms-natural-cause-cleaved---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
