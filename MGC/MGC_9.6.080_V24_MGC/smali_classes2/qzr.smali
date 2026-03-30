.class public final Lqzr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/accounts/Account;

.field private f:Ljava/lang/String;

.field private final g:Lrxw;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lqzs;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const-string v2, "The only supported locations are %s: %s"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    iput-object p1, p0, Lqzr;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

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

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    sget-object v1, Lqzs;->d:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v2, v1}, Lqrg;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const-string v0, ""

    nop

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

    nop

    :goto_7
    invoke-static {v1, v2, v0}, Lqrg;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lqzr;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_a
    const v0, 0x5

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
    add-int v0, v0, v1

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

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lrxw;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, "Context cannot be null"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const-string v0, "files"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lqzr;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    const-string v0, "common"

    nop

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

    :goto_15
    iput-object v0, p0, Lqzr;->e:Landroid/accounts/Account;

    nop

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

    :goto_16
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lrxw;

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

    :goto_18
    iput-object v0, p0, Lqzr;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_2

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lqzr;->d:Ljava/lang/String;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lqzr;->b:Ljava/lang/String;

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

    :goto_20
    sget-object v0, Lqzs;->b:Landroid/accounts/Account;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lqzr;->g:Lrxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lqzr;->g:Lrxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lqzr;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Landroid/net/Uri$Builder;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    const-string v5, "/"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Lrag;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

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
    iget-object v0, p0, Lqzr;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    const-string v3, "android"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_17
    iget-object v3, p0, Lqzr;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

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

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1d
    invoke-static {v2}, Lqzp;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Lqzr;->e:Landroid/accounts/Account;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lqzr;->b:Ljava/lang/String;

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

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    :goto_24
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Lrxw;->g()Lryb;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_16

    nop

    nop

    :goto_0
    const-string v0, "directboot-files"

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lqzr;->d:Ljava/lang/String;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lqzr;->d(Ljava/lang/String;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_63

    nop

    nop

    :goto_6
    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v7, p1, p0}, Lqrg;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lqqy;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_d
    invoke-static {v1}, Lqzp;->d(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_11
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lqzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1a
    move v3, v7

    nop

    :goto_1b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lqzr;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_1f
    new-instance v0, Lqzy;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_21
    add-int/2addr v2, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v2}, Lqzr;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_23
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    :goto_24
    move v3, v6

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v2, "managed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_2b
    const-string v0, "Path must be in app-private files dir or external files dir: "

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, v1}, Lqzr;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_2d
    goto/16 :goto_6c

    nop

    :goto_2e
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_30
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

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

    :goto_35
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    :cond_5
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v3, v5, p1}, Lqrg;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_3a
    throw p1

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    throw p1

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3e
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v2, p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_1b

    nop

    nop

    :goto_43
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v3, "files"

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v1}, Lqzp;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_48
    new-instance v1, Ljava/io/File;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    :goto_4a
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_4b
    if-nez v1, :cond_6

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_6
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4c
    throw p1

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, v1}, Lqzr;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lqzr;->a:Landroid/content/Context;

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

    :goto_50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_7c

    nop

    nop

    :goto_53
    if-ge v3, v5, :cond_7

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

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-array p0, v7, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_57
    invoke-virtual {p0, p1}, Lqzr;->e(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v0, p0}, Lqzy;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6e

    nop

    nop

    :goto_5a
    iget-object v3, p0, Lqzr;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {p0, v3}, Lqzr;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

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

    :goto_5e
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_60
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v0, p0}, Lqzy;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_62
    goto/32 :goto_f

    nop

    :goto_63
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const-string v1, "external"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_67
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const-string p1, "AccountManager cannot be null"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v2}, Lqzp;->b(Landroid/accounts/Account;)Ljava/lang/String;

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v0, p0, Lqzr;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_70
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_71
    invoke-direct {p0, v5}, Lqzr;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v0}, Lqqy;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_74
    const-string v5, "Path must be in module and account subdirectories: %s"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_76
    goto :goto_6c

    nop

    nop

    :goto_77
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

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

    :goto_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7a
    invoke-direct {p0, v0}, Lqzr;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_8
    goto/32 :goto_62

    nop

    :goto_7c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_80
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_82
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_83
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v1, :cond_a

    nop

    goto/32 :goto_4a

    nop

    :cond_a
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_86
    const-string v5, "cache"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_89
    iget-object v0, p0, Lqzr;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-object v2, p0, Lqzr;->e:Landroid/accounts/Account;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8f
    const-string v1, "directboot-cache"

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_90
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public final c()V
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

    :goto_1
    invoke-direct {p0, v0}, Lqzr;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const-string v0, "directboot-files"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqzr;->d:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    const-string v2, "Module must match [a-z]+(_[a-z]+)*: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    xor-int/lit8 v0, v0, 0x1

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

    :goto_9
    sget-object v0, Lqzs;->a:Ljava/util/regex/Pattern;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v2, v1}, Lqrg;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lqzs;->c:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v2, v1}, Lqrg;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const-string v2, "Module name is reserved and cannot be used: %s"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lqzs;->a:Ljava/util/regex/Pattern;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const-string v0, "/"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqzr;->f:Ljava/lang/String;

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

    nop

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
