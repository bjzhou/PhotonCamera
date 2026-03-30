.class public final Lfqv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lflx;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

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
    iput p2, p0, Lfqv;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/graphics/drawable/AnimatedImageDrawable;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

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
    iput p2, p0, Lfqv;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>([BI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lfqv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    invoke-static {p0}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result p0

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

    :goto_2
    iget v0, p0, Lfqv;->a:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    mul-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v0, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    array-length p0, p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/2addr v0, p0

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

    :goto_c
    const v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_f
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    check-cast p0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    iget-object p0, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    check-cast p0, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result p0

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

    :goto_1c
    goto/32 :goto_17

    nop

    :goto_1d
    iget-object p0, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Lftw;->b(Landroid/graphics/Bitmap$Config;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final b()Ljava/lang/Class;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    const-class p0, Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-class p0, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const-class p0, [B

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lfqv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p0, v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfqv;->b:Ljava/lang/Object;

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

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lfqv;->a:I

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

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    const v1, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    iget v0, p0, Lfqv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    :goto_6
    goto/32 :goto_e

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    iget-object v0, p0, Lfqv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lfqv;->b:Ljava/lang/Object;

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

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-ne v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    goto/32 :goto_c

    nop

    nop
.end method
