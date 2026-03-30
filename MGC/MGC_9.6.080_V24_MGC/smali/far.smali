.class public final Lfar;
.super Lfaa;
.source "PG"


# instance fields
.field private final d:Lfdc;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lfay;

.field private h:Lfay;


# direct methods
.method public constructor <init>(Lezm;Lfdc;Lfcz;)V
    .locals 11

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->c(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v7, p3, Lfcz;->e:Lfcc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v6, p3, Lfcz;->g:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v8, p3, Lfcz;->f:Lfca;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lfar;->d:Lfdc;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    iget-object p1, p3, Lfcz;->a:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    iget v0, p3, Lfcz;->i:I

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

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lfar;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lfbz;->a()Lfay;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Lfar;->f:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean p1, p3, Lfcz;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v9, p3, Lfcz;->c:Ljava/util/List;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2, p1}, Lfdc;->i(Lfay;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_15
    iget-object p1, p3, Lfcz;->d:Lfbz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p3, Lfcz;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    invoke-static {v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;->d(I)Landroid/graphics/Paint$Cap;

    move-result-object v4

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    iput-object p1, p0, Lfar;->g:Lfay;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    iget-object v10, p3, Lfcz;->b:Lfca;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    invoke-direct/range {v1 .. v10}, Lfaa;-><init>(Lezm;Lfdc;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLfcc;Lfca;Ljava/util/List;Lfca;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v1, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lffl;)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfar;->h:Lfay;

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

    :goto_1
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_10

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

    :goto_2
    new-instance p1, Lfbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_c

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
    goto/32 :goto_2

    nop

    nop

    :goto_6
    sget-object v0, Lezr;->K:Landroid/graphics/ColorFilter;

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lfay;->d:Lffl;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lezr;->b:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p2}, Lfbp;-><init>(Lffl;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    invoke-super {p0, p1, p2}, Lfaa;->a(Ljava/lang/Object;Lffl;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lfar;->h:Lfay;

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_12
    iget-object p0, p0, Lfar;->g:Lfay;

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

    :goto_13
    iput-object p1, p0, Lfar;->h:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lfar;->g:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lfar;->d:Lfdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lfar;->d:Lfdc;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1}, Lfdc;->k(Lfay;)V

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p0}, Lfdc;->i(Lfay;)V

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfar;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    iget-object v1, p0, Lfar;->g:Lfay;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    goto/32 :goto_15

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
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lfar;->b:Landroid/graphics/Paint;

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

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lfar;->h:Lfay;

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

    :goto_f
    check-cast v0, Landroid/graphics/ColorFilter;

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

    nop

    :goto_10
    invoke-super {p0, p1, p2, p3}, Lfaa;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_11
    check-cast v1, Lfaz;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lfaz;->k()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, p0, Lfar;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xb

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

    :goto_18
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_4

    nop
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfar;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

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

    nop
.end method
