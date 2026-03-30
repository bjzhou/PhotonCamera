.class public final Lfvc;
.super Lpuq;
.source "PG"


# instance fields
.field public final a:Lpog;

.field public b:F

.field public c:Llyc;

.field private final d:Lpcu;

.field private final e:Loyn;

.field private final f:Lfvd;

.field private final g:Lofu;


# direct methods
.method public constructor <init>(Lpcu;Lows;Lkog;Liie;Loyn;Loyn;Lmjv;Loyd;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p6}, Lfvd;->b()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Lpog;->name()Ljava/lang/String;

    move-result-object p8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    new-instance p6, Lfvd;

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

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_5
    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

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

    :goto_6
    new-instance p6, Lofu;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, v1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p0, p7, p3, v0}, Lfvy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Lfvc;->g:Lofu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object p5, p6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p5, p0, Lfvc;->e:Loyn;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iput-object p6, p0, Lfvc;->f:Lfvd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1c

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

    nop

    :goto_10
    sget-object v1, Llyc;->a:Llyc;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    iput v1, p0, Lfvc;->b:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3}, Lpoh;->l()Lpog;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Lfvy;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    iput-object p1, p0, Lfvc;->d:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    sget-object p0, Lstd;->a:Lstd;

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

    :goto_1a
    invoke-direct {p6, p8}, Lofu;-><init>(Loyd;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2, p6}, Lows;->d(Lpci;)V

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    iput-object v1, p0, Lfvc;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p5, p1, p0}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    :goto_1f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, p8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

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

    :goto_21
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, p0, Lfvc;->c:Llyc;

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

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    sget-object v2, Lpog;->a:Lpog;

    nop

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

    :goto_27
    if-ne v1, v2, :cond_1

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_28
    const-string v1, "cuttlef-af-"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

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

    :goto_2a
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->NEMY:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2b
    const v1, 0x5

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

    :goto_2c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p6, p3, p4, p1, p8}, Lfvd;-><init>(Lkog;Liie;Lpcu;Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfvc;->f:Lfvd;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Llse;->g:Llse;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget-object p1, p0, Lfvc;->d:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lfvc;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object p1, p0, Lfvc;->d:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_10
    iget v1, v1, Llyc;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

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

    nop

    :goto_12
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_15
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lfvc;->f:Lfvd;

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

    :goto_17
    iget p1, p1, Llyc;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_18
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    sget-object p1, Llyc;->a:Llyc;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Lfvd;->a(Lpro;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Ljava/lang/Integer;

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

    nop

    nop

    :goto_1d
    iget p1, p1, Llyc;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    iput v0, p0, Lfvc;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    :goto_21
    iget-object v0, p0, Lfvc;->g:Lofu;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Llyc;->b:Llyc;

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

    :goto_23
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ge v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_29
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lfvc;->e:Loyn;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2f
    iget v1, v0, Lofu;->a:I

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lfvc;->e:Loyn;

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

    :goto_33
    iput v1, v0, Lofu;->a:I

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

    :goto_34
    invoke-static {p1}, Llse;->a(I)Llse;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput p1, v0, Lofu;->a:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_38
    sget-object p1, Llyc;->b:Llyc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_39
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_6
    goto/32 :goto_30

    nop

    :goto_3a
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3c
    sget-object v1, Llyc;->a:Llyc;

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

    :goto_3d
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_3e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3f
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

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

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_42
    const-string v0, "Locking AF"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_44
    iget-object p1, p0, Lfvc;->e:Loyn;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Lfvd;->c()Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_45

    nop

    nop

    :goto_48
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4a
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v0, v0, Llyc;->f:I

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

    nop

    :goto_4c
    iget-object v1, v0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4e
    if-eq p1, v0, :cond_8

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4f
    const-string v0, "Unlocking AF"

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
