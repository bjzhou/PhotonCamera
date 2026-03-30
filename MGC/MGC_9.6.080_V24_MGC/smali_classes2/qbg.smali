.class public final Lqbg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqbg;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_6
    check-cast v1, Lhdn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {v1, p0}, Lhdn;->K(Landroid/net/Uri;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const-string v0, ".."

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

    nop

    :goto_9
    throw p1

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iget-object v1, p1, Lrnb;->f:Ljava/lang/Object;

    nop

    nop

    :try_start_3
    new-instance v2, Ljava/util/zip/ZipInputStream;

    nop

    new-instance v3, Lras;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Lras;-><init>()V

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v4, v3, Lras;->a:Z

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Lras;->b(Lrnb;)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    invoke-direct {v2, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_f
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_10
    if-eqz v4, :cond_4

    nop

    nop

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_3

    nop

    nop

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Illegal name: "

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v4, p0, Lqbg;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    nop

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    move-object p1, v1

    nop

    nop

    check-cast p1, Lhdn;

    nop

    nop

    nop

    invoke-virtual {p1, v3}, Lhdn;->E(Landroid/net/Uri;)V

    goto/16 :goto_f

    nop

    nop

    :cond_5
    new-instance p1, Lraw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Lraw;-><init>()V

    move-object v4, v1

    nop

    nop

    nop

    nop

    check-cast v4, Lhdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3, p1}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Ljava/io/OutputStream;

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    const v0, 0x11

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lqbg;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x12

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

    :goto_19
    const/4 p0, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
