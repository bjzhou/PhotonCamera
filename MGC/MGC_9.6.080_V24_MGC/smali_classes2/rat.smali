.class public final Lrat;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Lhdn;Landroid/net/Uri;Ljava/util/List;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    and-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, v0}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/io/File;

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    nop

    nop

    nop

    nop

    nop

    sget v1, Landroid/system/OsConstants;->S_IFLNK:I

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lraq;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :cond_2
    :goto_7
    :try_start_1
    invoke-virtual {p1, p2}, Lhdn;->C(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v1, p3}, Lrat;->f875135777c17da3cef2ea6eeff5be29m(Lhdn;Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_8

    nop

    :cond_3
    :goto_9
    invoke-virtual {p1, p2}, Lhdn;->F(Landroid/net/Uri;)V

    return-void

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {p1, p2}, Lhdn;->G(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

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

    :goto_b
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    :goto_e
    return-void

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lraq;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lraq;->b()V

    :try_start_2
    invoke-virtual {p1, p2}, Lhdn;->J(Landroid/net/Uri;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_4

    nop

    iget-boolean v1, p0, Lrat;->a:Z

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_2

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    const v0, 0xe

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Failed to delete one or more files"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lhdn;

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
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, v1, v0}, Lrat;->f875135777c17da3cef2ea6eeff5be29m(Lhdn;Landroid/net/Uri;Ljava/util/List;)V

    goto/32 :goto_20

    nop

    nop

    :goto_7
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_14

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Lrnb;->f:Ljava/lang/Object;

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

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    :goto_15
    iget-object v1, p1, Lrnb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    :goto_18
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    goto/32 :goto_f

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

    nop

    :goto_1c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
