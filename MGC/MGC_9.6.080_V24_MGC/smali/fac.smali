.class public final Lfac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfad;
.implements Lfal;
.implements Lfat;
.implements Lfbw;


# instance fields
.field public final a:Ljava/util/List;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/RectF;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lezm;

.field private h:Ljava/util/List;

.field private i:Lfbo;


# direct methods
.method public constructor <init>(Lezm;Lfdc;Lfcx;Lezb;)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v3, p3, Lfcx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_9
    invoke-direct/range {v0 .. v6}, Lfac;-><init>(Lezm;Lfdc;Ljava/lang/String;ZLjava/util/List;Lfcj;)V

    goto/32 :goto_18

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v6, Lfcn;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    if-lt v2, v6, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iget-object p3, p3, Lfcx;->b:Ljava/util/List;

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    :goto_16
    iget-object v0, p3, Lfcx;->b:Ljava/util/List;

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

    :goto_17
    if-lt v1, p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v6, p3

    nop

    nop

    :goto_1b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_1b

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_b

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

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    nop

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

    :goto_20
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

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

    :goto_21
    check-cast p4, Lfcn;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean v4, p3, Lfcx;->c:Z

    nop

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

    :goto_23
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v6, p1, p4, p2}, Lfcn;->a(Lezm;Lezb;Lfdc;)Lfab;

    move-result-object v6

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

    :goto_26
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p4, Lfcj;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    move v2, v1

    nop

    :goto_2b
    goto/32 :goto_12

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2f
    const/4 p3, 0x0

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

    :goto_30
    goto/32 :goto_2d

    nop

    nop

    :goto_31
    instance-of v0, p4, Lfcj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_33
    move-object v6, p4

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

    nop
.end method

.method public constructor <init>(Lezm;Lfdc;Ljava/lang/String;ZLjava/util/List;Lfcj;)V
    .locals 1

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_21

    nop

    nop

    :goto_3
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    check-cast p2, Lfai;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_19

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0}, Lfbo;->d(Lfat;)V

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p4, p0, Lfac;->f:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

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

    :goto_c
    iput-object p1, p0, Lfac;->g:Lezm;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    instance-of p3, p2, Lfai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e
    if-gez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lezy;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lfac;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    iput-object v0, p0, Lfac;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lfac;->i:Lfbo;

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

    :goto_14
    iput-object v0, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    if-gez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2}, Lfbo;->c(Lfdc;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p2, Lfab;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Lezy;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p2, Lfai;

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

    :goto_23
    if-nez p6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1, p6}, Lfbo;-><init>(Lfcj;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_28
    invoke-interface {p5, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Lfbo;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p2, p3}, Lfai;->h(Ljava/util/ListIterator;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lfac;->i:Lfbo;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2d
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p3, p0, Lfac;->e:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    new-instance v0, Landroid/graphics/Matrix;

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

    :goto_31
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_30

    nop

    nop

    :goto_32
    if-nez p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lffl;)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    new-array v0, v0, [Ljava/lang/Object;

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

    :goto_4
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfac;->i:Lfbo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    const/16 v2, 0x180

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    aput-object p2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    aput-object p1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr p2, p3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Lfac;->i:Lfbo;

    nop

    nop

    goto/32 :goto_22

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

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/high16 v0, 0x42c80000    # 100.0f

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

    :goto_5
    if-gez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    div-float/2addr p2, v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Lfay;->e()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p2, p2, -0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, p1, v1, p3}, Lfad;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_13

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    :goto_11
    instance-of v1, v0, Lfad;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    goto :goto_e

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16
    iget-object p2, p0, Lfac;->i:Lfbo;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    iget-object p2, p0, Lfac;->a:Ljava/util/List;

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

    :goto_18
    goto :goto_10

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    if-eqz p2, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 p3, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    iget-object p2, p2, Lfbo;->e:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-float/2addr p2, p3

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

    :goto_25
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p2, Ljava/lang/Integer;

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

    :goto_27
    iget-object v1, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    div-float/2addr p2, p3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_5

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    :goto_2a
    add-int v0, v0, v1

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

    nop

    :goto_2b
    float-to-int p3, p2

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/32 :goto_16

    nop

    nop

    :goto_30
    const/16 p2, 0x64

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

    :goto_31
    const v0, 0xc

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_34
    check-cast v0, Lfad;

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

    :goto_35
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean v0, p0, Lfac;->f:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-interface {v0, v1, v2, p3}, Lfad;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_23

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-nez p2, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    if-gez p2, :cond_1

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lfac;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object p2

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

    :goto_d
    goto/32 :goto_15

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    iget-object v2, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    iget-object v0, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lfad;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lfac;->d:Landroid/graphics/RectF;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lfac;->b:Landroid/graphics/Matrix;

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

    :goto_19
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lfab;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 p2, p2, -0x1

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
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_14

    nop

    :goto_21
    iget-object p2, p0, Lfac;->d:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    instance-of v1, v0, Lfad;

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

    :goto_25
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto/32 :goto_4

    nop

    nop

    :goto_26
    iget-object p2, p0, Lfac;->i:Lfbo;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfac;->g:Lezm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final e(Lfbv;ILjava/util/List;Lfbv;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfac;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    check-cast v1, Lfbw;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

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

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, p2}, Lfbv;->a(Ljava/lang/String;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v2, v1, Lfbw;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    :goto_d
    invoke-virtual {p1, v0, p2}, Lfbv;->e(Ljava/lang/String;I)Z

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lfac;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0, p2}, Lfbv;->f(Ljava/lang/String;I)Z

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lfac;->a:Ljava/util/List;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p4, p0}, Lfbv;->c(Lfbw;)Lfbv;

    move-result-object v0

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

    :goto_13
    const v1, 0x17

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1, p1, p2, p3, p4}, Lfbw;->e(Lfbv;ILjava/util/List;Lfbv;)V

    :goto_15
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    const-string v1, "__container"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_19
    if-nez v2, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_1b
    iget-object v0, p0, Lfac;->e:Ljava/lang/String;

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

    :goto_1c
    invoke-virtual {p1, v0, p2}, Lfbv;->d(Ljava/lang/String;I)Z

    move-result v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lfac;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p4, v0}, Lfbv;->b(Ljava/lang/String;)Lfbv;

    move-result-object p4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    :goto_24
    iget-object v0, p0, Lfac;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_25
    add-int/2addr p2, v0

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

    :goto_26
    iget-object v1, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_5

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Lfab;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lfac;->e:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lfac;->e:Ljava/lang/String;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v0, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    goto/32 :goto_1b

    nop

    nop

    :goto_31
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_11

    nop

    nop
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2, v0, v1}, Lfab;->f(Ljava/util/List;Ljava/util/List;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_9
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p2, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    goto/32 :goto_19

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p2, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lfac;->a:Ljava/util/List;

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

    :goto_14
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    add-int/2addr v1, p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    check-cast p2, Lfab;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    const v0, 0x17

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

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

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method final h()Landroid/graphics/Matrix;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfac;->i:Lfbo;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()Landroid/graphics/Path;
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_18

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    check-cast v1, Lfal;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    :goto_8
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    :goto_9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    iget-object v0, p0, Lfac;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lfac;->f:Z

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lfac;->a:Ljava/util/List;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_14
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v1, Lfab;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    const v1, 0xc

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lfac;->i:Lfbo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lfac;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    iget-object v3, p0, Lfac;->b:Landroid/graphics/Matrix;

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

    :goto_1e
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    instance-of v2, v1, Lfal;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    :goto_23
    iget-object v1, p0, Lfac;->a:Ljava/util/List;

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

    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object v0

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

    :goto_27
    iget-object v2, p0, Lfac;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lfac;->b:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v1}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method final j()Ljava/util/List;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Lfal;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xc

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

    :goto_c
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

    :goto_d
    iput-object v0, p0, Lfac;->h:Ljava/util/List;

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

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_13
    check-cast v1, Lfab;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    :goto_15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_16
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    iget-object v2, p0, Lfac;->h:Ljava/util/List;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lfac;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lfac;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lfac;->a:Ljava/util/List;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lfac;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    instance-of v2, v1, Lfal;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
