.class public Lmbh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# static fields
.field private static final c:Lsdb;


# instance fields
.field public final a:Llaj;

.field public final b:Lsuu;

.field private final d:Loyn;

.field private final e:Landroid/hardware/camera2/CaptureResult$Key;

.field private final f:J

.field private final g:Lnoz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    sput-object v0, Lmbh;->c:Lsdb;

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "mbh"

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
.end method

.method public constructor <init>(Loyn;Lnoz;Llaj;Landroid/hardware/camera2/CaptureResult$Key;J)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmbh;->g:Lnoz;

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

    nop

    :goto_1
    iput-wide p5, p0, Lmbh;->f:J

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

    :goto_2
    new-instance p1, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmbh;->d:Loyn;

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

    :goto_4
    iput-object p3, p0, Lmbh;->a:Llaj;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lmbh;->e:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iput-object p1, p0, Lmbh;->b:Lsuu;

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    check-cast p1, Lprk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lmbh;->b(Lprk;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lprk;)V
    .locals 4

    goto/32 :goto_35

    nop

    nop

    :goto_0
    sget-object v0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_21

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lscz;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_6
    invoke-interface {p1, v2, v0, v1}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gez v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x1078

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    const v1, 0x10

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lmbh;->d:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lmbh;->c:Lsdb;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    :goto_12
    invoke-virtual {v0, p1}, Lnoz;->a(F)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, v0, v1}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lmbh;->e:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lmbh;->d:Loyn;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Lscz;

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

    :goto_1e
    iget-object p0, p0, Lmbh;->b:Lsuu;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-wide v2, p0, Lmbh;->f:J

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

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lmbh;->g:Lnoz;

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

    nop

    nop

    :goto_22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p1, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    const-string v1, "SkylaProposedValueWaiter"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_c

    nop

    nop

    :goto_31
    const-string v2, "Timeout waiting for proposed value, target timeout timestamp ns was %d."

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v0, p0, Lmbh;->f:J

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    cmpl-float v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_35
    const v0, 0x10

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

    nop

    :goto_36
    iget-object p0, p0, Lmbh;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
