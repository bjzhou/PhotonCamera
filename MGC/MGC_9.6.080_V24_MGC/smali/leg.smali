.class public Lleg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Loyd;

.field private final c:Lljk;

.field private final d:Lleo;

.field private final e:Lpdf;

.field private final f:Lkot;

.field private final g:Llco;

.field private final h:Llgc;

.field private final i:Lows;

.field private final j:Lpik;

.field private final k:Lfdn;


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
    const-string v0, "leg"

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

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lleg;->a:Lsdb;

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
.end method

.method public constructor <init>(Lpik;Loyd;Lljk;Lpdf;Lleo;Lkot;Llco;Llgc;Lows;Lfdn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lleg;->j:Lpik;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-object p8, p0, Lleg;->h:Llgc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lleg;->c:Lljk;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lleg;->e:Lpdf;

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

    :goto_5
    iput-object p9, p0, Lleg;->i:Lows;

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lleg;->b:Loyd;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p10, p0, Lleg;->k:Lfdn;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iput-object p5, p0, Lleg;->d:Lleo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iput-object p7, p0, Lleg;->g:Llco;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p6, p0, Lleg;->f:Lkot;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Lpge;)Z
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

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

    :cond_0
    :try_start_0
    invoke-interface {v2}, Lprw;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-interface {v2}, Lprw;->close()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Loel;->h()Lprw;

    move-result-object v2

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

    :goto_c
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1c

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lleg;->h:Llgc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iget-object p0, p0, Lleg;->k:Lfdn;

    nop

    nop

    invoke-virtual {p0, v0, v1}, Lfdn;->y(J)Z

    move-result p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    :goto_14
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lpuq;->bD(Lpge;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    new-instance v3, Loel;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v3, v2, p1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    :try_start_2
    invoke-interface {p1}, Lpge;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    iget-wide v0, v0, Lpgi;->b:J

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    :goto_1d
    const v0, 0x7

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

    :goto_1e
    if-nez v2, :cond_4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    invoke-interface {v2}, Lprw;->close()V

    :goto_25
    goto/32 :goto_15

    nop

    nop

    :goto_26
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

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

    :goto_0
    iget-object p0, p0, Lleg;->b:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1

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
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lkav;->o()Lkqa;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance v0, Loyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
    .locals 10

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    :try_start_0
    throw v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Lhug;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p2, Lnim;->a:Lnik;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Lhug;

    nop

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

    nop

    :goto_6
    iget-object p0, p0, Lleg;->i:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_2

    nop

    :catch_1
    move-exception v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lljk;->a()Lljj;

    move-result-object v0

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_9
    throw v2

    nop

    :goto_a
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Lktq;->f()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Lljj;->a()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p1}, Llxa;->b(Ljava/lang/Throwable;)V

    :goto_e
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_f
    const-string p2, "Image capture failed. Aborting capture!"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_10
    invoke-interface {p1, p0}, Llxa;->b(Ljava/lang/Throwable;)V

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_13
    iget-object p1, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    const-string v1, "pckSingleHdr#acquiringFrame"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    iget-object p1, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lkub;->close()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v1}, Lhug;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    new-instance p0, Lhui;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, p0}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p2, Lnim;->a:Lnik;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p2, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Lktq;->f()V

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Lljj;->a()V

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    invoke-interface {p1, p2, p0}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    new-instance p0, Lhui;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_22
    invoke-direct {p1, v1}, Lhug;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v1}, Lhui;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    invoke-interface {p1}, Lktq;->f()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, p2, p0}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1}, Lkub;->close()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    :goto_29
    invoke-interface {p1}, Lkub;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    const v0, 0x7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, p2}, Lhui;-><init>(Ljava/lang/String;)V

    :goto_2c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lleg;->i:Lows;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0}, Lljj;->a()V

    goto/32 :goto_28

    nop

    nop

    :goto_31
    goto/16 :goto_11

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    :goto_33
    iget-object p1, p2, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_34
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Lleg;->f:Lkot;

    nop

    invoke-virtual {v2}, Lkot;->k()J

    move-result-wide v2

    nop

    nop

    const-wide/32 v4, -0x3b9aca00

    nop

    add-long/2addr v2, v4

    nop

    nop

    nop

    new-instance v4, Lljq;

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lljx;

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-direct {v5, v6, v2, v3}, Lljx;-><init>(Landroid/hardware/camera2/CaptureResult$Key;J)V

    new-instance v2, Lsbt;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v5}, Lsbt;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v2}, Lljq;-><init>(Ljava/util/Set;)V

    const/4 v2, 0x0

    nop

    move v3, v2

    nop

    :cond_2
    const/4 v5, 0x3

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v5, :cond_4

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    iget-object v7, p0, Lleg;->c:Lljk;

    nop

    nop

    invoke-interface {v7}, Lljk;->e()Lpge;

    move-result-object v7

    nop

    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p2, Llko;->d:Ljava/lang/Object;

    nop

    invoke-interface {v8, v6, v2}, Llxa;->E(ZZ)V

    invoke-virtual {v4, v7}, Lljq;->a(Lpge;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lpge;->b()Lpgi;

    invoke-interface {v7}, Lpge;->close()V

    goto :goto_35

    nop

    nop

    nop

    nop

    :cond_3
    invoke-direct {p0, v7}, Lleg;->da190e616797844b591057d0190e7728m(Lpge;)Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_36

    nop

    :cond_4
    :goto_35
    move-object v7, v1

    nop

    :goto_36
    invoke-interface {v0}, Lljj;->a()V

    if-nez v7, :cond_7

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lleg;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    const/16 v4, 0xd93

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "ZSL frame not available, submitting request with available capacity %s."

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lleg;->c:Lljk;

    nop

    nop

    nop

    invoke-interface {v7}, Lljk;->g()Lpgo;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v7}, Lpgo;->b()Loyd;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v3, v4, v7}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lleg;->c:Lljk;

    nop

    nop

    nop

    move-object v7, v1

    nop

    nop

    nop

    nop

    move v4, v2

    nop

    nop

    nop

    nop

    :cond_5
    if-ge v4, v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lljk;->g()Lpgo;

    move-result-object v7

    nop

    iget-object v8, p0, Lleg;->j:Lpik;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lpgo;->d()Ljava/util/Set;

    move-result-object v9

    nop

    nop

    invoke-interface {v7}, Lpgo;->c()Ljava/util/Set;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9, v7}, Lpik;->g(Ljava/util/Set;Ljava/util/Set;)Lpgo;

    move-result-object v7

    nop

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    invoke-interface {v7}, Lpgo;->b()Loyd;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Loyd;->cM()Ljava/lang/Object;

    iget-object v8, p0, Lleg;->j:Lpik;

    nop

    nop

    invoke-virtual {v8, v7}, Lpik;->b(Lpgo;)Lpge;

    move-result-object v7

    nop

    nop

    invoke-direct {p0, v7}, Lleg;->da190e616797844b591057d0190e7728m(Lpge;)Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    invoke-static {v7}, Lpuq;->bC(Lpge;)V

    invoke-interface {v7}, Lpge;->b()Lpgi;

    move-result-object v3

    nop

    nop

    nop

    if-eqz v3, :cond_8

    nop

    nop

    invoke-interface {v7}, Lpge;->h()Z

    move-result v3

    nop

    if-eqz v3, :cond_8

    nop

    invoke-static {v7}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, p2, Llko;->b:Ljava/lang/Object;

    nop

    invoke-interface {v3}, Lktq;->e()Lktp;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v3}, Lktp;->h()V

    iget-object v3, p0, Lleg;->e:Lpdf;

    nop

    nop

    nop

    const-string v4, "pckSingleHdr#process"

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v3, p0, Lleg;->d:Lleo;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2, p1, p2}, Lleo;->i(Ljava/util/List;Lkub;Llko;)V

    move v2, v6

    nop

    nop

    nop

    goto :goto_37

    nop

    nop

    nop

    nop

    :cond_8
    sget-object v3, Lleg;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    const/16 v4, 0xd90

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    const-string v4, "Frame aborted."

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lhui; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_37
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p2, Llko;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, v1}, Lhui;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_19

    nop

    nop

    :goto_3d
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0, v1}, Lhug;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Lows;->b()Z

    move-result p0

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

    :goto_40
    iget-object v0, p0, Lleg;->c:Lljk;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

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

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lows;->b()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Lleg;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_45
    if-nez p0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_b
    goto/32 :goto_49

    nop

    :goto_47
    invoke-virtual {v1, v2}, Llco;->a(Llxa;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_4a

    nop

    :goto_49
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance p1, Lhug;

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

    :goto_4c
    iget-object v1, p0, Lleg;->g:Llco;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method
