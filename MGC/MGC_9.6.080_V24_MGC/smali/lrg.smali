.class public abstract Llrg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final c:Ljava/util/concurrent/Executor;

.field public final d:J

.field protected final e:Llqw;

.field protected final f:Llxa;

.field protected final g:I

.field public final h:Llqo;


# direct methods
.method public constructor <init>(Llqw;Ljava/util/concurrent/Executor;Llqo;ILlxa;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide v0, p0, Llrg;->d:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llrg;->e:Llqw;

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

    :goto_4
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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
    iput-object p2, p0, Llrg;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p4, p0, Llrg;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Llqw;->a:Lprw;

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

    :goto_d
    iput-object p5, p0, Llrg;->f:Llxa;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    iput-object p3, p0, Llrg;->h:Llqo;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_11
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method

.method public static final h(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

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

    nop

    :goto_1
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4
    iget p2, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz p0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p2, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    if-gtz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    :goto_d
    iget p2, v1, Landroid/graphics/Rect;->left:I

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

    :goto_e
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_13
    iget v2, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_1d

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

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

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

    :goto_17
    goto/16 :goto_33

    nop

    nop

    :goto_18
    goto/32 :goto_32

    nop

    nop

    :goto_19
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    if-le v2, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    iget p1, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez p0, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    iget v3, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    iput p2, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    iput p0, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_20
    if-le v2, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    :goto_25
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

    nop

    :goto_26
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_27
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

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

    :goto_2a
    iget p2, v1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2d
    if-lez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

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

    :goto_2f
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_30
    return-object p2

    nop

    nop

    :goto_31
    goto/32 :goto_27

    nop

    nop

    :goto_32
    return-object v1

    nop

    nop

    :goto_33
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v0, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_38
    iget v2, p2, Landroid/graphics/Rect;->top:I

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

    :goto_39
    iput p2, v1, Landroid/graphics/Rect;->left:I

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

    :goto_3a
    invoke-direct {p2, v0, v0, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3b
    if-eqz p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop
.end method

.method public static final i(Lprw;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lprw;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lprw;->b()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0, p0, p1}, Llrg;->h(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

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

    nop

    nop
.end method


# virtual methods
.method public final j(JLlre;I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p2, p3, p4}, Llrf;-><init>(JLlre;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Llrg;->h:Llqo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Llqo;->k:Llqt;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Llrf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v0}, Llqs;->b(Llrf;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
