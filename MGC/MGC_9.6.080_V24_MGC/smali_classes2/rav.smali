.class public final Lrav;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field public a:[Lsai;

.field private final b:Ltlq;


# direct methods
.method public constructor <init>(Ltlq;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lrav;->b:Ltlq;

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

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Lrnb;->e:Ljava/lang/Object;

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

    :goto_1
    invoke-virtual {p1, v1}, Lrnb;->a(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x14

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Ljava/io/IOException;

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

    :goto_7
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

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

    :goto_8
    goto/32 :goto_3b

    nop

    :goto_9
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const-string v8, ".mobstore_tmp-"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_b
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

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

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aget-object v2, v2, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_f
    iget-object p0, p1, Lrnb;->d:Ljava/lang/Object;

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

    :goto_10
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "-"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_15
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    check-cast p1, Landroid/net/Uri;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v1, Landroid/net/Uri;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of p1, p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1d
    goto :goto_1e

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object p1, p1, Lrnb;->d:Ljava/lang/Object;

    nop

    invoke-interface {p1, v0}, Lrax;->j(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1, v0}, Lrax;->p(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

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

    nop

    :goto_21
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_23
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_29
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

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

    :goto_2c
    iget-object v1, p1, Lrnb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2e
    iget-object v1, p1, Lrnb;->e:Ljava/lang/Object;

    nop

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
    throw p1

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Lrav;->a:[Lsai;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0, v0, p1}, Lrax;->k(Landroid/net/Uri;Landroid/net/Uri;)V

    goto/32 :goto_17

    nop

    nop

    :goto_34
    sget-object v5, Lrau;->a:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_35
    const/4 v3, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v1}, Lsai;->h(Ljava/util/List;)V

    :goto_39
    :try_start_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/io/OutputStream;

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v2, p0, Lrav;->b:Ltlq;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ltlq;->g(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lrav;->a:[Lsai;

    nop

    nop

    nop

    if-eqz p0, :cond_4

    nop

    nop

    aget-object p0, p0, v3

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lsai;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
