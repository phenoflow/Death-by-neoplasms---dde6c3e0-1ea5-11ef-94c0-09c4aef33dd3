# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"D21.1","system":"icd10"},{"code":"C44.6","system":"icd10"},{"code":"D03.6","system":"icd10"},{"code":"C47.2","system":"icd10"},{"code":"D21.2","system":"icd10"},{"code":"D17.2","system":"icd10"},{"code":"C49.1","system":"icd10"},{"code":"D23.6","system":"icd10"},{"code":"D03.7","system":"icd10"},{"code":"C40.9","system":"icd10"},{"code":"C40.1","system":"icd10"},{"code":"D04.7","system":"icd10"},{"code":"D16.3","system":"icd10"},{"code":"C47.1","system":"icd10"},{"code":"C40","system":"icd10"},{"code":"C76.5","system":"icd10"},{"code":"C43.6","system":"icd10"},{"code":"D04.6","system":"icd10"},{"code":"D22.6","system":"icd10"},{"code":"C40.2","system":"icd10"},{"code":"D22.7","system":"icd10"},{"code":"D16.1","system":"icd10"},{"code":"C76.4","system":"icd10"},{"code":"C77.4","system":"icd10"},{"code":"C40.8","system":"icd10"},{"code":"C43.7","system":"icd10"},{"code":"C40.3","system":"icd10"},{"code":"D16.2","system":"icd10"},{"code":"D23.7","system":"icd10"},{"code":"C44.7","system":"icd10"},{"code":"C49.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-neoplasms-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-neoplasms-natural-cause-limbinc---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-neoplasms-natural-cause-limbinc---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-neoplasms-natural-cause-limbinc---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
