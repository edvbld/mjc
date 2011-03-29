package se.helino.mjc.ir;

import se.helino.mjc.placeholder.Label;

public class IRName implements IRExpression {
    Label label;
    
    public IRName(Label label) {
        this.label = label;
    }

    public Label getLabel() {
        return label;
    }

}
