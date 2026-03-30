.class public Ljus;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmmv;


# static fields
.field public static final synthetic d:I

.field private static final e:Lsdb;

.field private static final f:Lj$/time/Duration;


# instance fields
.field public final a:Lmmx;

.field public final b:Lows;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lpdf;

.field private final i:Lmmz;

.field private final j:Loyn;

.field private final k:Lpnu;

.field private final l:Lprb;

.field private final m:Lpik;

.field private final n:Lkog;

.field private final o:Lhoh;

.field private final p:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-string v0, "jus"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    sput-object v0, Ljus;->e:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const-wide/16 v0, 0x1f4

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
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    :goto_c
    sput-object v0, Ljus;->f:Lj$/time/Duration;

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

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lpik;Lkog;Lmmx;Lmmw;Loyn;Lpnu;Lprb;Lmhz;Ljava/util/concurrent/atomic/AtomicBoolean;Lpdf;Lhoh;)V
    .locals 1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p10, p0, Ljus;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljus;->i:Lmmz;

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

    :goto_2
    const/16 p3, 0xa

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p12, p0, Ljus;->o:Lhoh;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p8, p0, Ljus;->l:Lprb;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p2}, Lqas;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p1}, Lqas;->f(Ljava/lang/Runnable;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljus;->b:Lows;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p9, p0, Ljus;->p:Lmhz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Ljus;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    const-string p1, "LongShotTorch"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljsp;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    invoke-virtual {p2, p1}, Lqas;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Ljsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lows;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p6, p3}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    :goto_11
    iput-object p7, p0, Ljus;->k:Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2, p1}, Lqas;->d(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2, p5}, Lqas;->g(Lmmw;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Ljus;->n:Lkog;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    const/16 p3, 0xb

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p6, p0, Ljus;->j:Loyn;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p2, p0, Ljus;->m:Lpik;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    new-instance p2, Lqas;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p11, p0, Ljus;->h:Lpdf;

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

    :goto_1b
    iput-object p4, p0, Ljus;->a:Lmmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    invoke-virtual {p2, p1}, Lqas;->c(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1, p6, p3}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Lqas;->a()Lmmz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Llxa;Z)Lrbh;
    .locals 24

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v11, v1, Ljus;->p:Lmhz;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-direct {v9, v2}, Lixa;-><init>(I)V

    goto/32 :goto_51

    nop

    nop

    :goto_2
    new-instance v2, Lixa;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v18, v2

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

    :goto_4
    const/16 v7, 0xa48

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v13, v1, Ljus;->k:Lpnu;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v19, v3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_7
    invoke-static {v6, v7, v5, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_8
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_9
    iget-object v0, v1, Ljus;->n:Lkog;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    sget-object v5, Ljus;->e:Lsdb;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lmhz;->q()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    iget-object v0, v1, Ljus;->o:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v2, Lhne;->j:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    iget-object v0, v1, Ljus;->n:Lkog;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpoh;->l()Lpog;

    move-result-object v0

    nop

    nop

    sget-object v2, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget-object v0, v1, Ljus;->l:Lprb;

    nop

    nop

    invoke-virtual {v0}, Lprb;->k()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Ljus;->m:Lpik;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lnyn;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    const/16 v3, 0x7d

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    new-instance v4, Lpha;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v3}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lpik;->l(Lpha;)V

    goto :goto_c

    nop

    :cond_0
    iget-object v0, v1, Ljus;->m:Lpik;

    nop

    sget-object v2, Lnyn;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lpha;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v3}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lpik;->l(Lpha;)V

    :cond_1
    :goto_c
    iget-object v0, v1, Ljus;->m:Lpik;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpik;->u()Lpin;

    move-result-object v2

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface/range {p1 .. p1}, Llxa;->k()Llxo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_e
    invoke-direct/range {v8 .. v15}, Lrbh;-><init>(Lrss;Lpci;Lpik;Lmhz;Lpnu;Ljava/util/concurrent/atomic/AtomicBoolean;Lhoh;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v12, v1, Ljus;->k:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    :goto_13
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v5, v1, Ljus;->k:Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_43

    nop

    :goto_17
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v1, Ljus;->h:Lpdf;

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

    nop

    :goto_19
    new-instance v9, Lixa;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    :goto_1b
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v1, Ljus;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v16, v0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lpoh;->l()Lpog;

    move-result-object v0

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

    :goto_20
    invoke-direct/range {v7 .. v14}, Lrbh;-><init>(Lrss;Lpci;Lpik;Lmhz;Lpnu;Ljava/util/concurrent/atomic/AtomicBoolean;Lhoh;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v12, v1, Ljus;->p:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_24
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v17, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v14, v1, Ljus;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v3, v1, v2, v4, v5}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v10, v2, v0, v4, v5}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_3e

    nop

    nop

    :goto_2a
    const v0, 0xc

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v23, v1

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

    :goto_2c
    invoke-interface {v0, v3, v4}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v1, Ljus;->j:Loyn;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2e
    const/4 v2, 0x7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v6, v1, Ljus;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_30
    if-lez v0, :cond_3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_31
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x1

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v2}, Lpin;->a()Lpgc;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    move-object v6, v0

    nop

    check-cast v6, Lpjp;

    nop

    nop

    nop

    iput-object v5, v6, Lpjp;->c:Ljava/lang/Integer;

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    move-object v6, v0

    nop

    nop

    nop

    check-cast v6, Lpjp;

    nop

    nop

    nop

    nop

    nop

    iput-object v5, v6, Lpjp;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    check-cast v0, Lpjp;

    nop

    nop

    invoke-virtual {v0}, Lpjp;->c()Lpjq;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Lpin;->b(Lpgd;)Lsui;

    move-result-object v0

    nop

    invoke-interface {v0}, Lsui;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lpgi;

    nop

    nop

    nop

    iget-wide v5, v0, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Ljus;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v7, -0x1

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v5, v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    sget-object v0, Ljus;->f:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v7

    nop

    nop

    nop

    add-long/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    :cond_5
    sget-object v0, Ljus;->e:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v5, 0xa47

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v5, "Invalid converged 3A timestamp for Long Shot."

    nop

    nop

    invoke-interface {v0, v5}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catch Lpfi; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v15, v1, Ljus;->o:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_34
    const-string v2, "LongShotTorchController#turnOnTorch"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v2, Llxo;->o:Llxo;

    nop

    nop

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

    :goto_37
    sget-object v8, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v22, v6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v21, v5

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, v1, Ljus;->j:Loyn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3b
    iget-object v3, v1, Ljus;->m:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3c
    invoke-direct/range {v16 .. v23}, Lrbh;-><init>(Lrss;Lpci;Lpik;Lmhz;Lpnu;Ljava/util/concurrent/atomic/AtomicBoolean;Lhoh;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3d
    move-object v7, v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3e
    iget-object v11, v1, Ljus;->m:Lpik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3f
    iget-object v4, v1, Ljus;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_40
    sget-object v2, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_8

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-object v0

    nop

    :goto_43
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_17

    nop

    :goto_45
    new-instance v10, Lixc;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_46
    new-instance v3, Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    const/16 v4, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v2, v3}, Lixa;-><init>(I)V

    goto/32 :goto_3b

    nop

    nop

    :goto_49
    iget-object v4, v1, Ljus;->p:Lmhz;

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

    :goto_4a
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v14, v1, Ljus;->o:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4c
    new-instance v0, Lrbh;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v0, Lrbh;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_50
    move-object/from16 v20, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_51
    iget-object v10, v1, Ljus;->m:Lpik;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_52
    return-object v3

    nop

    :catch_1
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v3, Ljyl;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object v8, v3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_56
    iget-object v13, v1, Ljus;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_57
    const-string v6, "Couldn\'t set the torch state for Long Shot"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_59
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v1, v1, Ljus;->o:Lhoh;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop
.end method

.method public final d(Lmmw;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmmz;->d(Lmmw;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljus;->i:Lmmz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
