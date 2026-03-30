.class final Lgo;
.super Lgf;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lgi;


# instance fields
.field final a:Ljx;

.field final b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field c:Landroid/view/View;

.field d:Landroid/view/ViewTreeObserver;

.field private final e:Landroid/content/Context;

.field private final f:Lfx;

.field private final h:Lfu;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field private o:Lgh;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfx;Landroid/view/View;IZ)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgo;->a:Ljx;

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

    :goto_1
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    iput-object v1, p0, Lgo;->h:Lfu;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    new-instance v1, Lfu;

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

    :goto_4
    invoke-direct {p3, p1, p4}, Ljx;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iput-boolean p5, p0, Lgo;->i:Z

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

    nop

    :goto_7
    const v3, 0x7f0e0014

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, v2}, Lfp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lgf;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lgn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Lgo;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    iput-object p2, p0, Lgo;->f:Lfx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, p0, p1}, Lfx;->h(Lgi;Landroid/content/Context;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput p5, p0, Lgo;->j:I

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

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0, v1}, Lgn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    iput p4, p0, Lgo;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x7f070017

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

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_1c
    invoke-direct {v1, p2, v0, p5, v3}, Lfu;-><init>(Lfx;Landroid/view/LayoutInflater;ZI)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lgo;->e:Landroid/content/Context;

    nop

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

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p3, p0, Lgo;->n:Landroid/view/View;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p3, Ljx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_22
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    div-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_25
    iput-object v0, p0, Lgo;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    nop

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

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Lgo;->l:Landroid/view/View$OnAttachStateChangeListener;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lfp;

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
.end method


# virtual methods
.method public final bU()Landroid/widget/ListView;
    .locals 0

    goto/32 :goto_2

    nop

    nop

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
    iget-object p0, p0, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgo;->a:Ljx;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(Lfx;Z)V
    .locals 1

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
    iget-object v0, p0, Lgo;->f:Lfx;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgo;->o:Lgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1, p2}, Lgh;->a(Lfx;Z)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lgo;->k()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lgh;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Lgo;->o:Lgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lgp;)Z
    .locals 8

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Lgg;->e(Lgh;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v1}, Lfx;->i(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Lju;->b()I

    move-result v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    :goto_5
    iget-object v4, p0, Lgo;->n:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    and-int/lit8 v4, v4, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    invoke-virtual {v0, v2}, Lgg;->d(Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_d
    iget v3, v2, Lju;->g:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lgg;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v6, p0, Lgo;->i:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    iput-object v2, p0, Lgo;->m:Landroid/widget/PopupWindow$OnDismissListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_13
    iget-object v2, p0, Lgo;->a:Ljx;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_15
    invoke-virtual {v0, v3, v2, v5, v5}, Lgg;->f(IIZZ)V

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {v2 .. v7}, Lgg;-><init>(Landroid/content/Context;Lfx;Landroid/view/View;ZI)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Lgo;->e:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, p1}, Lgh;->b(Lfx;)Z

    :goto_1a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v2, v0, Lgg;->c:Landroid/widget/PopupWindow$OnDismissListener;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lgo;->o:Lgh;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_21
    iget v7, p0, Lgo;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v4, p0, Lgo;->s:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_23
    move-object v4, p1

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

    nop

    nop

    :goto_24
    iget-object v2, p0, Lgo;->o:Lgh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Lgo;->m:Landroid/widget/PopupWindow$OnDismissListener;

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

    :goto_26
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    iget-object v5, p0, Lgo;->c:Landroid/view/View;

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

    :goto_29
    if-eq v4, v5, :cond_3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/2addr v3, v4

    nop

    nop

    :goto_2c
    goto/32 :goto_2d

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lgg;->g()Z

    move-result v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    :goto_2f
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    return v5

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x16

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Lgf;->w(Lfx;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_34
    iget-object v4, v0, Lgg;->a:Landroid/view/View;

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

    :goto_35
    goto/16 :goto_16

    nop

    nop

    :goto_36
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v5, p0, Lgo;->n:Landroid/view/View;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_38
    move-object v2, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p0, Lgo;->f:Lfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Lfx;->hasVisibleItems()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgo;->h:Lfu;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfu;->notifyDataSetChanged()V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lgo;->q:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Lfx;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final k()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lgo;->u()Z

    move-result v0

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

    :goto_1
    iget-object p0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lju;->k()V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method

.method public final l(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgo;->n:Landroid/view/View;

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
    return-void

    nop

    nop

    nop
.end method

.method public final m(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgo;->h:Lfu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lfu;->b:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final n(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Lgo;->s:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final o(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput p1, p0, Lju;->g:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final onDismiss()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lfx;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

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

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgo;->m:Landroid/widget/PopupWindow$OnDismissListener;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgo;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget-object v0, p0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgo;->f:Lfx;

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

    :goto_e
    iput-boolean v0, p0, Lgo;->p:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    if-nez p0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_13
    const v0, 0x2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_15
    iget-object v0, p0, Lgo;->c:Landroid/view/View;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

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

    nop

    nop

    :goto_17
    iget-object v1, p0, Lgo;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lgo;->d:Landroid/view/ViewTreeObserver;

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

    :goto_19
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lgo;->l:Landroid/view/View$OnAttachStateChangeListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-eq p2, p1, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/16 p1, 0x52

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lgo;->k()V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return p3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final p(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iput-object p1, p0, Lgo;->m:Landroid/widget/PopupWindow$OnDismissListener;

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

.method public final q(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lgo;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final r(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lju;->j(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final s()V
    .locals 5

    goto/32 :goto_4f

    nop

    nop

    :goto_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1, v2}, Lgo;->x(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v2, 0x1020016

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    iput-object p0, v0, Lju;->m:Landroid/widget/AdapterView$OnItemClickListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lgo;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    const v2, 0x7f0e0013

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_e
    const-string v0, "StandardMenuPopup cannot be used without an anchor"

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lju;->t(Landroid/graphics/Rect;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_11
    iget-object v4, v4, Lfx;->e:Ljava/lang/CharSequence;

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

    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_13
    iget-object v4, p0, Lgo;->f:Lfx;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Lgo;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_16
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lgo;->u()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lju;->e:Ljb;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lgo;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

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

    :goto_1e
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_3
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Lju;->r(I)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lgo;->h:Lfu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v0, v1, Lju;->j:I

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

    :goto_2a
    iget-boolean v0, p0, Lgo;->q:Z

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

    :goto_2b
    invoke-virtual {p0}, Lju;->s()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lgo;->c:Landroid/view/View;

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

    :goto_2d
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lgo;->a:Ljx;

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

    :goto_2f
    iget-object v0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_32
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :goto_34
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v0, v1, Lju;->l:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lgo;->n:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_37
    iget-object v0, p0, Lgo;->a:Ljx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, p0, Lgo;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lgo;->h:Lfu;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3b
    iput-boolean v0, p0, Lgo;->q:Z

    nop

    nop

    :goto_3c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3d
    iget-boolean v1, p0, Lgo;->t:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Lju;->s()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_5
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lgo;->l:Landroid/view/View$OnAttachStateChangeListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_44
    iget v2, p0, Lgo;->j:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lgo;->a:Ljx;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_46
    iput-object v0, p0, Lgo;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Lju;->x()V

    goto/32 :goto_45

    nop

    nop

    :goto_49
    iget-object v0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v1, p0, Lgf;->g:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4b
    iput v0, p0, Lgo;->r:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v1, Landroid/widget/FrameLayout;

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

    nop

    :goto_4d
    iget-object v1, p0, Lgo;->f:Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4e
    iget-object v1, p0, Lgo;->e:Landroid/content/Context;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4f
    const v0, 0xa

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, v1, Lfx;->e:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0, v1}, Lju;->e(Landroid/widget/ListAdapter;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Lgo;->a:Ljx;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Lju;->y()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_57
    iget-object v1, p0, Lgo;->e:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_58
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_8

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_8
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Lgo;->a:Ljx;

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

    :goto_5b
    iput-object v2, p0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lgo;->a:Ljx;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, p0}, Lju;->v(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop
.end method

.method public final u()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgo;->a:Ljx;

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

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lju;->u()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_9
    iget-boolean v0, p0, Lgo;->p:Z

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

    nop
.end method
