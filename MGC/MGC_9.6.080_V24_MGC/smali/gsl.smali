.class public final Lgsl;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Loyd;

.field private final b:Loyn;

.field private final c:Loyn;

.field private final d:Liii;


# direct methods
.method public constructor <init>(Loyd;Loyn;Loyn;Lhoh;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-static {p4, p1, p2, p2}, Liii;->a(Lhoh;Lnne;ZZ)Liii;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    iput-object p2, p0, Lgsl;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgsl;->a:Loyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lgsl;->c:Loyn;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lnne;->c:Lnne;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    iput-object p1, p0, Lgsl;->d:Liii;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 4

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgsl;->d:Liii;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Liii;->b:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_4
    sget-object v0, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p0}, Loyn;->a(Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgsl;->c:Loyn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sub-float p1, p0, p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x14

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    cmpl-float v0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

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

    nop

    :goto_17
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    if-gez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    check-cast p1, [F

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

    :goto_1c
    iget v1, p0, Liii;->c:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, v3, v3}, Ldvu;->y(FFF)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lgsl;->b:Loyn;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    :goto_22
    iget-object v0, p0, Lgsl;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    div-float/2addr p1, p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    aget p1, p1, v0

    nop

    :goto_26
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_3

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_28
    goto/16 :goto_7

    nop

    :goto_29
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

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

    :goto_2b
    invoke-static {}, Lcom/a;->lsb()F

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    cmpl-float v2, v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2d
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_2e
    const v0, -0x3b864000    # -999.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2f
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x17

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ge v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    :goto_35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_36
    sub-float/2addr v1, p0

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

    nop

    nop

    :goto_37
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method
