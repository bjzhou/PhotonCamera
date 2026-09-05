import java.nio.file.Files;
import java.nio.file.Path;

/** Exports actual JVM-initialized shader strings after compileDefaultDebugKotlin. */
class ExportMgcSabreRejectionShaders {
    public static void main(String[] args) throws Exception {
        Path output = Path.of(args[0]);
        Files.createDirectories(output);
        for (String[] entry : new String[][] {
            {"GlesMgcRawSabreShaders", "BaseFrameReferenceColor", "base"},
            {"GlesMgcRawSabreShaders", "Rejection", "rejection"},
            {"GlesMgcRawSpatialShaders", "DilateRejection", "dilate"}
        }) {
            Class<?> type = Class.forName("com.hinnka.mycamera.processor." + entry[0]);
            Object instance = type.getField("INSTANCE").get(null);
            String shader = (String) type.getMethod("get" + entry[1]).invoke(instance);
            if (!shader.startsWith("#version ")) throw new AssertionError(entry[2]);
            Files.writeString(output.resolve(entry[2] + ".frag"), shader);
            System.out.println(entry[2] + ": " + shader.length() + " bytes, #version at byte 0");
        }
    }
}
