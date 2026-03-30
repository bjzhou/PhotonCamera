.class public Landroidx/constraintlayout/core/motion/parse/KeyParser;
.super Ljava/lang/Object;
.source "KeyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;,
        Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "{frame:22,\ntarget:\'widget1\',\neasing:\'easeIn\',\ncurveFit:\'spline\',\nprogress:0.3,\nalpha:0.2,\nelevation:0.7,\nrotationZ:23,\nrotationX:25.0,\nrotationY:27.0,\npivotX:15,\npivotY:17,\npivotTarget:\'32\',\npathRotate:23,\nscaleX:0.5,\nscaleY:0.7,\ntranslationX:5,\ntranslationY:7,\ntranslationZ:11,\n}"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/parse/KeyParser;->parseAttributes(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static parse(Ljava/lang/String;Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .locals 11

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLParsingException;->printStackTrace()V

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v9, "parse "

    nop

    nop

    nop

    sparse-switch v8, :sswitch_data_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_0
    :try_start_0
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v8

    nop

    invoke-virtual {v0, v7, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    const-string v10, " STRING_MASK > "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_1
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v8

    nop

    nop

    nop

    invoke-virtual {v0, v7, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    const-string v10, " FLOAT_MASK > "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v10

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    nop

    nop

    nop

    :sswitch_2
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    const-string v10, " INT_MASK > "

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getBoolean(I)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IZ)V
    :try_end_0
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    :goto_b
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    :try_start_1
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    move-result v2

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ge v3, v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLObject;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v4

    nop

    check-cast v4, Landroidx/constraintlayout/core/parser/CLKey;

    nop

    nop

    nop

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {p1, v5}, Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;->get(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    const/4 v8, -0x1

    nop

    nop

    nop

    if-ne v7, v8, :cond_0

    nop

    nop

    nop

    nop

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown type "

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-interface {p2, v7}, Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;->get(I)I

    move-result v8

    nop
    :try_end_1
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_e
    goto/16 :goto_2

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    goto/16 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static parseAttributes(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda0;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda0;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    new-instance v1, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda1;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0, v1}, Landroidx/constraintlayout/core/motion/parse/KeyParser;->parse(Ljava/lang/String;Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda1;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
