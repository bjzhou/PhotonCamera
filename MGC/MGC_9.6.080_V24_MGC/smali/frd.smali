.class public final Lfrd;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public final a:Lfrc;

.field public b:Z

.field public c:I

.field public final d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Lfri;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v2, v0, Lfri;->f:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v1, p0, Lfrd;->e:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v2, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    :goto_8
    invoke-static {v0, v2}, Lfsh;->n(ZLjava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lfrc;->a:Lfri;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    if-nez v2, :cond_4

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

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_f
    const-string v0, "Cannot subscribe twice in a row"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    iget-object v2, v0, Lfri;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lfrd;->a:Lfrc;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lfrd;->invalidateSelf()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v1, v0, Lfri;->f:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    iget-boolean v2, v0, Lfri;->d:Z

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lfrd;->invalidateSelf()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lfri;->b()V

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x6

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
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Lfrd;->e:Z

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

    :goto_25
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v0, p0, Lfrd;->b:Z

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Lfrc;->a:Lfri;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x11

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    :goto_2d
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

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

    :goto_31
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lfri;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_33
    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_34
    iput-boolean v1, v0, Lfri;->d:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    const-string v0, "Cannot subscribe to a cleared frame loader"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_36
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

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lfrd;->a:Lfrc;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v3, v0, Lfri;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m()Landroid/graphics/Paint;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfrd;->i:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

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

    :goto_9
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v1, 0x10

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

    :goto_b
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lfrd;->i:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lfrd;->i:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Lfrc;->a:Lfri;

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

    :goto_2
    iput-boolean v0, p0, Lfrd;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, v0, Lfri;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lfri;->f()V

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfrd;->a:Lfrc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Lfri;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfrc;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lfrd;->g:Z

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

    :goto_5
    iput-object p1, p0, Lfrd;->a:Lfrc;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput v0, p0, Lfrd;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-void

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()Landroid/graphics/Rect;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfrd;->j:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lfrd;->j:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lfrd;->j:Landroid/graphics/Rect;

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfri;->h:Landroid/graphics/Bitmap;

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

    :goto_2
    iget-object p0, p0, Lfrd;->a:Lfrc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfrc;->a:Lfri;

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

.method public final b()Ljava/nio/ByteBuffer;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfjb;->a:Ljava/nio/ByteBuffer;

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

    :goto_2
    iget-object p0, p0, Lfri;->a:Lfix;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lfjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfrd;->a:Lfrc;

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

    :goto_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

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

    nop

    :goto_6
    iget-object p0, p0, Lfrc;->a:Lfri;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfrd;->33f5b80483094659737b73d90f80a8a4m()Landroid/graphics/Paint;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfrd;->getIntrinsicWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lfrd;->b:Z

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

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lfrd;->getIntrinsicHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_e
    const/16 v4, 0x77

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

    :goto_f
    iget-boolean v0, p0, Lfrd;->h:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Lfrd;->h:Z

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_24

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

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Lfrd;->da190e616797844b591057d0190e7728m()Landroid/graphics/Rect;

    move-result-object v1

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

    :goto_17
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v1, Lfrh;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    iget-object v1, v0, Lfri;->e:Lfrh;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lfri;->h:Landroid/graphics/Bitmap;

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Lfrd;->da190e616797844b591057d0190e7728m()Landroid/graphics/Rect;

    move-result-object v3

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

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Lfrc;->a:Lfri;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_24
    iget-object v0, p0, Lfrd;->a:Lfrc;

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

    :goto_25
    invoke-virtual {p0}, Lfrd;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    goto/32 :goto_21

    nop

    nop
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfrd;->a:Lfrc;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfrc;->a:Lfri;

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

    :goto_1
    iget p0, p0, Lfri;->l:I

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

    nop

    :goto_2
    iget-object p0, p0, Lfrd;->a:Lfrc;

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

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfrd;->a:Lfrc;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfrc;->a:Lfri;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lfri;->k:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final isRunning()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lfrd;->e:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lfrd;->h:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lfrd;->33f5b80483094659737b73d90f80a8a4m()Landroid/graphics/Paint;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lfrd;->33f5b80483094659737b73d90f80a8a4m()Landroid/graphics/Paint;

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

    :goto_2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lfrd;->f:Z

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_17

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x14

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

    :goto_e
    iput-boolean p1, p0, Lfrd;->g:Z

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

    :goto_f
    invoke-static {v0, v1}, Lfsh;->n(ZLjava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lfrd;->b:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lfrd;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_16
    invoke-direct {p0}, Lfrd;->23ce148e54b083367f51e25c7971761em()V

    :goto_17
    goto/32 :goto_9

    nop

    nop
.end method

.method public final start()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    iget-boolean v0, p0, Lfrd;->g:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lfrd;->23ce148e54b083367f51e25c7971761em()V

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    iput v0, p0, Lfrd;->c:I

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lfrd;->f:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final stop()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean v0, p0, Lfrd;->f:Z

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

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lfrd;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_0

    nop

    nop
.end method
