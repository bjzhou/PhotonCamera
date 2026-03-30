.class public final Lqzi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "XmpUtil"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public static a(Ljava/io/InputStream;)Lexq;
    .locals 12

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_2
    check-cast p0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3
    move-object v8, v2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v3, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    nop

    const-string v5, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    nop

    nop

    nop

    const-string v6, "parse"

    nop

    nop

    nop

    nop

    const-string v7, "Could not parse file."

    nop

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_26

    nop

    nop

    :goto_4
    goto/16 :goto_45

    nop

    :catch_0
    move-exception v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v1, v2}, Lexq;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_51

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    const-string v6, "http://ns.adobe.com/xap/1.0/\u0000"

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

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

    nop

    :goto_c
    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v5, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_4a

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_11
    array-length v5, p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v5, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, v2, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_1
    sget-object v1, Lexs;->a:Lts;

    nop

    invoke-static {p0}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Lexp; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    :goto_16
    add-int/2addr v1, v9

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v5, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_18
    sget-object v1, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_19
    if-nez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v7, 0x3e

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

    :goto_1b
    move-object v10, p0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_24

    nop

    :goto_1d
    :try_start_2
    invoke-interface {p0, v1, v2}, Lexq;->a(Ljava/lang/String;Ljava/lang/String;)Leyt;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Leyd;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Leyd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    const-string v2, "http://ns.adobe.com/xmp/extension/\u0000"

    nop

    nop

    nop

    const-string v5, "\u0000"

    nop

    invoke-static {v1, v2, v5}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    move v7, v3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_2

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Lscn;

    nop

    iget-object v9, v8, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v9, [B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v1}, Lqzi;->b([BLjava/lang/String;)Z

    move-result v9

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0x7

    nop

    nop

    nop

    iget-object v10, v8, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v10, [B

    nop

    nop

    array-length v10, v10

    nop

    nop

    sub-int v11, v10, v9

    nop

    nop

    nop

    nop

    add-int/2addr v7, v11

    nop

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    nop

    nop

    nop

    :cond_2
    new-array v0, v7, [B

    nop

    move v1, v3

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v7, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lscn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    nop

    nop

    sub-int/2addr v9, v8

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v7, v8, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Lexp; {:try_start_2 .. :try_end_2} :catch_6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_1f

    nop

    nop

    nop

    :cond_3
    :try_start_3
    sget-object v1, Lexs;->a:Lts;

    nop

    nop

    invoke-static {v0}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Lexp; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_25
    sget-object v8, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->iEcfcWBGFNLBhy:Ljava/lang/String;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :catch_3
    :goto_27
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v1, v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    aget-byte v6, p0, v5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v9, "Unexpected exception when parsing XMP"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    iget-object p0, v2, Lscn;->a:Ljava/lang/Object;

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

    nop

    :goto_2c
    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_37

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v5, "XMP merge error"

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_30
    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v1, "http://ns.adobe.com/xmp/note/"

    nop

    nop

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

    :goto_34
    const-string v4, "mergeXmpMeta"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_35
    new-instance v0, Lqzh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_36
    add-int/2addr v5, v1

    nop

    :goto_37
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-gtz v5, :cond_4

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

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v5, v6}, Lqzi;->b([BLjava/lang/String;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_70

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3b
    if-eqz v5, :cond_5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v5, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_41
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    nop

    nop

    nop

    if-eq v4, v1, :cond_14

    nop

    if-ne v5, v1, :cond_6

    nop

    nop

    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :cond_6
    shl-int/lit8 v4, v4, 0x8

    nop

    nop

    or-int/2addr v4, v5

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    if-ge v4, v5, :cond_7

    nop

    goto/16 :goto_70

    nop

    :cond_7
    const/16 v5, 0xe1

    nop

    if-ne v2, v5, :cond_8

    nop

    new-instance v2, Lscn;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lscn;-><init>()V

    add-int/lit8 v4, v4, -0x2

    nop

    nop

    nop

    nop

    nop

    new-array v4, v4, [B

    nop

    nop

    nop

    nop

    iput-object v4, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v4, [B

    nop

    invoke-static {p0, v4}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_77

    nop

    nop

    nop

    :cond_8
    add-int/lit8 v4, v4, -0x2

    nop

    nop

    nop

    nop

    int-to-long v4, v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v4, v5}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V

    goto/16 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_9
    sget-object v2, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    const-string v4, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    const-string v5, "parse"

    nop

    nop

    nop

    nop

    nop

    const-string v6, "XMP parse: only JPEG file is supported"

    nop

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_42
    if-eqz p0, :cond_a

    nop

    goto/32 :goto_76

    nop

    :cond_a
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-array p0, v5, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_44
    return-object p0

    nop

    nop

    nop

    nop

    :goto_45
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v2, Lscn;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_48
    if-nez p0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_49
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_c
    :try_start_6
    new-instance v1, Leyc;

    nop

    nop

    check-cast v0, Leye;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Leyc;-><init>(Leye;)V

    :cond_d
    :goto_4a
    invoke-virtual {v1}, Leyc;->hasNext()Z

    move-result v0

    nop

    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Leyc;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    instance-of v2, v0, Lexz;

    nop

    nop

    nop

    if-eqz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lexz;

    nop

    iget-object v2, v0, Lexz;->b:Ljava/lang/String;

    nop

    nop

    if-eqz v2, :cond_d

    nop

    nop

    iget-object v3, v0, Lexz;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lexz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lexz;->a()Leyr;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {p0, v3, v2, v4, v0}, Lexq;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Leyr;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4b
    const/16 v2, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-ne v2, v3, :cond_e

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_4e
    const-string v2, "HasExtendedXMP"

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

    :goto_4f
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v7, 0x3f

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_54
    if-eq v6, v7, :cond_f

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_55
    array-length v5, p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_58
    move-object v10, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    sget-object v5, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    nop

    nop

    nop

    const-string v8, "parseExtendedXMPSections"

    nop

    nop

    nop

    const-string v9, "Unexpected exception when parsing extended XMP"

    nop

    nop

    nop

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    move-object v10, v0

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    nop

    nop

    const-string v8, "parseExtendedXMPSections"

    nop

    nop

    nop

    nop

    const-string v9, "Extended XMP parse error"

    nop

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Lexp; {:try_start_7 .. :try_end_7} :catch_6

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5a
    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move v5, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5d
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_5e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance v0, Lqzh;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const-string v9, "XMP parse error"

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object p0, v4

    nop

    nop

    :goto_62
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_63
    if-ne v6, v7, :cond_11

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_11
    goto/32 :goto_21

    nop

    nop

    :goto_64
    sget-object v5, Lqzi;->a:Ljava/util/logging/Logger;

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

    :goto_65
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_66
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_68
    move-object v10, p0

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

    :goto_69
    const/16 v4, 0xda

    nop

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

    :goto_6a
    if-lez v0, :cond_12

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

    :cond_12
    goto/32 :goto_e

    nop

    :goto_6b
    sget-object v9, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->hsvdA:Ljava/lang/String;

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

    :goto_6c
    if-nez v2, :cond_13

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

    :cond_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_32

    nop

    :catch_6
    move-exception v0

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_6e
    aget-byte v6, p0, v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eq v2, v1, :cond_14

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    :cond_14
    :goto_70
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_72
    iget-object p0, v0, Lqzh;->a:Lexq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const-string v8, "parseFirstValidXMPSection"

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_27

    nop

    :goto_76
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    nop

    nop

    const/16 v3, 0xff

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_9

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    nop

    nop

    const/16 v4, 0xd8

    nop

    if-ne v2, v4, :cond_9

    nop

    :goto_77
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    nop

    nop

    nop

    if-eq v2, v1, :cond_14

    nop

    nop

    if-ne v2, v3, :cond_14

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eq v2, v4, :cond_15

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    add-int/lit8 v5, v5, -0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v0, p0, v4}, Lqzh;-><init>(Lexq;Lexq;)V

    :goto_7c
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v10, v0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :catch_8
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const-string v8, "parseFirstValidXMPSection"

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, v0, Lqzh;->b:Lexq;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-direct {v0, p0, v4}, Lqzh;-><init>(Lexq;Lexq;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_88
    const-string v3, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop
.end method

.method private static b([BLjava/lang/String;)Z
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    :goto_8
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    new-array v0, v0, [B

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v1, "UTF-8"

    nop

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    array-length v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0xd

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

    nop

    :goto_c
    return p0

    nop

    :catch_0
    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_10
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
