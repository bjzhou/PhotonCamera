.class public final Lcom/google/android/libraries/microvideo/MicrovideoFiles;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final MPEG4_FTYP_MARKER:[B

.field private static final TAG:Ljava/lang/String; = "MicrovideoFiles"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

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

    :array_0
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :goto_1
    new-array v0, v0, [B

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->MPEG4_FTYP_MARKER:[B

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x4

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
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static extractVideo(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_12

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    rem-int v0, v0, v1

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
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->getVideoOffset(Ljava/io/File;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_10

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    const v1, 0x18

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Ljava/io/FileOutputStream;

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

    :goto_c
    const v0, 0x1b

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {p1, v0, v1}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V

    invoke-static {p1, v2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_13

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p0

    nop

    nop

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static extractXMPData(Ljava/io/File;)Lexq;
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    sget-object v0, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    nop

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lqzi;->a(Ljava/io/InputStream;)Lexq;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_d

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    move-object v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    const-string v4, "extractXMPMeta"

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const-string v3, "com.google.android.libraries.social.xmp.XmpUtil"

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const v0, 0x9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "Could not read file: "

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    sget-object v1, Lqzi;->a:Ljava/util/logging/Logger;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public static getVideoOffset(Ljava/io/File;)J
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    cmp-long p0, v3, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v3

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v5, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->scanForMpeg4FtypAtom(Ljava/io/File;)J

    move-result-wide v3

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

    :goto_5
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/io/IOException;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    const-string v3, "MicroVideoOffset %d invalid. Attempting recovery"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    cmp-long v5, v3, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

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

    :goto_11
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lpuq;->Z(Lexq;)I

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_14
    return-wide v3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0}, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->extractXMPData(Ljava/io/File;)Lexq;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    add-long/2addr v1, v3

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    if-gez p0, :cond_1

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v1, -0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    :goto_20
    const-string v0, "Could not recover starting offset."

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_23
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sub-long/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0, v3, v4}, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->validateOffset(Ljava/io/File;J)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_0

    nop

    nop

    :goto_2a
    const-string v3, "MicrovideoFiles"

    nop

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

    :goto_2b
    if-gtz v5, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-long v1, v0

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

    :goto_2d
    new-instance v0, Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop
.end method

.method public static isMicrovideo(Ljava/io/InputStream;)Z
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    invoke-static {p0}, Lpuq;->Z(Lexq;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    int-to-long v1, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :catch_0
    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    cmp-long p0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

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

    :goto_e
    return v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    const v1, 0x12

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Lqzi;->a(Ljava/io/InputStream;)Lexq;

    move-result-object p0

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

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static openVideoStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    new-instance v2, Ljava/io/FileInputStream;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->getVideoOffset(Ljava/io/File;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    return-object v2

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private static scanForMpeg4FtypAtom(Ljava/io/File;)J
    .locals 6

    goto/32 :goto_16

    nop

    nop

    :goto_0
    goto :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_6
    return-wide v1

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    add-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    :try_start_1
    new-array p0, p0, [B

    nop

    nop

    invoke-static {v0, p0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    const-wide/16 v1, 0x4

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v3, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->MPEG4_FTYP_MARKER:[B

    nop

    nop

    nop

    invoke-static {p0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    if-ge v3, v4, :cond_1

    nop

    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    aget-byte v5, p0, v4

    nop

    nop

    nop

    nop

    aput-byte v5, p0, v3

    nop

    nop

    nop

    nop

    nop

    move v3, v4

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    nop

    if-ltz v3, :cond_0

    nop

    nop

    nop

    int-to-byte v3, v3

    nop

    nop

    nop

    nop

    nop

    aput-byte v3, p0, v4

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/io/FileInputStream;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    return-wide v0

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    array-length p0, v3

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    sub-long/2addr v1, v3

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

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_11
    const-wide/16 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/16 v3, -0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x13

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-long/2addr v1, v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-long v3, p0

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
.end method

.method private static validateOffset(Ljava/io/File;J)Z
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

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

    :goto_8
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    nop

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_c

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto :goto_b

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v1, 0x4

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

    :goto_d
    add-long/2addr p1, v1

    nop

    nop

    nop

    :try_start_3
    invoke-static {v0, p1, p2}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V

    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    new-array p0, p0, [B

    nop

    nop

    nop

    invoke-static {v0, p0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    sget-object p1, Lcom/google/android/libraries/microvideo/MicrovideoFiles;->MPEG4_FTYP_MARKER:[B

    nop

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xd

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

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method
