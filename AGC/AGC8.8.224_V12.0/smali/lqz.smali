.class public final Llqz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "XmpUtil"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llqz;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lber;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_a

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0xd8

    if-ne v2, v4, :cond_a

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v1, :cond_9

    if-ne v2, v3, :cond_8

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_1

    if-ne v2, v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0xda

    if-ne v2, v4, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v4, v1, :cond_7

    if-ne v5, v1, :cond_4

    goto :goto_1

    :cond_4
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_5
    const/16 v5, 0xe1

    if-ne v2, v5, :cond_6

    :try_start_4
    new-instance v2, Lnaa;

    invoke-direct {v2}, Lnaa;-><init>()V

    add-int/lit8 v4, v4, -0x2

    new-array v4, v4, [B

    iput-object v4, v2, Lnaa;->a:Ljava/lang/Object;

    iget-object v4, v2, Lnaa;->a:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {p0, v4}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v4, -0x2

    int-to-long v4, v4

    invoke-static {p0, v4, v5}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_a
    :try_start_6
    sget-object v2, Llqz;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "com.google.android.libraries.social.xmp.XmpUtil"

    const-string v5, "parse"

    const-string v6, "XMP parse: only JPEG file is supported"

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v2

    move-object v8, v2

    :try_start_8
    sget-object v3, Llqz;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "com.google.android.libraries.social.xmp.XmpUtil"

    const-string v6, "parse"

    const-string v7, "Could not parse file."

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnaa;

    iget-object v5, v2, Lnaa;->a:Ljava/lang/Object;

    check-cast v5, [B

    const-string v6, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-static {v5, v6}, Llqz;->b([BLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object p0, v2, Lnaa;->a:Ljava/lang/Object;

    check-cast p0, [B

    array-length v5, p0

    add-int/2addr v5, v1

    :goto_3
    if-lez v5, :cond_d

    aget-byte v1, p0, v5

    const/16 v6, 0x3e

    if-ne v1, v6, :cond_c

    add-int/lit8 v1, v5, -0x1

    aget-byte v1, p0, v1

    const/16 v6, 0x3f

    if-eq v1, v6, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_d
    array-length v5, p0

    :goto_4
    add-int/lit8 v5, v5, -0x1d

    new-array p0, v5, [B

    iget-object v1, v2, Lnaa;->a:Ljava/lang/Object;

    const/16 v2, 0x1d

    invoke-static {v1, v2, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_a
    sget-object v1, Lbet;->a:Lcvm;

    invoke-static {p0}, Lbfg;->a(Ljava/lang/Object;)Lber;

    move-result-object p0
    :try_end_a
    .catch Lbeq; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v10, p0

    sget-object v5, Llqz;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    const-string v8, "parseFirstValidXMPSection"

    const-string v9, "Unexpected exception when parsing XMP"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v4

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v10, p0

    sget-object v5, Llqz;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    const-string v8, "parseFirstValidXMPSection"

    const-string v9, "XMP parse error"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v4

    goto :goto_5

    :cond_e
    move-object p0, v4

    :goto_5
    if-eqz p0, :cond_13

    const-string v1, "http://ns.adobe.com/xmp/note/"

    const-string v2, "HasExtendedXMP"

    invoke-interface {p0, v1, v2}, Lber;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    :try_start_b
    invoke-interface {p0, v1, v2}, Lber;->a(Ljava/lang/String;Ljava/lang/String;)Lbfu;

    move-result-object v1

    check-cast v1, Lbfe;

    iget-object v1, v1, Lbfe;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :cond_f
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnaa;

    iget-object v9, v8, Lnaa;->a:Ljava/lang/Object;

    check-cast v9, [B

    invoke-static {v9, v1}, Llqz;->b([BLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x7

    iget-object v10, v8, Lnaa;->a:Ljava/lang/Object;

    check-cast v10, [B

    array-length v10, v10

    sub-int v11, v10, v9

    add-int/2addr v7, v11

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    new-array v0, v7, [B

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnaa;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v9, v8

    iget-object v7, v7, Lnaa;->a:Ljava/lang/Object;

    invoke-static {v7, v8, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_b
    .catch Lbeq; {:try_start_b .. :try_end_b} :catch_7

    add-int/2addr v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    :try_start_c
    sget-object v1, Lbet;->a:Lcvm;

    invoke-static {v0}, Lbfg;->a(Ljava/lang/Object;)Lber;

    move-result-object v4
    :try_end_c
    .catch Lbeq; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v10, v0

    :try_start_d
    sget-object v5, Llqz;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    const-string v8, "parseExtendedXMPSections"

    const-string v9, "Unexpected exception when parsing extended XMP"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v10, v0

    sget-object v5, Llqz;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "com.google.android.libraries.social.xmp.XmpUtil"

    const-string v8, "parseExtendedXMPSections"

    const-string v9, "Extended XMP parse error"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Lbeq; {:try_start_d .. :try_end_d} :catch_7

    :goto_8
    if-eqz v4, :cond_13

    :try_start_e
    invoke-interface {v4}, Lber;->f()Lbfd;

    move-result-object v0

    :cond_12
    :goto_9
    invoke-virtual {v0}, Lbfd;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfa;

    iget-object v2, v1, Lbfa;->b:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, v1, Lbfa;->a:Ljava/lang/String;

    iget-object v4, v1, Lbfa;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lbfa;->a()Lbfs;

    move-result-object v1

    invoke-interface {p0, v3, v2, v4, v1}, Lber;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbfs;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lbeq;->printStackTrace()V

    :cond_13
    :goto_a
    return-object p0

    :goto_b
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    :goto_c
    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method private static b([BLjava/lang/String;)Z
    .locals 3

    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    :catch_0
    move-exception p0

    return v2
.end method
