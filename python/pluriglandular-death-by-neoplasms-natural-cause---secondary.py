# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"D44.6","system":"icd10"},{"code":"D44.7","system":"icd10"},{"code":"D44.4","system":"icd10"},{"code":"D35.6","system":"icd10"},{"code":"C08.8","system":"icd10"},{"code":"D35.2","system":"icd10"},{"code":"D11","system":"icd10"},{"code":"D44.2","system":"icd10"},{"code":"C68.1","system":"icd10"},{"code":"C75","system":"icd10"},{"code":"C73.X","system":"icd10"},{"code":"C74","system":"icd10"},{"code":"D35.1","system":"icd10"},{"code":"C08.0","system":"icd10"},{"code":"D11.9","system":"icd10"},{"code":"D35.7","system":"icd10"},{"code":"C74.9","system":"icd10"},{"code":"C79.7","system":"icd10"},{"code":"D34","system":"icd10"},{"code":"C75.1","system":"icd10"},{"code":"C74.0","system":"icd10"},{"code":"D44","system":"icd10"},{"code":"D35.0","system":"icd10"},{"code":"D44.1","system":"icd10"},{"code":"C08","system":"icd10"},{"code":"D11.7","system":"icd10"},{"code":"D44.0","system":"icd10"},{"code":"C75.0","system":"icd10"},{"code":"C73","system":"icd10"},{"code":"D44.9","system":"icd10"},{"code":"C07","system":"icd10"},{"code":"C75.9","system":"icd10"},{"code":"C60.1","system":"icd10"},{"code":"D35","system":"icd10"},{"code":"D35.9","system":"icd10"},{"code":"C74.1","system":"icd10"},{"code":"C75.4","system":"icd10"},{"code":"D35.3","system":"icd10"},{"code":"D35.5","system":"icd10"},{"code":"C07.X","system":"icd10"},{"code":"D34.X","system":"icd10"},{"code":"C75.5","system":"icd10"},{"code":"D44.3","system":"icd10"},{"code":"C08.1","system":"icd10"},{"code":"C75.2","system":"icd10"},{"code":"D11.0","system":"icd10"},{"code":"D09.3","system":"icd10"},{"code":"C08.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-neoplasms-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["pluriglandular-death-by-neoplasms-natural-cause---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["pluriglandular-death-by-neoplasms-natural-cause---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["pluriglandular-death-by-neoplasms-natural-cause---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
