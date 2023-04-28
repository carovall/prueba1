#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    FILE *input_file = fopen("astronmia.csv", "r");
    FILE *output_file_26 = fopen("output_26.dat", "wb");
    FILE *output_file_38 = fopen("output_38.dat", "wb");
    FILE *output_file_43 = fopen("output_43.dat", "wb");


    char line[1024];
    while (fgets(line, 1024, input_file)) {
        char *token = strtok(line, ",");
        int column = 1;
        while (token) {
            if (column == 1) {
                if (atoi(token) == 26) {
                    token = strtok(NULL, ",");
                    for (int i = 1; i < 9; i++) {
                        token = strtok(NULL, ",");
                    }
                    int value = atoi(token);
                    fwrite(&value, sizeof(int), 1, output_file_26);
                } else if (atoi(token) == 38) {
                    token = strtok(NULL, ",");
                    for (int i = 1; i < 9; i++) {
                        token = strtok(NULL, ",");
                    }
                    int value = atoi(token);
                    fwrite(&value, sizeof(int), 1, output_file_38);
                } else if (atoi(token) == 43) {
                    // Write the value from the 9th column to the output file for 43
                    token = strtok(NULL, ",");
                    for (int i = 1; i < 9; i++) {
                        token = strtok(NULL, ",");
                    }
                    int value = atoi(token);
                    fwrite(&value, sizeof(int), 1, output_file_43);
                }
            }
            token = strtok(NULL, ",");
            column++;
        }
    }

    fclose(input_file);
    fclose(output_file_26);
    fclose(output_file_38);
    fclose(output_file_43);
    return 0;
}
