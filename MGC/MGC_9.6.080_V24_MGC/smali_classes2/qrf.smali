.class public Lqrf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Lrnb;


# direct methods
.method public constructor <init>()V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static varargs c(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v6}, Lrpl;->e(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

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

    nop

    :goto_2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_11

    nop

    nop

    :goto_3
    move-object v0, v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    const/16 v5, 0x10

    nop

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

    :goto_9
    new-instance v6, Leqn;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v5}, Leqn;-><init>(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    move-object v1, p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
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

    :goto_f
    move-object v3, p3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    move-object v4, p4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static varargs d(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, v0, p2, p3}, Lqrf;->c(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static e(Lqvd;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/32 :goto_a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    :try_start_0
    invoke-interface {p0}, Lqvd;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

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

    :goto_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    nop

    :try_start_1
    invoke-interface {p0}, Lqvd;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto :goto_7

    nop

    :catch_0
    goto/32 :goto_e

    nop

    nop
.end method

.method public static f(Landroid/net/Uri;)Ljava/io/File;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Did not expect uri to have query"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

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

    :goto_6
    const v1, 0xe

    nop

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

    :goto_7
    const-string v1, "file"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    if-nez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    :goto_12
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    const-string v0, "Scheme must be \'file\'"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v0}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    :goto_15
    new-instance v0, Ljava/io/File;

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

    :goto_16
    return-object v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_1b
    const-string v0, "Did not expect uri to have authority"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v0}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

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

    :goto_1e
    new-instance p0, Lqzy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    new-instance p0, Lqzy;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    new-instance p0, Lqzy;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_a

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_23

    nop

    nop
.end method

.method public static g(Landroid/net/Uri$Builder;Lrxw;)Landroid/net/Uri;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

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

    :goto_2
    invoke-virtual {p1}, Lrxw;->g()Lryb;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lrag;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "The uri query is malformed, expected %s but found query %s"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lqzy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "blobstore"

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p1}, Lrth;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_31

    nop

    nop

    :goto_13
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_14
    const-string p2, "<non_empty_checksum>.lease"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_16
    const v1, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    filled-new-array {p3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    const/4 p2, 0x0

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

    :goto_1c
    const v0, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "*.lease"

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "expiryDateSecs"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    const-string p2, ".lease"

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_26
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string p3, "<non_empty_checksum>"

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

    :goto_28
    invoke-static {p1}, Lqzt;->a(Ljava/lang/String;)Z

    move-result p2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq p2, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne p2, v2, :cond_4

    nop

    nop

    goto/32 :goto_33

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

    :goto_2c
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_4a

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_5
    :goto_33
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, "/"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_39
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3a
    const-string p2, "The uri is malformed, expected %s or %s but found %s"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p1, p0}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3f
    if-eq p1, v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    nop

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

    :goto_41
    const-string p2, "expiryDateSecs=<expiryDateSecs>"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_42
    new-instance v0, Landroid/net/Uri$Builder;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p1, :cond_8

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_8
    :goto_45
    goto/32 :goto_2d

    nop

    nop

    :goto_46
    sget-object p2, Lqzt;->a:Lrth;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_48
    if-nez p1, :cond_9

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    :goto_49
    invoke-static {p0}, Lqzt;->a(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance p1, Lqzy;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4b
    if-eqz p0, :cond_a

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    :goto_4c
    goto :goto_45

    nop

    :goto_4d
    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public static k(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 11

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lqqy;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v2, v10

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Ljava/io/File;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_b
    goto :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_2
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    :goto_12
    const v0, 0x15

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_13
    const-string v7, "managed"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14
    const-string v4, "directboot-files"

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p1, Lqzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_17
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_19
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_36

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_1e
    new-instance p1, Lqzy;

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

    :goto_1f
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_64

    nop

    nop

    :sswitch_1
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

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

    :goto_23
    move v2, v8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_26
    goto/16 :goto_64

    nop

    nop

    :sswitch_2
    goto/32 :goto_3a

    nop

    nop

    :goto_27
    invoke-direct {p1, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v10, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_2a
    move v2, v5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2b
    if-nez p0, :cond_5

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

    :cond_5
    goto/32 :goto_87

    nop

    nop

    :goto_2c
    goto/16 :goto_64

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_30
    const-string v1, "android"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_32
    const/4 v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-ne v2, v10, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_54

    nop

    nop

    :goto_34
    throw p1

    nop

    nop

    :goto_35
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance p0, Lqzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_37
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_38
    invoke-static {p0}, Lqzp;->c(Landroid/accounts/Account;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    const-string v2, "external"

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_3b
    move v2, v6

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p1}, Lqqy;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    throw p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string p1, "AccountManager cannot be null"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_1

    nop

    :goto_41
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-ne v2, v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5e

    nop

    nop

    :goto_43
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_45
    new-instance p0, Lqzy;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_46
    invoke-virtual {p1, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_48
    const/4 v10, 0x1

    nop

    nop

    nop

    sparse-switch v4, :sswitch_data_0

    goto/32 :goto_67

    nop

    nop

    :goto_49
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance p0, Lqzy;

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

    :goto_4c
    if-nez v2, :cond_9

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_64

    nop

    :goto_4e
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p1, p0}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    :goto_50
    goto/16 :goto_64

    nop

    nop

    :sswitch_4
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_52
    throw p1

    nop

    :goto_53
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_54
    if-ne v2, v9, :cond_a

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_42

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance p1, Lqzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_58
    throw p1

    nop

    :goto_59
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5a
    new-instance p1, Ljava/io/File;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5b
    sget-object v2, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->FpBUKC:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_5c
    move v2, v9

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_5e
    if-ne v2, v6, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_b
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_5f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_60
    goto/16 :goto_1

    nop

    nop

    :goto_61
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v2, -0x1

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_65
    const-string v2, "directboot-cache"

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v3, :cond_c

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

    :cond_c
    goto/32 :goto_17

    nop

    nop

    :goto_67
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_14

    nop

    nop

    :goto_68
    if-nez v2, :cond_d

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_6a
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-ge p0, v8, :cond_e

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_e
    :try_start_0
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lqzp;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_38

    nop

    nop

    :goto_6c
    const-string p1, "Scheme must be \'android\'"

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v0, :cond_f

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6f
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {p1, p0}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_52

    nop

    nop

    :goto_72
    if-eq v2, v5, :cond_10

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_73
    invoke-direct {p0, p1}, Lqzy;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7e

    nop

    nop

    :goto_74
    if-lez v0, :cond_11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_9

    nop

    :goto_75
    throw p0

    nop

    :goto_76
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_77
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_78
    const/4 v9, 0x2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {p1, p0}, Lqzy;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_7c
    const-string v1, "Path must start with a valid logical location: %s"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

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

    :goto_7e
    throw p0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c869c35 -> :sswitch_2
        0x5a0af82 -> :sswitch_1
        0x5ceba77 -> :sswitch_4
        0x31c90f9f -> :sswitch_3
        0x3aec0d90 -> :sswitch_0
        0x3b1a1885 -> :sswitch_5
    .end sparse-switch

    :goto_7f
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_80
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const-string p1, "Did not expect uri to have query"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_83
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_86
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_87
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_89
    const-string v2, "cache"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public static l(FF)Z
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    const v1, 0x2edbe6ff    # 1.0E-10f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

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

    :goto_5
    cmpg-float v1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    const/high16 p1, 0x34000000

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr p0, p1

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

    :goto_c
    return v2

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpg-float p0, v0, p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    :goto_15
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    if-lez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    const v1, 0x1c

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

    :goto_1a
    sub-float v0, p0, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop
.end method

.method public static m()Landroid/net/Uri;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const-string v1, "com.google.ar.core.services.arcorecontentprovider"

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

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v1, 0x1e

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
    rem-int v0, v0, v1

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
    const v0, 0xd

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const-string v1, "content"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_9
    const-string v1, ""

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

    :goto_a
    return-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

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

    :goto_e
    new-instance v0, Landroid/net/Uri$Builder;

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

    :goto_f
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

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

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static n(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_2
    invoke-static {p2}, Lrpl;->a(Lrsk;)Lrsk;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static o(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lsrv;->j(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2}, Lrpl;->c(Lssx;)Lssx;

    move-result-object p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static p(Lssw;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrpl;->b(Lssw;)Lssw;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_2
    invoke-static {p1}, Lrpl;->a(Lrsk;)Lrsk;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p1}, Lrpl;->c(Lssx;)Lssx;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static s(Lsui;Lstu;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-static {p0, p1, p2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p1}, Lrpl;->d(Lstu;)Lstu;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static t(Ljava/lang/String;)Lrow;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lrox;->a:Lroy;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v0, v1}, Lqrf;->u(Ljava/lang/String;Lroy;Z)Lrow;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static u(Ljava/lang/String;Lroy;Z)Lrow;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xb

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    invoke-static {}, Lror;->a()Lrpd;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_f

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    instance-of v3, v1, Lroj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_13

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1, p0, p1, v0}, Lrpe;->h(Ljava/lang/String;Lroy;Lrpd;)Lrpe;

    move-result-object v1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    check-cast v1, Lroj;

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

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Lror;->c(Lrpd;Lrpe;)Lrpe;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v1}, Lror;->c(Lrpd;Lrpe;)Lrpe;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Lrow;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Lrou;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    invoke-direct {p0, v1, v2}, Lrow;-><init>(Lrpe;Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, p0, p1, p2, v0}, Lrou;-><init>(Ljava/lang/String;Lroy;ZLrpd;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    if-eq v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Lrpd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v1, p0, p1, p2, v0}, Lroj;->d(Ljava/lang/String;Lroy;ZLrpd;)Lrpe;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_15

    nop

    nop

    :goto_24
    sget-object v2, Lrov;->a:Lrov;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop
.end method

.method public static v(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "update.precondition.failures:"

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

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public static declared-synchronized x(Landroid/content/Context;)Lrnb;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Lqrf;->a:Lrnb;

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    new-instance v1, Lqop;

    nop

    invoke-static {p0}, Lqrf;->v(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    nop

    nop

    invoke-direct {v1, p0}, Lqop;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lrnb;

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lrnb;-><init>(Lqop;)V

    sput-object p0, Lqrf;->a:Lrnb;

    nop

    :cond_0
    sget-object p0, Lqrf;->a:Lrnb;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const-class v0, Lqrf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public static y(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 11

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v0, v4

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

    :goto_1
    new-instance p0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    move v6, v5

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

    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_6
    if-lt v2, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_64

    nop

    nop

    :goto_8
    goto/16 :goto_87

    nop

    nop

    :goto_9
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v8, :cond_2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ge v6, p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_3
    goto/32 :goto_61

    nop

    nop

    :goto_c
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    nop

    :goto_d
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_10
    div-int/2addr v6, v1

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v2, Landroid/graphics/RectF;

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_76

    nop

    :goto_15
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float p0, p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    sub-int/2addr p0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_19
    return-object v2

    nop

    nop

    :goto_1a
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_20
    aput-object v1, v0, v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_22
    move v8, v3

    nop

    :goto_23
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Lrmh;->getRight()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_25
    iget-object v5, p1, Lrmh;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_26
    move v7, v6

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_27
    aput-object v1, v0, v2

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_28
    iget-object v5, p1, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float p1, p1

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

    :goto_2a
    aget-object v8, v0, v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2b
    check-cast p1, Lrmh;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v8, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_31
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Lrmh;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float p1, p1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_35
    aput-object v5, v0, v3

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

    :goto_36
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_38
    move v5, v2

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

    :goto_39
    const/4 p0, 0x3

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6c

    nop

    :goto_3b
    const/16 v0, 0x18

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_3d
    add-int/2addr p1, v0

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_3e
    goto/16 :goto_57

    nop

    :goto_3f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_40
    if-lt v5, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_7
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int/2addr p0, v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_43
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_6d

    nop

    :goto_46
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4b
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v8, :cond_8

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v7, v5

    nop

    :goto_50
    goto/32 :goto_6

    nop

    nop

    :goto_51
    new-array v0, p0, [Landroid/view/View;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_52
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_53
    sub-int/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_54
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_55
    iget-object v1, p1, Lrmh;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v7

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_58
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_59
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_5a
    aput-object v4, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_5c
    if-nez v9, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_9
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Lrmh;->getLeft()I

    move-result p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v10, :cond_a

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    div-int/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_71

    nop

    :goto_62
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_63
    move v5, v4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_64
    instance-of p0, p1, Lrmh;

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

    :goto_65
    aput-object v5, v0, v2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_66
    if-eqz v9, :cond_b

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1}, Lrmh;->getBottom()I

    move-result p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_68
    aput-object v4, v0, v1

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

    :goto_69
    if-nez v7, :cond_c

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_c
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    div-int/2addr v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6b
    div-int/lit8 p1, p0, 0x2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_6e
    iget-object v1, p1, Lrmh;->a:Landroid/widget/TextView;

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

    :goto_6f
    float-to-int p0, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_70
    move v6, p0

    nop

    nop

    :goto_71
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_72
    div-int/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_73
    move v7, v3

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p1}, Lrmh;->getTop()I

    move-result v0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_79
    invoke-direct {v2, p0, v0, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_19

    nop

    nop

    :goto_7a
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {p0, v0}, Lqqy;->q(Landroid/content/Context;I)F

    move-result p0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7e
    aget-object v9, v0, v5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_7f
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_43

    nop

    nop

    :goto_80
    if-nez v7, :cond_d

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_83
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-eqz p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_86
    move v8, v7

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_40

    nop

    nop

    :goto_88
    new-array v0, p0, [Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    add-int v1, p0, v6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public z(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int p2, p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, p3, p4}, Lrer;->b(IIF)I

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget p1, p1, Landroid/graphics/RectF;->right:F

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

    :goto_4
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-static {p1, p3}, Lqrf;->y(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    float-to-int p0, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-static {p0, p1, p4}, Lrer;->b(IIF)I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget p2, p0, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p3, p3, Landroid/graphics/Rect;->top:I

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

    :goto_b
    iget p3, p1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p5, p2, p3, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

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

    :goto_f
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    float-to-int p3, p3

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

    :goto_11
    invoke-static {p1, p2}, Lqrf;->y(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
