.class public final Ldwb;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .locals 0

    :try_start_0
    invoke-virtual/range {p0 .. p6}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_0

    nop

    nop

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
.end method

.method public static c(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gtz v2, :cond_0

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v4, p1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    move v3, v0

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_10

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    invoke-static {p1, v1}, Ldwb;->n(II)Z

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-class v2, Ldyv;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    if-lt v3, v2, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    if-ge p1, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    :goto_1a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget-object v4, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_20
    check-cast v1, [Ldyv;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x1

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

    :goto_22
    if-nez p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    if-gt p1, v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v5, p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_9
    goto/32 :goto_27

    nop

    nop

    :goto_2a
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_a
    goto/32 :goto_9

    nop

    :goto_2b
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

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

    :goto_2c
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_e

    nop

    nop

    :goto_2e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_0
    if-nez p4, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v4, p2, v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_b
    add-int/lit8 p2, p2, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_e
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_10
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_12
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_86

    nop

    nop

    :goto_15
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_16
    move p4, v3

    nop

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

    :goto_17
    if-gez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    if-ge v2, p3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_5
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_43

    nop

    :goto_24
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_26
    add-int/2addr v2, p3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne v1, v4, :cond_6

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_6
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v4, -0x1

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

    :goto_29
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2a
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_45

    nop

    nop

    :goto_2d
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_31
    if-lt p4, v1, :cond_7

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

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-gez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v3, :cond_9

    nop

    goto/32 :goto_6d

    nop

    :cond_9
    goto/32 :goto_15

    nop

    nop

    :goto_35
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_36
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_37
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_8a

    nop

    nop

    :goto_39
    if-gtz p4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-ltz p2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne p3, v4, :cond_c

    nop

    goto/32 :goto_6d

    nop

    :cond_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_58

    nop

    nop

    :goto_43
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_45
    move p4, v0

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_7e

    nop

    nop

    :goto_47
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move p3, v4

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_5d

    nop

    nop

    :goto_4d
    if-nez p4, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_d
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4f
    if-eqz p4, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-lt v2, p4, :cond_f

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_f
    goto/32 :goto_8

    nop

    nop

    :goto_51
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move p3, v2

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

    :goto_53
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    nop

    :goto_54
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move p4, v3

    nop

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

    nop

    :goto_56
    invoke-static {v1, v2}, Ldwb;->n(II)Z

    move-result v3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move p4, v0

    nop

    :goto_58
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5a
    if-ltz v1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_10
    goto/32 :goto_0

    nop

    nop

    :goto_5b
    if-eqz p4, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :cond_11
    goto/32 :goto_7a

    nop

    nop

    :goto_5c
    if-lt p3, v2, :cond_12

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez p1, :cond_13

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_13
    goto/32 :goto_17

    nop

    nop

    :goto_61
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/32 :goto_71

    nop

    nop

    :goto_62
    goto/16 :goto_43

    nop

    :goto_63
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_77

    nop

    nop

    :goto_65
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez p4, :cond_14

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p2, [Ldyv;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_68
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_69
    if-nez p4, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6a
    if-nez p2, :cond_16

    nop

    nop

    goto/32 :goto_77

    nop

    :cond_16
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_6b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_6c
    return v3

    nop

    :goto_6d
    goto/32 :goto_82

    nop

    nop

    :goto_6e
    if-lez v0, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_5e

    nop

    :goto_6f
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_70
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_71
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_43

    nop

    :goto_75
    goto/32 :goto_55

    nop

    nop

    :goto_76
    move v1, v4

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_78
    array-length p4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_79
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_7a
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_5f

    nop

    :goto_7d
    if-nez p4, :cond_18

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_18
    goto/32 :goto_40

    nop

    nop

    :goto_7e
    if-nez p2, :cond_19

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

    :cond_19
    goto/32 :goto_1d

    nop

    nop

    :goto_7f
    if-nez p4, :cond_1a

    nop

    goto/32 :goto_14

    nop

    :cond_1a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_80
    if-ltz p3, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_1b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_82
    return v0

    nop

    :goto_83
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-ltz p2, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_1c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_85
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_86
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_87
    if-eqz v6, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_88
    if-nez p4, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_89
    add-int/lit8 v1, v1, -0x1

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_8a
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_8b
    const v1, 0x1d

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8c
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    sub-int/2addr v1, p2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const-class p2, Ldyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_58

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_79

    nop

    nop

    nop

    nop
.end method

.method public static e(J)Ledp;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    const v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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
    invoke-static {p0, p1}, Lrrf;->J(J)[B

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ledp;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const/16 p1, 0x4e

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, p0, p1}, Ledp;-><init>(Ljava/lang/String;[BI)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "editable.tracks.offset"

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public static varargs f([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    array-length v3, p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    move v1, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v2, v3

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

    :goto_a
    goto/16 :goto_1c

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x5

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

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

    nop

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

    :goto_f
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    aget-object v3, p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto :goto_16

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    :goto_19
    if-lt v0, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    if-lt v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    aget-object v2, p0, v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Ljava/lang/String;Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    return-object v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_24

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

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

    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lt v2, v3, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_10

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v3, Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    add-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lt v0, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, p0, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

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

    :goto_13
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    goto/16 :goto_26

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v1, 0x8

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

    :goto_1a
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x6

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

    :goto_22
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v2, v0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop
.end method

.method public static h(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

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

    :goto_3
    invoke-static {p0, p1}, Ldwb;->i([BLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static i([BLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

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

    :goto_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

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

    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v1, v1, 0x8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/32 :goto_6

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
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v0, v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_11
    const v0, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static j(Lejm;Lejp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lejm;->b(Lejp;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static k(Lejm;Lejp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lejm;->e(Lejp;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static l(Landroid/view/ViewGroup;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0b04cf

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

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
.end method

.method public static m(FFFF)Landroid/graphics/Path;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static n(II)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    goto :goto_7

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-ne p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p0, v0, :cond_2

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

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
