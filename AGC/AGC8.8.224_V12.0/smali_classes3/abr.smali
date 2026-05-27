.class public final Labr;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1, v1}, Labr;->e(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const-class v2, Laiy;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Laiy;

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_1

    if-eq v5, p1, :cond_3

    goto :goto_1

    :cond_1
    if-eq v4, p1, :cond_3

    :goto_1
    if-le p1, v5, :cond_2

    if-lt p1, v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static d(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1a

    if-gez p3, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2}, Labr;->e(II)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x1

    if-eqz p4, :cond_17

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 v4, -0x1

    if-ltz v1, :cond_a

    if-ge p4, v1, :cond_2

    const/4 v1, -0x1

    goto :goto_3

    :cond_2
    if-gez p2, :cond_3

    :goto_0
    const/4 v1, -0x1

    goto :goto_3

    :cond_3
    const/4 p4, 0x0

    :goto_1
    if-eqz p2, :cond_b

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_5

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_7

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_6

    const/4 v1, -0x1

    goto :goto_3

    :cond_6
    add-int/lit8 p2, p2, -0x1

    const/4 p4, 0x0

    goto :goto_1

    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_8

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_2

    :cond_9
    const/4 p4, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    const/4 v1, -0x1

    :cond_b
    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_14

    if-ge p3, v2, :cond_c

    const/4 p3, -0x1

    goto :goto_7

    :cond_c
    if-gez p2, :cond_d

    :goto_4
    const/4 p3, -0x1

    goto :goto_7

    :cond_d
    const/4 p4, 0x0

    :goto_5
    if-eqz p2, :cond_13

    if-lt v2, p3, :cond_e

    if-eqz p4, :cond_15

    goto :goto_4

    :cond_e
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_10

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_f

    const/4 p3, -0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, -0x1

    const/4 p4, 0x0

    goto :goto_5

    :cond_10
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_12

    goto :goto_6

    :cond_12
    add-int/lit8 v2, v2, 0x1

    const/4 p4, 0x1

    goto :goto_5

    :cond_13
    move p3, v2

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p3, -0x1

    :cond_15
    :goto_7
    if-eq v1, v4, :cond_16

    if-eq p3, v4, :cond_16

    goto :goto_8

    :cond_16
    return v0

    :cond_17
    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_8
    const-class p2, Laiy;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Laiy;

    if-eqz p2, :cond_19

    array-length p4, p2

    if-lez p4, :cond_19

    const/4 v2, 0x0

    :goto_9
    if-ge v2, p4, :cond_18

    aget-object v4, p2, v2

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return v3

    :cond_19
    return v0

    :cond_1a
    :goto_a
    return v0

    :cond_1b
    return v0
.end method

.method private static e(II)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
