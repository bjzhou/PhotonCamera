.class public Lktv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lkuc;

.field private final c:Loyd;

.field private final d:Lkxb;

.field private final e:Lqpa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    const-string v0, "ktv"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lktv;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkxb;Lqpa;Lkuc;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lktv;->d:Lkxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Loyi;->c([Loyd;)Loyd;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-object p3, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_8
    new-array v0, v0, [Loyd;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x2

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

    :goto_b
    iget-object p1, p1, Lkxb;->a:Loyq;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lktv;->c:Loyd;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lktv;->e:Lqpa;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    aput-object p1, v0, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v0}, Loyi;->d(Loyd;Ljava/lang/Comparable;)Loyd;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x13

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p3}, Lkuc;->a()Loyd;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p3, p0, Lktv;->b:Lkuc;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lktv;->c:Loyd;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Loyd;
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

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lktv;->b:Lkuc;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lkuc;->b()Loyd;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
    .locals 5

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v3, :cond_0

    nop

    nop

    goto/32 :goto_8

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

    :goto_1
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    sget-object v3, Lktv;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3
    check-cast p0, Lscz;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lktv;->e:Lqpa;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_7
    invoke-interface {v3, v4, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lkxb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

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

    :goto_b
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljvm;->c()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lkxb;->a:Loyq;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v2, v0, Lkxb;->f:Z

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    iget-object v2, v0, Lkxb;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    iget v2, v0, Lkxb;->e:I

    nop

    nop

    if-lez v2, :cond_3

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    iput v2, v0, Lkxb;->e:I

    nop

    nop

    nop

    iget-object v2, v0, Lkxb;->d:Loyp;

    nop

    nop

    invoke-virtual {v0}, Lkxb;->a()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    iput-object v4, v2, Loyp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move v4, v3

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    iget-object v2, p2, Llko;->c:Ljava/lang/Object;

    nop

    nop

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

    :goto_13
    const/16 p1, 0xc12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    iget-object v2, v2, Lkmq;->f:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljvm;->a()Lrss;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    :goto_18
    check-cast v2, Llwl;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Lkxd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1a
    const-string p1, "Ticket not available"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

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

    :goto_1c
    goto/16 :goto_43

    nop

    :goto_1d
    goto/32 :goto_42

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_34

    nop

    nop

    :goto_21
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0, p1, p2}, Lkuc;->c(Lkub;Llko;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Loyp;->a()V

    goto/32 :goto_30

    nop

    nop

    :goto_24
    invoke-static {v2}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

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

    :goto_26
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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
    invoke-direct {v1, v0, v3}, Lkxd;-><init>(Lkxb;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_44

    nop

    nop

    :goto_29
    iget-object v0, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Lkxb;->d:Loyp;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v2, v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    :goto_2e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    :goto_30
    if-nez v4, :cond_5

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    const/16 v4, 0xc11

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljvm;->b()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_36
    sget-object p0, Lktv;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v2, Lkmq;

    nop

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

    nop

    :goto_39
    iget-object v0, p0, Lktv;->d:Lkxb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3a
    const-string v4, "Capture session not a MultiImageCaptureSession: %s"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v3, :cond_6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lktv;->d:Lkxb;

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

    :goto_3d
    invoke-virtual {v0, p2}, Lqpa;->h(Llko;)Ljvm;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3f
    check-cast v2, Llwl;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_40
    iput-object v3, v2, Llwl;->c:Lrss;

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lktv;->b:Lkuc;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop
.end method
