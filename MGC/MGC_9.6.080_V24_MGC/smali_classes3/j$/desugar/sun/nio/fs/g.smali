.class public abstract Lj$/desugar/sun/nio/fs/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/Object;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c([Ljava/lang/Object;)Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate element: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;I)C
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_1e

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_1c

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_1a

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_19

    const/16 v9, 0x3f

    if-eq v7, v9, :cond_18

    const/16 v9, 0x7b

    if-eq v7, v9, :cond_16

    const/16 v9, 0x7d

    if-eq v7, v9, :cond_14

    const/4 v9, -0x1

    const/16 v10, 0x5b

    const/16 v11, 0x5c

    if-eq v7, v10, :cond_5

    const-string v6, ".^$+{[]|()"

    if-eq v7, v11, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v9, :cond_0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v5, v7, :cond_4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v7, "\\*?[{"

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v9, :cond_3

    :goto_2
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "No character to escape"

    invoke-direct {v1, v2, v0, v3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_5
    const-string v12, "[[^/]&&["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5}, Lj$/desugar/sun/nio/fs/g;->d(Ljava/lang/String;I)C

    move-result v12

    const/16 v13, 0x5e

    const/16 v14, 0x2d

    if-ne v12, v13, :cond_6

    const-string v5, "\\^"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_6
    invoke-static {v0, v5}, Lj$/desugar/sun/nio/fs/g;->d(Ljava/lang/String;I)C

    move-result v12

    const/16 v15, 0x21

    if-ne v12, v15, :cond_7

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x2

    :cond_7
    invoke-static {v0, v5}, Lj$/desugar/sun/nio/fs/g;->d(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v14, :cond_8

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, 0x1

    goto :goto_3

    :cond_8
    move v3, v5

    :goto_3
    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0x5d

    if-ge v3, v13, :cond_12

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v15, :cond_9

    move v3, v7

    move v7, v13

    goto :goto_7

    :cond_9
    if-eq v13, v8, :cond_11

    if-eq v13, v11, :cond_a

    if-eq v13, v10, :cond_a

    const/16 v2, 0x26

    if-ne v13, v2, :cond_b

    invoke-static {v0, v7}, Lj$/desugar/sun/nio/fs/g;->d(Ljava/lang/String;I)C

    move-result v8

    if-ne v8, v2, :cond_b

    :cond_a
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v13, v14, :cond_10

    const-string v2, "Invalid range"

    if-eqz v5, :cond_f

    add-int/lit8 v5, v3, 0x2

    invoke-static {v0, v7}, Lj$/desugar/sun/nio/fs/g;->d(Ljava/lang/String;I)C

    move-result v7

    if-eqz v7, :cond_e

    if-ne v7, v15, :cond_c

    goto :goto_6

    :cond_c
    if-lt v7, v12, :cond_d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v5

    const/4 v5, 0x0

    :goto_5
    const/16 v8, 0x2f

    goto :goto_4

    :cond_d
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    add-int/2addr v3, v9

    invoke-direct {v1, v2, v0, v3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_e
    :goto_6
    move v3, v5

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    invoke-direct {v1, v2, v0, v3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_10
    move v3, v7

    move v7, v13

    move v12, v7

    const/4 v5, 0x1

    goto :goto_5

    :cond_11
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Explicit \'name separator\' in class"

    invoke-direct {v1, v2, v0, v3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_12
    :goto_7
    if-ne v7, v15, :cond_13

    const-string v2, "]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_13
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Missing \']"

    sub-int/2addr v3, v6

    invoke-direct {v1, v2, v0, v3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_14
    if-eqz v4, :cond_15

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_16
    if-nez v4, :cond_17

    const-string v2, "(?:(?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_17
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Cannot nest groups"

    invoke-direct {v1, v2, v0, v3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_18
    const-string v2, "[^/]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_19
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1a
    if-eqz v4, :cond_1b

    const-string v2, ")|(?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1c
    invoke-static {v0, v5}, Lj$/desugar/sun/nio/fs/g;->d(Ljava/lang/String;I)C

    move-result v2

    if-ne v2, v8, :cond_1d

    const-string v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    :cond_1d
    const-string v2, "[^/]*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v3, v5

    goto/16 :goto_1

    :cond_1e
    if-nez v4, :cond_1f

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v1, Ljava/util/regex/PatternSyntaxException;

    const-string v2, "Missing \'}"

    sub-int/2addr v3, v6

    invoke-direct {v1, v2, v0, v3}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static f(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 0

    invoke-static {p0}, Lj$/desugar/sun/nio/fs/e;->d(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method
