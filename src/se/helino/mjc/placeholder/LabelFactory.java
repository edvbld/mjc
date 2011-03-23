package se.helino.mjc.placeholder;

import java.util.HashMap;

public class LabelFactory {
    private static HashMap<String, Label> labels = 
        new HashMap<String, Label>();
    
    public static Label create(String name) {
        if(labels.containsKey(name)) {
            return labels.get(name);
        }
        Label label = new Label(name);
        labels.put(name, label);
        return label;
    }

    public static Label create(String className, String methodName) {
        String name = className + "$" + methodName;
        return create(name);
    }
}
