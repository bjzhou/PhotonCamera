.class final Lbib;
.super Landroid/graphics/drawable/RippleDrawable;
.source "PG"


# instance fields
.field public a:Lcel;

.field public b:Ljava/lang/Integer;

.field private final c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto :goto_9

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const/high16 v0, -0x1000000

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lbib;->c:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, -0x1

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

    :goto_f
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    const v0, 0xf

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const v1, 0xa

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop
.end method


# virtual methods
.method public final getDirtyBounds()Landroid/graphics/Rect;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

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

    :goto_1
    invoke-super {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v1, p0, Lbib;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    return-object v0

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Lbib;->d:Z

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lbib;->c:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop
.end method

.method public final isProjected()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-boolean p0, p0, Lbib;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
