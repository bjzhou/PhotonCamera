.class public Lj$/net/URLDecoder;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj$/net/URLEncoder;->a:Ljava/util/BitSet;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f4

    if-le v2, v4, :cond_0

    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v2, :cond_14

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x2b

    const/16 v11, 0x25

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_2
    if-nez v5, :cond_3

    sub-int v5, v2, v6

    :try_start_0
    div-int/lit8 v5, v5, 0x3

    new-array v5, v5, [B

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_3
    :goto_2
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v12, v6, 0x2

    if-ge v12, v2, :cond_11

    if-ne v8, v11, :cond_11

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v9, 0x66

    const/16 v4, 0x41

    const/16 v11, 0x39

    const/16 v10, 0x61

    const/16 v15, 0x30

    if-gt v15, v14, :cond_4

    if-le v14, v11, :cond_6

    :cond_4
    if-gt v10, v14, :cond_5

    if-le v14, v9, :cond_6

    :cond_5
    if-gt v4, v14, :cond_7

    const/16 v4, 0x46

    if-gt v14, v4, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_10

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v15, v4, :cond_8

    if-le v4, v11, :cond_a

    :cond_8
    if-gt v10, v4, :cond_9

    if-le v4, v9, :cond_a

    :cond_9
    const/16 v9, 0x41

    if-gt v9, v4, :cond_b

    const/16 v9, 0x46

    if-gt v4, v9, :cond_b

    :cond_a
    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_10

    add-int/lit8 v4, v6, 0x3

    sub-int v9, v4, v13

    const/4 v10, 0x2

    const/16 v11, 0x10

    if-lt v9, v10, :cond_c

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_d

    add-int/lit8 v9, v13, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-ltz v12, :cond_d

    move v13, v9

    goto :goto_6

    :cond_c
    const/16 v10, 0x2b

    :cond_d
    :goto_6
    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    if-ltz v9, :cond_f

    add-int/lit8 v6, v7, 0x1

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    if-ge v4, v2, :cond_e

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v8, v7

    :cond_e
    move v7, v6

    const/16 v11, 0x25

    move v6, v4

    goto/16 :goto_3

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v2, v6, 0x3

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    if-ge v6, v2, :cond_13

    const/16 v4, 0x25

    if-eq v8, v4, :cond_12

    goto :goto_7

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URLDecoder: Incomplete trailing escape (%) pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_7
    new-instance v4, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v7, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    const/4 v7, 0x1

    goto/16 :goto_1

    :goto_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/net/URLDecoder;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "URLDecoder: empty string enc parameter"

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
