.class Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteJsonEngine"
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/String; = "       "


# instance fields
.field final BASELINE:Ljava/lang/String;

.field final BOTTOM:Ljava/lang/String;

.field final END:Ljava/lang/String;

.field final LEFT:Ljava/lang/String;

.field final RIGHT:Ljava/lang/String;

.field final START:Ljava/lang/String;

.field final TOP:Ljava/lang/String;

.field context:Landroid/content/Context;

.field flags:I

.field idMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintSet;

.field unknownCount:I

.field writer:Ljava/io/Writer;


# direct methods
.method private 3ec18cdbab0241e0aad8eef2cee0a60cm(Ljava/lang/String;IIFIIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimString",
            "dim",
            "dimDefault",
            "dimPercent",
            "dimMin",
            "dimMax",
            "constrainedDim"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, ": \'parent\'\n"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_9
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_f
    const-string v2, ": \'???????????\',\n"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p5, v0, :cond_1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :pswitch_0
    nop

    :goto_12
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_33

    nop

    :pswitch_1
    goto/32 :goto_62

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, -0x1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq p2, v2, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    :goto_19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    const-string v2, ": \'wrap\'\n"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1f
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v2, ": \'"

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2b
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2c
    goto/32 :goto_53

    nop

    nop

    :goto_2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_75

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    nop

    :goto_33
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-string v4, ": {\'"

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3a
    if-eq p2, v0, :cond_3

    nop

    goto/32 :goto_5c

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v0, "}\n"

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq p6, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    :goto_3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v4, ": {\'spread\' ,"

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3f
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_42
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string v4, "\'% ,"

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_44
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :goto_45
    packed-switch p3, :pswitch_data_0

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_52

    nop

    :goto_47
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_49
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_4a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4c
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_12

    nop

    :pswitch_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_52
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_56
    const-string v2, ": "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_59
    const-string v4, ": {\'wrap\' ,"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-int v0, v0, v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_48

    nop

    nop

    :goto_5d
    return-void

    nop

    :pswitch_4
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v2, "%\',\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_60
    const-string v1, "       "

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_62
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_63
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_1f

    nop

    nop

    :goto_6a
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_6e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_73
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :goto_74
    goto/32 :goto_2c

    nop

    nop

    :goto_75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_78
    const-string v2, ", "

    nop

    nop

    nop

    nop

    nop

    packed-switch p3, :pswitch_data_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_7d
    return-void

    nop

    :goto_7e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const-string v2, ",\n"

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_83
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet;Ljava/io/Writer;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "writer",
            "layout",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "\'end\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->BOTTOM:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->RIGHT:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const-string v0, "\'bottom\'"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->context:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->flags:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->START:Ljava/lang/String;

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

    :goto_d
    const-string v0, "\'baseline\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "\'top\'"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "\'right\'"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->BASELINE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "\'left\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->LEFT:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->END:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->TOP:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    const-string v0, "\'start\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method private aaa0f5ebad67809fe3a5a0105b0d1ddfm(IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orientation",
            "guideBegin",
            "guideEnd",
            "guidePercent"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method


# virtual methods
.method getName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_21

    nop

    nop

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->lookup(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "\'parent\'"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    :goto_25
    goto/32 :goto_11

    nop

    nop

    :goto_26
    return-object v0

    nop

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method lookup(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->context:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    return-object v0

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    nop

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    const v0, 0x14

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "unknown"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method writeCircle(IFI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "circleConstraint",
            "circleAngle",
            "circleRadius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p1, v0, :cond_0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, ":["

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    const-string v2, "]"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v2, ", "

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

    :goto_15
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    const-string v1, "       circle"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    const v1, 0x20

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "my",
            "leftToLeft",
            "other",
            "margin",
            "goneMargin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v2, "       "

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq p2, v0, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    const-string v1, " , "

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    const-string v1, "],\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_27
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    :goto_29
    goto/32 :goto_9

    nop

    nop

    :goto_2a
    const-string v1, ":["

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez p4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method writeLayout()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_1
    const-string v1, "\'start\'"

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_2
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "\'bottom\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;FF)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "\'start\'"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    const-string v1, "\n\'ConstraintSet\':{\n"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "\'verticalBias\'"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_c
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_f
    move-object v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v10, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "\'start\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v11, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;[I)V

    :goto_15
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_18
    const-string v9, "}\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "width"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;FF)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "\'barrierMargin\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v13, v11, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_21
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "\'left\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;F)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_25
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "\'top\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v1, "\'top\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->3ec18cdbab0241e0aad8eef2cee0a60cm(Ljava/lang/String;IIFIIZ)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2c
    const-string v3, "\'end\'"

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v3, "\'top\'"

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->access$1300(Landroidx/constraintlayout/widget/ConstraintSet;)Ljava/util/HashMap;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    :goto_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_34
    const-string v3, "\'bottom\'"

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :cond_1
    goto/32 :goto_ab

    nop

    :goto_3a
    const-string v3, "\'left\'"

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_3b
    iget-boolean v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3c
    const/4 v1, 0x1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_40
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_41
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_42
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_44
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_45
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v4, -0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_47
    const-string v1, "\'end\'"

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_48
    iget-object v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_49
    const-string v1, "\'ReferenceId\'"

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_4a
    iget-boolean v7, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4b
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4c
    const v1, 0x3

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4d
    const-string v1, "\'right\'"

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_4e
    const-string v1, "\'baseline\'"

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_4f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const-string v1, "\'dimensionRatio\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_52
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_54
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_55
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_56
    iget-object v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_57
    const-string v2, "\'mBarrierAllowsGoneWidgets\'"

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_58
    const-string v1, "\'bottom\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_5a
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_5e
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v3, "\'bottom\'"

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_60
    const-string v1, "\'horizontalBias\'"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_62
    const-string v2, ":{\n"

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

    :goto_63
    const-string v1, "height"

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_65
    move-object v0, p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_66
    const-string v3, "\'right\'"

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_69
    const-string v1, "\'horizontalChainStyle\'"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v3, "\'start\'"

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6b
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    :goto_6d
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    :goto_70
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_73
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    :goto_77
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_7a
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_7b
    const-string v1, "\'left\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_7d
    const-string v1, "\'verticalChainStyle\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_7e
    const-string v3, "\'end\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_7f
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_81
    const-string v1, "\'barrierDirection\'"

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_83
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->access$1300(Landroidx/constraintlayout/widget/ConstraintSet;)Ljava/util/HashMap;

    move-result-object v0

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_85
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->3ec18cdbab0241e0aad8eef2cee0a60cm(Ljava/lang/String;IIFIIZ)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, v2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;ZZ)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_9

    nop

    nop

    :goto_88
    const-string v1, "\'end\'"

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_89
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_77

    nop

    nop

    :goto_8b
    iget v1, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_8c
    const-string v1, "\'ReferenceIds\'"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8d
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_8e
    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const-string v1, "\'right\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_92
    const-string v3, "\'left\'"

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_93
    iget v6, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeCircle(IFI)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_96
    const-string v1, "\'horizontalWeight\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const-string v1, "\'baseline\'"

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_98
    iget v6, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_99
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_9a
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_9d
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9e
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const-string v1, "\'top\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a1
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const-string v3, "\'baseline\'"

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_a8
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_a9
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;F)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-boolean v7, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_b2
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->aaa0f5ebad67809fe3a5a0105b0d1ddfm(IIIF)V

    goto/32 :goto_c6

    nop

    nop

    :goto_b3
    invoke-virtual {v0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_b4
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const-string v1, "\'type\'"

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b7
    return-void

    nop

    nop

    :goto_b8
    goto/32 :goto_a2

    nop

    nop

    :goto_b9
    const-string v1, "\'baseline\'"

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_ba
    move-object v11, v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_bb
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_bc
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_bd
    const-string v3, "\'right\'"

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    goto/32 :goto_a8

    nop

    nop

    :goto_bf
    const-string v3, "\'bottom\'"

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_c0
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_c3
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const-string v1, "\'verticalWeight\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_c8
    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iget v5, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const-string v1, "\'WrapBehavior\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const-string v3, "\'top\'"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_cd
    iget v4, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_ce
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method writeVariable(Ljava/lang/String;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, ",\n"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    :goto_7
    cmpl-float v0, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const-string v2, ": "

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const-string v2, "       "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    :goto_14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    const v0, 0x8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    const v1, 0x7

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method writeVariable(Ljava/lang/String;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "def"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, ": "

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmpl-float v0, p2, p3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, "       "

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    const-string v1, ",\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop
.end method

.method writeVariable(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_22

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, ":"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p2, v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const v1, 0x8

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

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    :goto_18
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    const-string v2, "       "

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    const-string v1, "\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, ", "

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0xe

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_25
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop
.end method

.method writeVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, ", "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    const-string v1, "\n"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    const-string v2, "       "

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_13
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, ":"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method writeVariable(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    const-string v1, ",\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, "       "

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, ": "

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method writeVariable(Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "def"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

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

    nop

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v2, "       "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const-string v2, ": "

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p2, p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    const v1, 0x16

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, ",\n"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method writeVariable(Ljava/lang/String;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    goto/32 :goto_22

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, ": "

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    const-string v2, "       "

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_13

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, ", "

    nop

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    const-string v1, "],\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    array-length v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_24
    const-string v3, "["

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aget v3, p2, v0

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

    :goto_2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lt v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
