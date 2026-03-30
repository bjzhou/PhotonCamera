.class public final Ldvn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Ldvn;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ldvn;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    or-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
.end method

.method public final b(II)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    return-void

    nop

    :goto_2
    if-eq p2, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ldvn;->b:I

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

    nop

    nop

    :goto_4
    iput p1, p0, Ldvn;->a:I

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop
.end method

.method public final c(I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_d

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_f

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

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v1, p0, Ldvn;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Ldvn;->a:I

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

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
.end method

.method public final d(Llb;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p1, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput v0, p0, Ldvn;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Ldvn;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method
