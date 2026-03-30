.class public final Lndk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field private b:F

.field private c:F

.field private d:Z

.field private final e:Lndv;

.field private final f:Landroid/view/WindowManager;

.field private final g:Landroid/content/Context;

.field private h:I


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(ZLnbe;)V
    .locals 4

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    iget-object p2, p0, Lndk;->e:Lndv;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2}, Lndk;->h(Lnbe;)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v0, v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lndk;->g(I)I

    move-result v0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Lndk;->7ecc92917e9c4556cc19f457ddc41af8m(ZLnbe;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lndk;->a()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Lnnr;->b(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lndk;->c:F

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float v1, v1

    nop

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

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_39

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v1, 0x42a00000    # 80.0f

    nop

    nop

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

    :goto_17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    const/high16 v1, 0x40400000    # 3.0f

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v2, v3, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v2, v1, :cond_6

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

    nop

    :cond_6
    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    invoke-static {v0}, Lndk;->g(I)I

    move-result v0

    nop

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lndk;->a()V

    :goto_28
    goto/32 :goto_3d

    nop

    nop

    :goto_29
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean v2, p0, Lndk;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    if-gtz v0, :cond_8

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_8
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    invoke-interface {p2, v0, p1}, Lndv;->s(IZ)Z

    move-result p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_31
    if-nez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Lndk;->b:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_33
    goto :goto_28

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Lndk;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3a
    invoke-static {p2}, Lndk;->h(Lnbe;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3b
    iput-boolean v1, p0, Lndk;->d:Z

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

    :goto_3c
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3f
    if-nez p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v2, p0, Lndk;->f:Landroid/view/WindowManager;

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(ZLnbe;)Z
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lndk;->f:Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne p1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnbh;->d()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-static {p2, p0}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object p0

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

    :goto_6
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lndk;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p2}, Lndk;->h(Lnbe;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

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
.end method

.method public constructor <init>(Lndv;Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lndk;->b:F

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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lndk;->c:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lndk;->e:Lndv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lndk;->a:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-object p2, p0, Lndk;->f:Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lndk;->g:Landroid/content/Context;

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

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private static g(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p0, v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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
.end method

.method private static final h(Lnbe;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lnbe;->a:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

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

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lndv;->h()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lndk;->b:F

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lndk;->h:I

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

    nop

    nop

    :goto_6
    iget-object p0, p0, Lndk;->e:Lndv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lndk;->c:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final b(ZLnbe;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lndk;->d:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lndk;->a:Z

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

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

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
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2}, Lndk;->7ecc92917e9c4556cc19f457ddc41af8m(ZLnbe;)Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Lndk;->23ce148e54b083367f51e25c7971761em(ZLnbe;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop
.end method

.method public final c(F)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    iput p1, p0, Lndk;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v0, 0x447a0000    # 1000.0f

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget-object v0, p0, Lndk;->f:Landroid/view/WindowManager;

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
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    :goto_10
    neg-float p1, p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    div-float/2addr p1, v0

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final d(FZLnbe;)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

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

    :goto_2
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Lndk;->b:F

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

    nop

    :goto_4
    invoke-interface {v0}, Lndv;->n()Z

    move-result v0

    nop

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

    :goto_5
    neg-float p1, p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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

    :goto_8
    iget v2, p0, Lndk;->b:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmpl-float v0, v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lndv;->m()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v0, 0x42a00000    # 80.0f

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ltz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v2, v1, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr v2, p1

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

    :goto_16
    goto :goto_d

    nop

    nop

    :goto_17
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p2, p3}, Lndk;->7ecc92917e9c4556cc19f457ddc41af8m(ZLnbe;)Z

    move-result v0

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

    :goto_19
    const v0, 0x5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    iget-boolean v1, p0, Lndk;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    iput v2, p0, Lndk;->b:F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    if-gtz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr p1, v1

    nop

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

    :goto_1f
    iget-object v2, p0, Lndk;->f:Landroid/view/WindowManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_21
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    :goto_22
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_38

    nop

    :goto_28
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    const/4 p1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    cmpl-float p1, p1, v0

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

    :goto_2b
    if-le p1, v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput p1, p0, Lndk;->h:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2e
    goto/32 :goto_10

    nop

    nop

    :goto_2f
    goto/32 :goto_18

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_31
    cmpg-float p1, v2, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lndk;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_9

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2e

    nop

    :goto_34
    if-eqz p1, :cond_a

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lndk;->e:Lndv;

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

    :goto_36
    iget-object p1, p0, Lndk;->e:Lndv;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_37
    invoke-direct {p0, p2, p3}, Lndk;->23ce148e54b083367f51e25c7971761em(ZLnbe;)V

    :goto_38
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget p1, p0, Lndk;->h:I

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

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_b
    :goto_3c
    goto/32 :goto_3

    nop

    nop

    nop
.end method
