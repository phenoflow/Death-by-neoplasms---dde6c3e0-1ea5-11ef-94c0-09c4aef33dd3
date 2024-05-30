# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"C26.0","system":"icd10"},{"code":"C17.2","system":"icd10"},{"code":"C88.3","system":"icd10"},{"code":"C17.8","system":"icd10"},{"code":"C78.4","system":"icd10"},{"code":"C78.5","system":"icd10"},{"code":"D37.2","system":"icd10"},{"code":"C62.0","system":"icd10"},{"code":"D01.4","system":"icd10"},{"code":"D29.2","system":"icd10"},{"code":"C62.9","system":"icd10"},{"code":"C17.3","system":"icd10"},{"code":"C17.1","system":"icd10"},{"code":"D40.1","system":"icd10"},{"code":"C62","system":"icd10"},{"code":"C17.9","system":"icd10"},{"code":"C17","system":"icd10"},{"code":"D13.3","system":"icd10"},{"code":"C62.1","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-neoplasms-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intestinal-death-by-neoplasms-natural-cause---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intestinal-death-by-neoplasms-natural-cause---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intestinal-death-by-neoplasms-natural-cause---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
