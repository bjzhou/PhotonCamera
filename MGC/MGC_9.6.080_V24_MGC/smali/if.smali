.class final Lif;
.super Ldtw;
.source "PG"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Lih;


# direct methods
.method public constructor <init>(Lih;IILjava/lang/ref/WeakReference;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p4, p0, Lif;->c:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lif;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lif;->d:Lih;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lif;->a:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ldtw;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Typeface;)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lif;->d:Lih;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_a
    iget v0, v0, Lih;->a:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, v0, Lih;->b:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v1, v0, Lih;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x19

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

    :goto_13
    iget v1, p0, Lif;->b:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    iget v0, p0, Lif;->a:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, -0x1

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

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, p0, p1, v0, v2}, Lmw;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;II)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    and-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lif;->c:Ljava/lang/ref/WeakReference;

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

    :goto_1e
    invoke-static {p0, p1, v0}, Lih;->b(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    :goto_1f
    goto/32 :goto_0

    nop

    nop

    :goto_20
    iget v0, v0, Lih;->a:I

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

    :goto_21
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_22
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_24
    move v1, v2

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

    :goto_25
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_28
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2a
    new-instance v1, Lmw;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
