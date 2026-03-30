.class public final Lfah;
.super Lfaa;
.source "PG"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lxm;

.field private final g:Lxm;

.field private final h:Landroid/graphics/RectF;

.field private final i:I

.field private final j:Lfay;

.field private final k:Lfay;

.field private final l:Lfay;

.field private m:Lfbp;

.field private final n:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m([I)[I
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    check-cast p0, [Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    array-length v0, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfah;->m:Lfbp;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    aget-object v0, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lt v2, v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    :goto_b
    goto :goto_13

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_f
    aput v0, p1, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    aput v0, p1, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    new-array p1, v1, [I

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    :goto_14
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lfay;->e()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    array-length v1, p0

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

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    :goto_1c
    goto :goto_15

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    array-length v0, p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

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

    :cond_3
    goto/32 :goto_1a

    nop

    :goto_22
    if-lt v2, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    array-length v0, p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    aget-object v0, p0, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m()I
    .locals 3

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x11

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    int-to-float p0, p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget v1, p0, Lfah;->i:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget v0, v0, Lfay;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    mul-float/2addr v2, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    :goto_e
    iget v2, v2, Lfay;->c:F

    nop

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

    :goto_f
    iget-object v2, p0, Lfah;->l:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    mul-float/2addr v0, v1

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

    :goto_11
    mul-int/2addr v0, p0

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    int-to-float v1, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    iget v2, v2, Lfay;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    mul-int/lit16 v0, v0, 0x20f

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_19
    return v0

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr v2, v1

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

    nop

    :goto_1c
    iget p0, p0, Lfah;->i:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lfah;->j:Lfay;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_1f
    iget-object v0, p0, Lfah;->k:Lfay;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    mul-int/2addr v0, v1

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    const v1, 0x9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop
.end method

.method public constructor <init>(Lezm;Lfdc;Lfcp;)V
    .locals 11

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->c(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    iget-object v9, p3, Lfcp;->h:Ljava/util/List;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p3, Lfcp;->a:Ljava/lang/String;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p1}, Lfdc;->i(Lfay;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lfcb;->a()Lfay;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lfah;->n:I

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

    :goto_d
    invoke-virtual {p2, p1}, Lfdc;->i(Lfay;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lfah;->g:Lxm;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p3, Lfcp;->l:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    invoke-direct/range {v1 .. v10}, Lfaa;-><init>(Lezm;Lfdc;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLfcc;Lfca;Ljava/util/List;Lfca;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Lxm;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    iget v0, p3, Lfcp;->m:I

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

    :goto_15
    iget-object v10, p3, Lfcp;->i:Lfca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v0, 0x42000000    # 32.0f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lezb;->a()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    move-object v3, p2

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

    nop

    :goto_1a
    iput-object v0, p0, Lfah;->h:Landroid/graphics/RectF;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v2, p1

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

    :goto_1c
    iput-object v0, p0, Lfah;->f:Lxm;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->d(I)Landroid/graphics/Paint$Cap;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lfce;->a()Lfay;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lfah;->k:Lfay;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lfah;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_22
    new-instance v0, Lxm;

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

    :goto_23
    const v0, 0x1a

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

    :goto_24
    iget-object p1, p3, Lfcp;->d:Lfce;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_7

    nop

    :goto_26
    iput-boolean v0, p0, Lfah;->e:Z

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

    :goto_27
    iget-boolean v0, p3, Lfcp;->j:Z

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_28
    move-object v1, p0

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

    :goto_29
    iget-object p1, p1, Lezm;->a:Lezb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    invoke-virtual {p2, p1}, Lfdc;->i(Lfay;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lfce;->a()Lfay;

    move-result-object p1

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

    nop

    :goto_2e
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput p1, p0, Lfah;->i:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    iget v6, p3, Lfcp;->g:F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p3, Lfcp;->k:I

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

    nop

    nop

    :goto_33
    iget-object p1, p3, Lfcp;->e:Lfce;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_34
    iput-object p1, p0, Lfah;->l:Lfay;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v8, p3, Lfcp;->f:Lfca;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_37
    iget-object p1, p3, Lfcp;->b:Lfcb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_38
    invoke-direct {v0}, Lxm;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v7, p3, Lfcp;->c:Lfcc;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p1, p0, Lfah;->j:Lfay;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lffl;)V
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lfbp;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iget-object p1, p0, Lfah;->m:Lfbp;

    nop

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

    nop

    nop

    :goto_5
    iget-object p1, p0, Lfah;->a:Lfdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfah;->m:Lfbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

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

    :goto_8
    iget-object v0, p0, Lfah;->a:Lfdc;

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

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Lfdc;->i(Lfay;)V

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, p2}, Lfbp;-><init>(Lffl;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lfah;->m:Lfbp;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1}, Lfdc;->k(Lfay;)V

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0, p1, p2}, Lfaa;->a(Ljava/lang/Object;Lffl;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lfah;->m:Lfbp;

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

    :goto_14
    sget-object v0, Lezr;->L:[Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_5

    nop

    nop
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    float-to-double v7, v2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v4, v5}, Lxm;->d(J)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Lfay;->e()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    int-to-long v4, v2

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

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v4, v5, v2}, Lxm;->g(JLjava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    :goto_6
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v14, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Landroid/graphics/RadialGradient;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_9
    iget v9, v2, Landroid/graphics/PointF;->x:F

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

    :goto_a
    invoke-direct/range {p0 .. p0}, Lfah;->19e596a3e324281407eb5c11093c0152m()I

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_c
    iget v3, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, v0, Lfah;->f:Lxm;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_e
    move-object v14, v6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_11
    new-instance v2, Landroid/graphics/RadialGradient;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_12
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_13
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    nop

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

    :goto_14
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_15
    check-cast v7, [I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iget v9, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_17
    check-cast v3, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    iget-object v3, v0, Lfah;->g:Lxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2, v1, v3}, Lfaa;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v7}, Lfah;->1478a1c7833aac5e360e0ba4b0c0c568m([I)[I

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    double-to-float v11, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    sub-float/2addr v2, v9

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v0, p0

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

    :goto_20
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_21
    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Landroid/graphics/LinearGradient;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, v0, Lfah;->h:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_24
    iget-object v6, v6, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_25
    const v0, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v7}, Lfah;->1478a1c7833aac5e360e0ba4b0c0c568m([I)[I

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_2a

    nop

    :goto_28
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3, v4, v5, v2}, Lxm;->g(JLjava/lang/Object;)V

    :goto_2a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2c
    iget v2, v0, Lfah;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2d
    iget-object v6, v0, Lfah;->j:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v0, Lfah;->k:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v6, v0, Lfah;->j:Lfay;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v7, v6, Liof;->a:Ljava/lang/Object;

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

    :goto_31
    move-object v8, v2

    nop

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

    :goto_32
    iget-object v3, v0, Lfah;->f:Lxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    invoke-super/range {p0 .. p3}, Lfaa;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v3, v0, Lfah;->l:Lfay;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v2, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v11, v3, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    int-to-long v4, v2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_38
    move-object v8, v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v2}, Lfay;->e()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3c
    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3e
    invoke-virtual {v6}, Lfay;->e()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3f
    iget v10, v2, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_40
    iget v10, v2, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v3, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v3, v0, Lfah;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    float-to-double v2, v3

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

    :goto_44
    iget-boolean v2, v0, Lfah;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_45
    check-cast v6, Liof;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_46
    iget v12, v3, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_4e

    nop

    :goto_48
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v2, v3, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4a
    sub-float/2addr v3, v10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3}, Lfay;->e()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v2, Landroid/graphics/LinearGradient;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_1f

    nop

    nop

    :goto_4f
    check-cast v7, [I

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

    nop

    :goto_50
    check-cast v6, Liof;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_51
    check-cast v13, [F

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

    nop

    :goto_52
    invoke-virtual {v3, v4, v5}, Lxm;->d(J)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    :goto_54
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_55
    iget-object v2, v0, Lfah;->k:Lfay;

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

    :goto_56
    iget-object v7, v6, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v6, v6, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2}, Lfay;->e()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_59
    check-cast v2, Landroid/graphics/PointF;

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

    :goto_5a
    iget-object v3, v0, Lfah;->l:Lfay;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5b
    move-object v13, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct/range {p0 .. p0}, Lfah;->19e596a3e324281407eb5c11093c0152m()I

    move-result v2

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_5d
    iget-object v3, v0, Lfah;->g:Lxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v6}, Lfay;->e()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfah;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
