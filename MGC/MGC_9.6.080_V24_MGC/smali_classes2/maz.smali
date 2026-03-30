.class public final Lmaz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:Llyv;

.field public final c:Llyv;

.field private final d:Landroid/os/UserManager;

.field private final e:Lmbb;

.field private final f:Ltxm;

.field private final g:Lhoh;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lhoh;Llyv;Llyv;Lmbb;Ltxm;Landroid/content/pm/PackageInfo;)V
    .locals 0

    goto/32 :goto_5

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

    :goto_1
    iput-object p4, p0, Lmaz;->c:Llyv;

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

    :goto_2
    iput-object p3, p0, Lmaz;->b:Llyv;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lmaz;->d:Landroid/os/UserManager;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lmaz;->g:Lhoh;

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

    nop

    :goto_7
    iput-object p5, p0, Lmaz;->e:Lmbb;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p6, p0, Lmaz;->f:Ltxm;

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

    nop

    :goto_9
    iput-wide p1, p0, Lmaz;->a:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lmav;->g:Ljava/util/concurrent/Executor;

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

    :goto_5
    invoke-static {}, Ltux;->c()J

    move-result-wide v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const/4 v0, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lmaz;->f:Ltxm;

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

    nop

    :goto_b
    invoke-static {v0, v1}, Lsgj;->S(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

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

    nop

    :goto_c
    check-cast p0, Lmav;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lgng;

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

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

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

    nop

    :goto_10
    if-ne v1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    :goto_11
    new-instance v0, Lmaq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lmav;->a:Lsdb;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x2

    nop

    :goto_15
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_16
    int-to-long v0, v0

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

    nop

    :goto_17
    invoke-static {}, Ltux;->c()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    const/16 v1, 0x1049

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1a
    invoke-direct {v1, p0, v2}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0, v1}, Lmaq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lmaz;->e:Lmbb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "Attempted HAL update for more than %d times. Skipping update."

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

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Lmbb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Lmav;->j:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_27
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    :goto_2a
    invoke-static {v0, v1, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v1, v2, v3}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Llyr;->ax:Llzf;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lmav;->d()V

    goto/32 :goto_7

    nop

    nop

    :goto_31
    iget-object v0, p0, Lmav;->w:Llyv;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v1, v0, -0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_35
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, v0}, Lmbb;->a(I)V

    :goto_37
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_f

    nop

    nop

    :goto_3a
    const v1, 0xe

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lmav;->l:Lmbb;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3d
    if-gtz v0, :cond_5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3e
    iget v0, v0, Lmbb;->b:I

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmaz;->d:Landroid/os/UserManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ltux;->d()Ltuy;

    move-result-object p0

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

    :goto_7
    const v1, 0xd

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

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

    :goto_c
    return v1

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmaz;->g:Lhoh;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Ltux;->a:Ltux;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-interface {p0}, Ltuy;->c()Z

    move-result p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lhmq;->bv:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_1a
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
