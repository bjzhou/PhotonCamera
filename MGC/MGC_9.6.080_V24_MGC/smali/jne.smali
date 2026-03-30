.class public final Ljne;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public final b:Ljnq;

.field public c:J

.field public d:Ljnr;

.field public final e:Landroid/graphics/Point;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljnq;II)V
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Ljne;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Ljne;->h:Z

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_4
    new-instance v4, Ljmj;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Ljmj;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1f

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget v4, v1, v2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljmg;->printStackTrace()V

    :goto_e
    goto/32 :goto_49

    nop

    nop

    :goto_f
    iput v0, p0, Ljne;->f:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Ljne;->b:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, p1, v4, v5}, Ljmj;->g(Landroid/content/Context;IF)V

    goto/32 :goto_38

    nop

    nop

    :goto_13
    invoke-direct {v4}, Ljmj;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_32

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    filled-new-array {v3, v4, v1, v2, v3}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_17
    if-lt v2, v3, :cond_1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_18
    div-int/lit8 p3, p3, 0x2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sub-int/2addr p4, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    const v2, 0x7f0801c4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    iput-boolean v0, p0, Ljne;->g:Z

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr p3, p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    div-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_20
    iput-object v1, p0, Ljne;->e:Landroid/graphics/Point;

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

    :goto_21
    const v3, 0x7f0801c5

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

    :goto_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v4, 0x7f0801c2

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

    nop

    :goto_24
    div-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p2, p0, Ljne;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-boolean v0, p0, Ljne;->i:Z

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljnr;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljnr;-><init>()V

    iput-object v1, p0, Ljne;->d:Ljnr;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljmg; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v3, Ljmj;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v4, v3, Ljmf;->e:Ljmh;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    div-int/lit8 p4, p4, 0x2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2e
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p2, p2, Ljmj;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget p1, p1, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v1, p0, Ljne;->a:Ljava/util/ArrayList;

    nop

    :goto_34
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_7

    nop

    nop

    :goto_36
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p2, Ljmj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_38
    iget-object v3, p0, Ljne;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_39
    iget-object v3, p0, Ljne;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3a
    iput-boolean v0, p0, Ljne;->h:Z

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Ljmj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3c
    iget-object v4, p0, Ljne;->d:Ljnr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    iput-boolean v0, p0, Ljne;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v3, p0, Ljne;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p1, p0, Ljne;->a:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v3, Ljmj;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v2, p0, Ljne;->a:Ljava/util/ArrayList;

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

    :goto_42
    const v1, 0x7f0801c3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_43
    iget p2, p2, Landroid/graphics/Point;->y:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_6

    nop

    nop

    :goto_46
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v1, p0, Ljne;->a:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_33

    nop

    nop

    :goto_4b
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4c
    const/high16 v5, 0x40800000    # 4.0f

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FII)[F

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v5, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    double-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    sub-long/2addr v3, v5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iget v2, v1, Ljnq;->h:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    iput v0, p0, Ljne;->f:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Ljne;->b:Ljnq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    div-double/2addr v3, v5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    :goto_16
    iget-boolean v1, p0, Ljne;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x9

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

    nop

    :goto_18
    const-wide v5, 0x412e848000000000L    # 1000000.0

    nop

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

    nop

    :goto_19
    iput-boolean v0, p0, Ljne;->g:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    long-to-double v3, v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    iget-wide v5, p0, Ljne;->c:J

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljnq;->e()[F

    move-result-object v1

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
.end method
