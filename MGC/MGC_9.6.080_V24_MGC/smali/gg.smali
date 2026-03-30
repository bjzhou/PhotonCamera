.class public Lgg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field public c:Landroid/widget/PopupWindow$OnDismissListener;

.field private final d:Landroid/content/Context;

.field private final e:Lfx;

.field private final f:Z

.field private final g:I

.field private h:Z

.field private i:Lgh;

.field private j:Lgf;

.field private final k:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfx;Landroid/view/View;Z)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    move-object v1, p1

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

    :goto_4
    move v4, p4

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

    :goto_5
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v0 .. v5}, Lgg;-><init>(Landroid/content/Context;Lfx;Landroid/view/View;ZI)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v5, 0x7f040027

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

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lfx;Landroid/view/View;ZI)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iput p5, p0, Lgg;->g:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iput-boolean p4, p0, Lgg;->f:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lgg;->a:Landroid/view/View;

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
    iput v0, p0, Lgg;->b:I

    nop

    nop

    nop

    goto/32 :goto_14

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

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, v1}, Lnih;-><init>(Lgg;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x800003

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

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    const v0, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_10
    iput-object v0, p0, Lgg;->k:Landroid/widget/PopupWindow$OnDismissListener;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p2, p0, Lgg;->e:Lfx;

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

    :goto_12
    iput-object p1, p0, Lgg;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const v1, 0x9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lnih;

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

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lgf;
    .locals 11

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgg;->j:Lgf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lgg;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto/32 :goto_39

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Lgf;->d(Lgh;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lgg;->d:Landroid/content/Context;

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

    :goto_b
    iget v0, p0, Lgg;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const v2, 0x7f070016

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

    :goto_d
    invoke-virtual {v1, v0}, Lgf;->m(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Lgf;->l(Landroid/view/View;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lfr;

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

    :goto_11
    iget-boolean v10, p0, Lgg;->f:Z

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_12
    iget-object v0, p0, Lgg;->k:Landroid/widget/PopupWindow$OnDismissListener;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "window"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v8, p0, Lgg;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct/range {v5 .. v10}, Lgo;-><init>(Landroid/content/Context;Lfx;Landroid/view/View;IZ)V

    :goto_16
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Lgf;->n(I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lgg;->i:Lgh;

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

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    new-instance v1, Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lgg;->j:Lgf;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v0}, Lgf;->j(Lfx;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    new-instance v1, Lgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    if-ge v0, v1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_22
    iget-object v0, p0, Lgg;->a:Landroid/view/View;

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

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_24
    const v1, 0x7

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

    :goto_25
    iget-boolean v4, p0, Lgg;->f:Z

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lgg;->h:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, p0, Lgg;->j:Lgf;

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lgg;->d:Landroid/content/Context;

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

    :goto_2d
    move-object v5, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_30
    iget-object v7, p0, Lgg;->e:Lfx;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v1, v0, v2, v3, v4}, Lfr;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v0}, Lgf;->p(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_33
    iget v3, p0, Lgg;->g:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lgg;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_35
    iget-object v6, p0, Lgg;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lgg;->e:Lfx;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v0, v1, Landroid/graphics/Point;->x:I

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

    :goto_3a
    check-cast v0, Landroid/view/WindowManager;

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

    :goto_3b
    iget v9, p0, Lgg;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lgg;->g()Z

    move-result v0

    nop

    nop

    nop

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
    iget-object p0, p0, Lgg;->j:Lgf;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lgf;->k()V

    :goto_5
    goto/32 :goto_1

    nop

    nop
.end method

.method public c()V
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

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lgg;->j:Lgf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lgg;->c:Landroid/widget/PopupWindow$OnDismissListener;

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

    :goto_5
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgg;->j:Lgf;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lgf;->m(Z)V

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lgg;->h:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final e(Lgh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgg;->j:Lgf;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgg;->i:Lgh;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lgf;->d(Lgh;)V

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(IIZZ)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-direct {v1, p1, p3, p4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lgg;->a()Lgf;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-int/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgg;->d:Landroid/content/Context;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/4 p4, 0x5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-eq p3, p4, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p2}, Lgf;->r(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Lgf;->o(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    :goto_a
    goto/32 :goto_10

    nop

    :goto_b
    sub-int/2addr p1, p3

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_e
    const v1, 0x8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_29

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget p3, p0, Lgg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    float-to-int p0, p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    and-int/lit8 p3, p3, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int p4, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-float/2addr p0, p3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

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

    :goto_19
    iget-object p3, p0, Lgg;->a:Landroid/view/View;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lgf;->s()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    const/high16 p3, 0x42400000    # 48.0f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    div-float/2addr p0, p3

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

    :goto_20
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p4, p0, Lgg;->a:Landroid/view/View;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 p3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Lgf;->g:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, p4}, Lgf;->q(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    add-int/2addr p2, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    add-int v0, v0, v1

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

    :goto_28
    return-void

    nop

    :goto_29
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2b
    sub-int p3, p2, p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop
.end method

.method public final g()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgg;->j:Lgf;

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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
    invoke-virtual {p0}, Lgf;->u()Z

    move-result p0

    nop

    goto/32 :goto_8

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop
.end method

.method public final h()Z
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    invoke-virtual {p0, v2, v2, v2, v2}, Lgg;->f(IIZZ)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

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

    :goto_5
    const v0, 0x20

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgg;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lgg;->g()Z

    move-result v0

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
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
