.class public final Lqzu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrax;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final d(Landroid/net/Uri;)Ljava/io/File;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

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

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x3a5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Ljava/io/File;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    aput-object p1, v0, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final e(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

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

    :goto_1
    new-instance p1, Lrab;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, v0, p0}, Lrab;-><init>(Ljava/io/FileInputStream;Ljava/io/File;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/io/FileInputStream;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string p0, "file"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final g(Landroid/net/Uri;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final h(Landroid/net/Uri;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_2
    const-string v0, "%s could not be created"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/io/IOException;

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

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

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
.end method

.method public final i(Landroid/net/Uri;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_2
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

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

    :goto_4
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "%s is not a directory"

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const-string v0, "%s could not be deleted"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final j(Landroid/net/Uri;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    :goto_0
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

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

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
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
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    const-string v0, "%s could not be deleted"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "%s does not exist"

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

    :goto_13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "%s is a directory"

    nop

    nop

    goto/32 :goto_14

    nop

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

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

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    goto/32 :goto_5

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-static {p2}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p2, "%s could not be renamed to %s"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

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

    :goto_6
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

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

    :goto_8
    new-instance p0, Ljava/io/IOException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lshf;->g(Ljava/io/File;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Landroid/net/Uri;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

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
.end method

.method public final o(Landroid/net/Uri;)J
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const-wide/16 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

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
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-wide p0

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final p(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p1, v0, p0}, Lrac;-><init>(Ljava/io/FileOutputStream;Ljava/io/File;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lrac;

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

    nop

    :goto_4
    invoke-static {p0}, Lshf;->g(Ljava/io/File;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/io/FileOutputStream;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroid/net/Uri;)Ljava/lang/Iterable;
    .locals 5

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

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

    :goto_1
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

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

    :goto_3
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    :goto_4
    invoke-direct {v3}, Lrxw;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_39

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/io/IOException;

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

    :goto_b
    invoke-static {v1, v3}, Lqrf;->g(Landroid/net/Uri$Builder;Lrxw;)Landroid/net/Uri;

    move-result-object v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

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

    goto/32 :goto_17

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    :goto_f
    new-instance v3, Lrxw;

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

    :goto_10
    if-lez v0, :cond_3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    :goto_11
    new-instance v1, Landroid/net/Uri$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_12
    if-lt v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    aget-object v1, p0, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    array-length v1, p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lqrf;->f(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    goto :goto_21

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_38

    nop

    :goto_1e
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    sget-object v4, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->mqqivFF:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_23
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_27
    if-nez v0, :cond_5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    :goto_28
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_29
    const-string v0, "%s is not a directory"

    nop

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

    :goto_2a
    const-string v4, ""

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    :goto_2f
    const-string v3, "/"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

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

    :goto_31
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

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

    :goto_33
    throw p0

    nop

    :goto_34
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_35
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_36
    const-string v0, "Not a directory or I/O error (unexpected): %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-object p1

    nop

    nop

    :goto_3c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
