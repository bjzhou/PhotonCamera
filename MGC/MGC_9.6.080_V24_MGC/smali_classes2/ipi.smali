.class public Lipi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liox;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Llle;

.field public final c:Lpdf;

.field public final d:Lsys;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Loxv;

.field public final i:Landroid/content/Context;

.field public final j:Llyv;

.field public final k:Lhoh;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Ljava/util/function/UnaryOperator;

.field private final n:Ltxm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "ipi"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lipi;->a:Lsdb;

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

.method public constructor <init>(Llle;Ljava/util/concurrent/Executor;Loxv;Lpdf;Lsys;Ljava/util/function/UnaryOperator;Ltxm;Lhoh;Llyv;Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p9, p0, Lipi;->j:Llyv;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lipi;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_6
    iput-object p4, p0, Lipi;->c:Lpdf;

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

    :goto_7
    iput-object p5, p0, Lipi;->d:Lsys;

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

    :goto_8
    iput-object p2, p0, Lipi;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    iput-object p10, p0, Lipi;->i:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lipi;->b:Llle;

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

    :goto_c
    iput-object p6, p0, Lipi;->m:Ljava/util/function/UnaryOperator;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p7, p0, Lipi;->n:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iput-object p8, p0, Lipi;->k:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lipi;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_11
    iput-object p1, p0, Lipi;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Lipi;->h:Loxv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static final h()V
    .locals 1

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

    :goto_1
    sget-object v0, Lhml;->a:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

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
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lipg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lipg;-><init>(Lipi;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lipi;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(JLkog;Liow;Liow;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lpck;)Lsui;
    .locals 14

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v11, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v2, v11

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v5, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4
    const/16 v2, 0x6fc

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    move-object v10, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    move-object/from16 v8, p7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lcom/google/googlex/gcam/RawReadView;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lcom/google/googlex/gcam/RawReadView;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v2, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lihf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lscz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, p0

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

    :goto_10
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, v1, v2}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_3c

    nop

    nop

    :goto_12
    sget-object v0, Lipi;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_13
    new-instance v13, Liph;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v10, Lipi;->c:Lpdf;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    :goto_16
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v9, p6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "Empty secondary raw image."

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    move-object/from16 v5, p4

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

    :goto_1a
    return-object v11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    :goto_1c
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_20
    move-wide v3, p1

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

    :goto_21
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

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

    nop

    :goto_22
    invoke-interface {v0, v2, v1}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v5, Liow;->a:Lj$/util/Optional;

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

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct/range {v0 .. v9}, Liph;-><init>(Lipi;Lsuu;JLiow;Liow;Lkog;Lpck;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Lcom/google/googlex/gcam/RawReadView;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2a
    const-string v1, "FalconController"

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

    nop

    :goto_2b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2d
    move-object/from16 v6, p5

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v1, 0xd

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_30
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_32
    const-string v2, "Empty primary raw image."

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v11}, Lsuu;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_35
    move-object v0, v13

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

    :goto_36
    move-object/from16 v6, p5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_2
    goto/32 :goto_27

    nop

    :goto_38
    invoke-static {}, Lipi;->h()V

    goto/32 :goto_3f

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Lcom/google/googlex/gcam/RawReadView;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v2, 0x0

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

    nop

    :goto_3b
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

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

    :goto_3c
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v11, v0, v1}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_14

    nop

    nop

    :goto_3e
    iget-object v12, v10, Lipi;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3f
    iget-object v0, v5, Liow;->a:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v7, p3

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

    :goto_41
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_42
    sget-object v2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_43
    invoke-interface {v0, v2, v1}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/16 v1, 0x6fd

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, v6, Liow;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, v6, Liow;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_48
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_3
    :goto_49
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    :goto_4b
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v0, Lipi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_47

    nop

    nop
.end method

.method public final c(Lidi;Llxa;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lmjn;->c()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2}, Llxa;->h()Llxc;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-interface {p2}, Llxa;->ag()Lmjn;

    move-result-object p0

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

    :goto_5
    sget-object v0, Lidb;->l:Lidb;

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

    :goto_6
    invoke-virtual {p1, p0, v0}, Lidi;->c(Lpsf;Lidb;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(I)I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_3
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

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

    :goto_8
    return p0

    nop

    nop

    nop
.end method

.method public final e(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x15

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    const/16 p0, 0x13

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p0, 0x12

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    const/16 p0, 0xa

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

    :goto_4
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3

    nop

    nop

    :goto_7
    return p0

    nop

    :pswitch_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p0, 0x16

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_8

    nop

    nop

    :goto_b
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    :pswitch_6
    goto/32 :goto_19

    nop

    nop

    :goto_10
    const/16 p0, 0x8

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    const/16 p0, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const/16 p0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_0

    nop

    nop

    :goto_14
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    const/16 p0, 0xe

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_27

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    const/16 p0, 0xd

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 p0, 0x10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return p0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_12
        :pswitch_10
        :pswitch_c
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_14
        :pswitch_11
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :goto_1f
    return p0

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return p0

    nop

    nop

    :pswitch_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 p0, 0x9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    const/16 p0, 0x14

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

    :goto_23
    return p0

    nop

    :pswitch_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    return p0

    nop

    :pswitch_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    const/16 p0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_26
    return p0

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 p0, 0x11

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

    :goto_28
    return p0

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_4

    nop

    nop

    :goto_29
    return p0

    nop

    :pswitch_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 p0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2b
    return p0

    nop

    nop

    nop

    nop

    :pswitch_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

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
    iget-object p0, p0, Lipi;->n:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

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

    :goto_3
    check-cast p0, Ljye;

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const-string p0, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljye;->b()Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

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
    check-cast p0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final g(JJILcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;ZZ)V
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_4f

    nop

    :goto_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x704

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x703

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4
    const-string v5, "FalconController"

    nop

    nop

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

    :goto_5
    invoke-interface {v1, v3}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    const-string v8, "onDebugImage"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_7
    invoke-interface {v2, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v5, "retrieveImage"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_b
    move-wide v2, p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_c
    check-cast v2, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    move-object/from16 v1, p6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_4f

    nop

    nop

    :goto_f
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_10
    move-object v9, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Lipi;->m:Ljava/util/function/UnaryOperator;

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

    :goto_12
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    sget-object v0, Lipi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v0, Lipi;->m:Ljava/util/function/UnaryOperator;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-wide v4, p1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_16
    invoke-interface {v7, p1, p2, v1, v2}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->d(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    :goto_18
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_f

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    move-wide v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1f
    move-object v5, v9

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v2, v3}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1, v5}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

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

    :goto_23
    move-object/from16 v7, p6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v8, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_28
    check-cast v0, Lscz;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/16 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v1, "Error retrieving debug image %s"

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2d
    check-cast v1, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_30
    invoke-interface {v0, v1, v6}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, v0, Lipi;->c:Lpdf;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_2
    goto/32 :goto_5b

    nop

    nop

    :goto_33
    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_35
    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    move-wide v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_38
    if-nez p5, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, v0, Lipi;->c:Lpdf;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    :goto_3c
    goto/32 :goto_43

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3e
    move-object v0, p0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3f
    if-nez p9, :cond_4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_61

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_a

    nop

    nop

    :goto_42
    check-cast v9, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_43
    iget-object v4, v0, Lipi;->d:Lsys;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_44
    move-object/from16 v6, p8

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0, v1, v6}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_57

    nop

    nop

    :goto_47
    invoke-interface {v2, v8}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v4, p3, p4}, Lsys;->a(J)Lrss;

    move-result-object v1

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

    :goto_49
    iget-object v2, v0, Lipi;->c:Lpdf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4a
    iget-object v4, v0, Lipi;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4b
    move-object/from16 v7, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4c
    move-object/from16 v3, p7

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4d
    sget-object v1, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->ipHXQJQDJK:Ljava/lang/String;

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

    nop

    nop

    :goto_4e
    invoke-interface/range {v1 .. v6}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->a(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V

    :goto_4f
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_50
    if-nez p10, :cond_5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_51
    move-object v4, v8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_54
    invoke-interface {v0, v1, v5}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_55
    const-string v4, "onOriginalImage"

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_56
    sget-object v0, Lipi;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_38

    nop

    nop

    :goto_59
    move-object v8, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v0, v0, Lipi;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_5c
    cmp-long v4, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5d
    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_60
    move-object/from16 v6, p8

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v2, v0, Lipi;->c:Lpdf;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop
.end method
