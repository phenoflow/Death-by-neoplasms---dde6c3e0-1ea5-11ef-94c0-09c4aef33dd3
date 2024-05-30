# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"C25.8","system":"icd10"},{"code":"C68.8","system":"icd10"},{"code":"C32.8","system":"icd10"},{"code":"C31.8","system":"icd10"},{"code":"C04.8","system":"icd10"},{"code":"C18.8","system":"icd10"},{"code":"C15.8","system":"icd10"},{"code":"C44.8","system":"icd10"},{"code":"C13.8","system":"icd10"},{"code":"C05.8","system":"icd10"},{"code":"C48.8","system":"icd10"},{"code":"C02.8","system":"icd10"},{"code":"C26.8","system":"icd10"},{"code":"C76.8","system":"icd10"},{"code":"C50.8","system":"icd10"},{"code":"C11.8","system":"icd10"},{"code":"C57.8","system":"icd10"},{"code":"C60.8","system":"icd10"},{"code":"C10.8","system":"icd10"},{"code":"C71.8","system":"icd10"},{"code":"C00.8","system":"icd10"},{"code":"C21.8","system":"icd10"},{"code":"C51.8","system":"icd10"},{"code":"C72.8","system":"icd10"},{"code":"C38.8","system":"icd10"},{"code":"C34.8","system":"icd10"},{"code":"C16.8","system":"icd10"},{"code":"C49.8","system":"icd10"},{"code":"C06.8","system":"icd10"},{"code":"C63.8","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-neoplasms-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-neoplasms-natural-cause-overlap---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-neoplasms-natural-cause-overlap---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-neoplasms-natural-cause-overlap---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
