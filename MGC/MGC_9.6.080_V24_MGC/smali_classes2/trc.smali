.class public final Ltrc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String; = "trc"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static a(Ltlp;Ljava/lang/String;IZLandroid/content/Context;)Ltlq;
    .locals 6

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    :goto_1
    :try_start_1
    throw p1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Ltrc;->a:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const-string v3, "Error parsing param record: end of stream."

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2b

    nop

    nop

    nop

    :catch_2
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    sget-object p2, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    nop

    :goto_c
    :try_start_3
    invoke-interface {p0, p2}, Ltlp;->d([B)Ltlp;

    move-result-object p0

    nop

    nop

    nop

    invoke-interface {p0}, Ltlp;->l()Ltlq;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ltky; {:try_start_3 .. :try_end_3} :catch_3

    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/16 :goto_27

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    goto :goto_6

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    const-string p2, "Error reading params from ContentProvider"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_27

    nop

    :catch_4
    move-exception p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    if-eq p4, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    :try_start_4
    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p4

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    nop

    nop

    nop

    nop

    if-eq p4, p2, :cond_3

    nop

    nop

    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    const-string p2, "Error parsing param record: incorrect sentinel."

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    nop

    nop

    :cond_3
    new-array p2, p1, [B

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p2, v4, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    nop

    nop

    if-ne p1, v5, :cond_6

    nop

    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p3, :cond_4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_14

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    nop

    nop

    new-instance v3, Ljava/io/FileInputStream;

    nop

    nop

    invoke-static {p1, p4}, Ltrc;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object p2, v1

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto/32 :goto_d

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 p1, 0x8

    nop

    nop

    nop

    :try_start_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    nop

    array-length v3, v3

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-virtual {v2, p4, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p4

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, "Error reading parameters: "

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :catch_5
    :goto_27
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, " already exists as a file, but is expected to be a directory."

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
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

    nop

    :goto_6
    const-string v1, "Cardboard"

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

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    new-instance p1, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p1, :cond_2

    nop

    nop

    goto/32 :goto_14

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
    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    return-object p1

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
