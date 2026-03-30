.class final Lksg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksk;


# instance fields
.field private final a:Lksk;

.field private final b:Lsui;

.field private final c:Lixc;

.field private final d:Lhdn;


# direct methods
.method public constructor <init>(Lksk;Lsui;Lixc;Lhdn;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lksg;->a:Lksk;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p2, p0, Lksg;->b:Lsui;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p3, p0, Lksg;->c:Lixc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-object p4, p0, Lksg;->d:Lhdn;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lsui;)V
    .locals 7

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_2
    iget-object p1, p0, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lksg;->a:Lksk;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v0}, Lpom;-><init>(Lprw;)V

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget-object v3, v1, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1, v2, p2}, Lksk;->a(Lprw;Lsui;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lksg;->a:Lksk;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v3, p2}, Lkqf;-><init>(Lprw;Lsui;)V

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v0, 0x25

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

    :goto_12
    iget-object v1, v1, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    invoke-direct {v3, v0}, Lpom;-><init>(Lprw;)V

    goto/32 :goto_16

    nop

    nop

    :goto_14
    new-instance v2, Lpom;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_16
    invoke-direct {v2, v3, p2}, Lkqf;-><init>(Lprw;Lsui;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lkqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v2, p2}, Lksk;->a(Lprw;Lsui;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lpol;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v2, v0}, Lpom;-><init>(Lprw;)V

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1f
    const/16 v2, 0x20

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

    :goto_20
    monitor-enter p1

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lhdn;->r(J)Lksi;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lksi;->c:Ljava/util/Map;

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, p1, v1}, Lpol;-><init>(Lprw;I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lksg;->d:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    monitor-enter v1

    nop

    nop

    nop

    :try_start_2
    iget-object v4, v0, Lixc;->a:Ljava/lang/Object;

    nop

    check-cast v4, Lksi;

    nop

    nop

    iget-object v4, v4, Lksi;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Lhdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_11

    nop

    nop

    :goto_24
    invoke-direct {v0, p1, v1}, Lpol;-><init>(Lprw;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x13

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

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4

    nop

    nop

    :goto_28
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lksg;->d:Lhdn;

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

    :goto_2a
    iget-object v0, p0, Lksg;->a:Lksk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v3, v0}, Lpom;-><init>(Lprw;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p1}, Lprw;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2e
    invoke-interface {v0, p1, p2}, Lksk;->a(Lprw;Lsui;)V

    :goto_2f
    goto/32 :goto_22

    nop

    nop

    :goto_30
    monitor-enter v3

    nop

    nop

    nop

    :try_start_4
    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lhdn;->r(J)Lksi;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lksi;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    xor-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    const-string v6, "Image already added"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v2}, Lkav;->i(Lprw;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v1, v1, Lksi;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v1, Lhdn;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    monitor-enter v3

    nop

    nop

    :try_start_7
    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lhdn;->r(J)Lksi;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lksi;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    xor-int/lit8 v5, v5, 0x1

    nop

    const-string v6, "Image already added"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v2}, Lkav;->i(Lprw;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, v1, Lksi;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, v1, Lhdn;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_34
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    :try_start_a
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v3, Lpom;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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

    :goto_37
    rem-int v0, v0, v1

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

    :goto_38
    goto/32 :goto_28

    nop

    nop

    :goto_39
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eq v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lksg;->c:Lixc;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3c
    new-instance v2, Lkqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3d
    const/16 v2, 0x23

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Lpol;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_40
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_41
    throw p0

    nop

    :goto_42
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    nop

    :goto_44
    new-instance v2, Lpom;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lksg;->d:Lhdn;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v3, Lpom;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_47
    invoke-interface {p1}, Lprw;->a()I

    move-result v1

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
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lksk;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-interface {v1, v0, v2}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lksg;->c:Lixc;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lksg;->a:Lksk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v0, 0x4

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

    :goto_d
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    new-instance v0, Lkli;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lksg;->b:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2}, Lkli;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
