#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>

#include <base64.h>

#define COLOR_GREEN  "\033[0;32m"
#define COLOR_OFF    "\033[0m"

static void showHelp() {
    if (isatty(STDOUT_FILENO)) {
        const char * str = "usage:\n\n"
        COLOR_GREEN
        "base64-decode --help\n"
        "base64-decode -h\n"
        COLOR_OFF
        "    show help of this command.\n\n"
        COLOR_GREEN
        "base64-decode --version\n"
        "base64-decode -V\n"
        COLOR_OFF
        "    show version of this command.\n\n"
        COLOR_GREEN
        "base64-decode <BASE64-ENCODED-STR>\n"
        COLOR_OFF
        "    decode <BASE64-ENCODED-STR> using base64 algorithm.\n\n"
        COLOR_GREEN
        "printf '%s' YWJjZA== | base64-decode\n"
        COLOR_OFF
        "    decode data using base64 algorithm.\n";

        printf("%s\n", str);
    } else {
        printf("%s\n",
            "usage:\n\n"
            "base64-decode --help\n"
            "base64-decode -h\n"
            "    show help of this command.\n\n"
            "base64-decode --version\n"
            "base64-decode -V\n"
            "    show version of this command.\n\n"
            "base64-decode <BASE64-ENCODED-STR>\n"
            "    decode <BASE64-ENCODED-STR> using base64 algorithm.\n\n"
            "printf '%s' 7F454C46 | base64-decode\n"
            "    decode data using base64 algorithm.\n"
        );
    }
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        char readBuf[1024];

        for (;;) {
            ssize_t readSize = read(STDIN_FILENO, readBuf, 1024);

            if (readSize == -1) {
                perror(NULL);
                return 1;
            }

            if (readSize == 0) {
                if (isatty(STDOUT_FILENO)) {
                    printf("\n");
                }

                return 0;
            }

            size_t        outputBuffSize = (readSize * 3U) >> 2;
            unsigned char outputBuff[outputBuffSize];
            size_t        outputRealSize;

            int ret = base64_decode(outputBuff, outputBuffSize, &outputRealSize, readBuf, readSize);

            if (ret != 0) {
                return ret;
            }

            ssize_t writtenSize = write(STDOUT_FILENO, outputBuff, outputRealSize);

            if (writtenSize == -1) {
                perror(NULL);
                return 1;
            }

            if ((size_t)writtenSize != outputRealSize) {
                fprintf(stderr, "not fully written to stdout.\n");
                return 1;
            }
        }
    }

           if (strcmp(argv[1], "-h") == 0) {
        showHelp();
    } else if (strcmp(argv[1], "--help") == 0) {
        showHelp();
    } else if (strcmp(argv[1], "-V") == 0) {
        printf("%s\n", "1.0.0");
    } else if (strcmp(argv[1], "--version") == 0) {
        printf("%s\n", "1.0.0");
    } else {
        if (argv[1][0] == '\0') {
            fprintf(stderr, "base64-decode <BASE64-ENCODED-STR>, <BASE64-ENCODED-STR> should be a non-empty string.");
            return 1;
        }

        size_t inputSize = strlen(argv[1]);

        size_t        outputBuffSize = (inputSize * 3U) >> 2;
        unsigned char outputBuff[outputBuffSize];
        size_t        outputRealSize;

        int ret = base64_decode(outputBuff, outputBuffSize, &outputRealSize, argv[1], inputSize);

        if (ret != 0) {
            return ret;
        }

        ssize_t writtenSize = write(STDOUT_FILENO, outputBuff, outputRealSize);

        if (writtenSize == -1) {
            perror(NULL);
            return 1;
        }

        if ((size_t)writtenSize != outputRealSize) {
            fprintf(stderr, "not fully written to stdout.\n");
            return 1;
        }

        if (isatty(STDOUT_FILENO)) {
            printf("\n");
        }

        return 0;
    }
}
