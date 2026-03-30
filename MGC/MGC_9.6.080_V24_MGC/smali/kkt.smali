.class public final Lkkt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Liyt;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field private final i:Llwx;

.field private final j:Landroid/widget/FrameLayout;

.field private final k:Loyd;

.field private final l:Llxb;

.field private final m:Llad;


# direct methods
.method public constructor <init>(Ljhy;Landroid/content/res/Resources;Llad;Llwx;Loyd;Liyt;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p1, Lghe;->e:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_4
    const p0, 0x7f08047f

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Ljhy;->K:Lghe;

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

    :goto_8
    iput-object p4, p0, Lkkt;->i:Llwx;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lkks;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const p3, 0x7f0b02ca

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

    :goto_b
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    new-instance p3, Landroid/widget/ImageView;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0xb2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    iput-object p3, p0, Lkkt;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Lkkt;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    iput-object p6, p0, Lkkt;->c:Liyt;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p3, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    iput-object p5, p0, Lkkt;->k:Loyd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lkkt;->l:Llxb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    check-cast p3, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    iput v0, p0, Lkkt;->h:I

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

    :goto_19
    invoke-direct {p3, p4}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p3, p0, Lkkt;->m:Llad;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x0

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

    :goto_1d
    iput-object p3, p0, Lkkt;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0}, Lkks;-><init>(Lkkt;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method static bridge synthetic f(Lkkt;)V
    .locals 1

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
    iput-boolean v0, p0, Lkkt;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_3

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
    iget-object p0, p0, Lkkt;->l:Llxb;

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

    :goto_2
    invoke-virtual {v0, p0}, Llwx;->i(Llxb;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lkkt;->c()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkkt;->i:Llwx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lkkt;->j:Landroid/widget/FrameLayout;

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

    :goto_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkkt;->i:Llwx;

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lkkt;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lkkt;->l:Llxb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    :goto_7
    iget-object v0, p0, Lkkt;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lkkt;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

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

    :goto_9
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
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

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lkkt;->b:Landroid/widget/ImageView;

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

    :goto_d
    iget-object v0, p0, Lkkt;->j:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x14

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Llwx;->a(Llxb;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    const/4 v2, 0x0

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

    :goto_12
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Llwx;->i(Llxb;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lkkt;->l:Llxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lkkt;->i:Llwx;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lkkt;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

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

    :goto_5
    goto/32 :goto_9

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

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    const v0, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lkkt;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lkkt;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lkkt;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->a()V

    goto/32 :goto_f

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lkkt;->e:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final d(Z)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

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

    :goto_1
    iput p1, p0, Lkkt;->g:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p1}, Llad;->b()Lpcg;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iput p1, p0, Lkkt;->f:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/lang/Integer;

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

    :goto_7
    iput-boolean p1, p0, Lkkt;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    iget p1, p1, Lpcg;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    iget-object p1, p0, Lkkt;->k:Loyd;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lkkt;->m:Llad;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    iget-object p0, p0, Lkkt;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const v1, 0x11

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

    :goto_6
    iget-object v0, p0, Lkkt;->b:Landroid/widget/ImageView;

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

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    iput p1, p0, Lkkt;->h:I

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

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

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

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop
.end method
