package kata;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Reads a text file line by line into a list of Strings.
 */
class TextFileReader {

    public List<String> readLines(String fileName) throws IOException {
        try (BufferedReader in = new BufferedReader(new FileReader(fileName))){
            return readLines(in);
        }
    }

    private List<String> readLines(BufferedReader in) throws IOException {
        List<String> lines = new ArrayList<>();
        readInto(lines, in);
        return lines;
    }

    private void readInto(List<String> lines, BufferedReader in) throws IOException {
        String line = in.readLine();
        while (line != null) {
            lines.add(line);
            line = in.readLine();
        }
    }
}
