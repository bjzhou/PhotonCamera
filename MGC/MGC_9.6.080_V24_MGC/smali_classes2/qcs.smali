.class public final Lqcs;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const-string v0, "Unable to read symlink"

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1, p0}, Lqrf;->k(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    nop

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lqzr;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lqzr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lqzr;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lqzr;->a()Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :cond_0
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop
    :try_end_0
    .catch Lqzy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

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

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_b
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    :try_start_0
    invoke-static {p2, p0}, Lqrf;->k(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    nop

    nop

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-static {p1, p0}, Lqrf;->k(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    invoke-static {p2, p0}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lqzy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const-string p2, "Unable to create symlink"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
