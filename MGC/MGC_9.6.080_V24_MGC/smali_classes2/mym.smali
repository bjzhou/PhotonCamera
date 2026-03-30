.class public Lmym;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmyj;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

.field private final c:Landroid/app/Activity;

.field private final d:Lmyj;

.field private final e:Lrtm;

.field private f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/content/res/Resources;

.field private final i:[I

.field private j:I

.field private final k:Z

.field private final l:I

.field private final m:Llyv;


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Ldso;Landroid/view/View;)V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    :goto_0
    iget-object v1, p0, Lmym;->i:[I

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

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7f0b00ac

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmym;->i:[I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    iget-object v0, p0, Lmym;->c:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    sub-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    const v1, 0x7f07039d

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2, v0}, Lnzk;->aZ(Ldso;Landroid/view/View;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    aget v0, v0, v1

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_a

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_19
    sub-int/2addr v0, v1

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

    :goto_1a
    const v2, 0x7f070892

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

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lmym;->b:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const-string v0, "mym"

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
.end method

.method public constructor <init>(Landroid/app/Activity;Lmyj;Llyv;Lhoh;Lrtm;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lhmz;->p:Lhmn;

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

    :goto_3
    invoke-virtual {p4, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lmym;->e:Lrtm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lhmz;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iput p1, p0, Lmym;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iput-object p2, p0, Lmym;->d:Lmyj;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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
    invoke-virtual {p4, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lmym;->k:Z

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    iput-object p1, p0, Lmym;->c:Landroid/app/Activity;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p3, p0, Lmym;->m:Llyv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lmym;->i:[I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(Landroid/view/ViewGroup;I)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

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

    :goto_2
    iget-object p1, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_c

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    iget v0, p0, Lmym;->j:I

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

    :goto_9
    iget-object v0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

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

    :goto_c
    iget-object p1, p0, Lmym;->g:Landroid/view/ViewGroup;

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

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

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
    iget-object v0, p0, Lmym;->g:Landroid/view/ViewGroup;

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

    :goto_10
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

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

    :goto_12
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    or-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Lmym;->j:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Lpci;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    new-instance p0, Lixa;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lixa;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p1, 0x8

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

    nop

    :goto_4
    new-instance v0, Lmqs;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_7
    const v0, 0x1f

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

    :goto_8
    const/4 v0, 0x0

    nop

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

    :goto_9
    iget-object p0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v1, 0xc8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lmym;->k:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    iget-object v1, p1, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    invoke-interface {p0, p1}, Lmyj;->b(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iget-object p1, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p0, v1}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_29

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_1e
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

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

    :goto_20
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lmym;->d:Lmyj;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setAlpha(F)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setVisibility(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
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

    :goto_1
    invoke-interface {p0}, Lmyj;->c()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmym;->d:Lmyj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_1
    iget-object p0, p0, Lmym;->d:Lmyj;

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
    invoke-interface {p0}, Lmyj;->d()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e(Lmyi;)V
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
.end method

.method public final synthetic f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final g()V
    .locals 16

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_2
    check-cast v4, Lscz;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v4, 0x7f0b02c9

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_af

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v3, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v4, 0xe

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_9
    invoke-virtual {v13, v14}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v14, 0x7f07039d

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v5, 0x205

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_13
    iget-object v1, v0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_bb

    nop

    nop

    :goto_15
    new-instance v3, Ldso;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1}, Lmyj;->g()V

    :goto_17
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_0
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v14, v14, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v3, v0, Lmym;->k:Z

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lmym;->g:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_1c
    const v0, 0x15

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aget v13, v13, v12

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

    :goto_21
    if-nez v1, :cond_1

    nop

    goto/32 :goto_b9

    nop

    :cond_1
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v13}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_23
    const v3, 0x7f0b0057

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->d:Ljava/lang/Runnable;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_af

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v3, v1}, Lmym;->1a36313b7ed15ba14e0acb4da569b8b7m(Ldso;Landroid/view/View;)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v1, v11, :cond_2

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :cond_2
    goto/32 :goto_c9

    nop

    nop

    :goto_29
    const-string v2, "Orientation can not be determined"

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v4, :cond_3

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, v0, Lmym;->c:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v13, v0, Lmym;->c:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_31
    aget v13, v13, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v4, v0, Lmym;->c:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_33
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    div-int/2addr v4, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_35
    sub-int/2addr v13, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_36
    invoke-static {v1, v3}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v1

    nop

    :goto_37
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_14

    nop

    :goto_3b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    div-int/2addr v4, v11

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v14, v0, Lmym;->e:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_3e
    check-cast v13, Ljava/lang/Integer;

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

    nop

    :goto_3f
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_4
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v4, v13}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-ne v1, v12, :cond_5

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->bringToFront()V

    goto/32 :goto_15

    nop

    nop

    :goto_43
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/16 v1, 0x50

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4, v14}, Landroid/view/View;->getLocationInWindow([I)V

    goto/32 :goto_5e

    nop

    nop

    :goto_47
    const-wide/16 v7, 0xc8

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

    nop

    :goto_48
    goto/16 :goto_af

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual/range {p0 .. p0}, Lmym;->l()V

    goto/32 :goto_a4

    nop

    nop

    :goto_4b
    goto/16 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v13}, Lkav;->G(I)I

    move-result v13

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v13, v0, Lmym;->i:[I

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v3, v3, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v4, v0, Lmym;->m:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_51
    const/16 v13, 0x12a9

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_54
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v3, Lnbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v3, v0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_57
    iget-object v1, v1, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->a:Landroid/view/animation/Animation;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v3, v3, Lnbr;->i:Lnbe;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-wide/16 v9, 0x0

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

    nop

    nop

    :goto_5a
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_5b
    if-ne v0, v12, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_6
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v14, Lnbs;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5d
    iget-object v4, v0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v13, v0, Lmym;->i:[I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v3, v0, Lmym;->e:Lrtm;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_60
    if-eqz v3, :cond_7

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :cond_7
    :goto_61
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_63
    if-ne v13, v12, :cond_8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_8
    goto/32 :goto_d1

    nop

    nop

    :goto_64
    return-void

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v4, v13}, Landroid/view/View;->getLocationInWindow([I)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v3, v2}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v3}, Lnzk;->aQ(Lnbe;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v1, v2}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v1

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-boolean v1, v0, Lmym;->k:Z

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6c
    iget-boolean v1, v0, Lmym;->k:Z

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

    nop

    nop

    :goto_6d
    iget-object v1, v0, Lmym;->d:Lmyj;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v4, v0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_6f
    return-void

    nop

    :goto_70
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0, v9, v10}, Lmym;->i(J)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {v14}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual/range {p0 .. p0}, Lmym;->l()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_74
    sub-int/2addr v13, v4

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_75
    new-instance v3, Lmqs;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_b

    nop

    nop

    :goto_79
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0, v9, v10}, Lmym;->i(J)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_81
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v1, :cond_a

    nop

    goto/32 :goto_3b

    nop

    :cond_a
    goto/32 :goto_e3

    nop

    nop

    :goto_83
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_b
    goto/32 :goto_78

    nop

    :goto_84
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_86
    iget-object v2, v0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_87
    sget-object v13, Llyr;->z:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_17

    nop

    nop

    :goto_89
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v3, v1, v13}, Lnzk;->aZ(Ldso;Landroid/view/View;I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v1}, Lnbh;->d()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_8c
    iget-object v3, v0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_8d
    iget-object v2, v0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_8f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_90
    const-string v13, "Invalid aspect ratio detected!"

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_92
    if-nez v14, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_c
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_93
    add-int/lit8 v13, v13, -0x1

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_94
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int/2addr v13, v4

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_96
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_97
    add-int/2addr v13, v4

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-direct {v0, v3, v1}, Lmym;->1a36313b7ed15ba14e0acb4da569b8b7m(Ldso;Landroid/view/View;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v1, v1, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b:Landroid/view/animation/Animation;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_9a
    if-nez v1, :cond_d

    nop

    goto/32 :goto_39

    nop

    :cond_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v3, :cond_e

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

    :cond_e
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_9c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_73

    nop

    nop

    :goto_9e
    iget-object v14, v14, Lnbr;->i:Lnbe;

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

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

    :goto_a1
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :cond_f
    :goto_a2
    goto/32 :goto_6a

    nop

    nop

    :goto_a3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_a4
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const v15, 0x7f070892

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v13, v0, Lmym;->i:[I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a7
    if-ne v0, v11, :cond_10

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_10
    goto/32 :goto_7c

    nop

    nop

    :goto_a8
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_a9
    sub-int/2addr v13, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v3, v2}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v1, v0, Lmym;->c:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_ac
    invoke-virtual {v13, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const v14, 0x7f0703a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v3, v1, v13}, Lnzk;->aZ(Ldso;Landroid/view/View;I)V

    :goto_af
    goto/32 :goto_aa

    nop

    nop

    :goto_b0
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_b1
    invoke-direct {v3}, Ldso;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    :goto_b2
    move-object/from16 v0, p0

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object v0, v1, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v3, v0, Lmym;->e:Lrtm;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_b6
    sub-int/2addr v13, v4

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/16 v1, 0x30

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_ba
    iget-object v1, v0, Lmym;->c:Landroid/app/Activity;

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_bd
    iget v0, v0, Lmym;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_be
    check-cast v2, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-interface {v3}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v3

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

    :goto_c0
    invoke-static {v14}, Lnzk;->aQ(Lnbe;)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-direct {v2, v0, v3}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {v1, v3}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v14}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_c6
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const v14, 0x7f0b040f

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_c8
    div-int/2addr v4, v11

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_c9
    goto/16 :goto_9d

    nop

    nop

    :goto_ca
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_cb
    invoke-direct {v3, v1, v4}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v1}, Lnbh;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_ce
    if-nez v1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_ba

    nop

    nop

    :goto_cf
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast v2, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    sget-object v4, Lmym;->b:Lsdb;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez v13, :cond_12

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_63

    nop

    nop

    :goto_d3
    iget-object v14, v0, Lmym;->i:[I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d4
    iget-object v14, v0, Lmym;->e:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_d5
    invoke-virtual {v4, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_d6
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v4, v0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_d9
    check-cast v4, Ljava/lang/Boolean;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    goto/16 :goto_af

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    if-nez v0, :cond_13

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_13
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    new-instance v2, Lmqs;

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

    :goto_de
    invoke-direct {v0, v2, v1}, Lmym;->b1051a9d8893542362ad09051775f8f6m(Landroid/view/ViewGroup;I)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v1, v0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    sget-object v14, Llyr;->e:Llzf;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-direct {v0, v2, v1}, Lmym;->b1051a9d8893542362ad09051775f8f6m(Landroid/view/ViewGroup;I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_e3
    iget-object v1, v0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

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

    :goto_e4
    iget-object v13, v0, Lmym;->m:Llyv;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-interface {v4, v13}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e6
    iget-boolean v1, v0, Lmym;->k:Z

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

    nop

    nop

    :goto_e7
    iget-object v4, v0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    if-nez v14, :cond_14

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_14
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final i(J)V
    .locals 1

    goto/32 :goto_7

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
    iget-object p0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1, p2}, Lmyj;->i(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lmym;->k:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lmym;->d:Lmyj;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(JI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final k(Landroid/widget/LinearLayout;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p0, Lmym;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object v0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

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

    :goto_5
    const v0, 0x7f0b00cd

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

    :goto_6
    const v0, 0x7f0b04ea

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lmym;->g:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const v0, 0x7f070746

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a
    check-cast p1, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lmym;->k:Z

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

    :goto_c
    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_e
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lmym;->j:I

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v0, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    move-object v0, p1

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

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

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

    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getRootView()Landroid/view/View;

    move-result-object p1

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

    nop

    nop

    :goto_20
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v2, 0x7f0802ef

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, p0, Lmym;->h:Landroid/content/res/Resources;

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

    nop

    nop

    :goto_a
    invoke-virtual {v7, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_b
    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    iget-object v4, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->a()Landroid/widget/TextView;

    move-result-object p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->a()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_16
    int-to-float v0, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    const v4, 0x7f0703a1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    const v4, 0x7f080166

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_21
    const v0, 0x2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v0, v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v7, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_24
    const/4 v5, 0x0

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

    :goto_25
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v7, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object v4

    nop

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

    :goto_2a
    iget-object p0, p0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, p0, Lmym;->h:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    iget-object v4, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_32
    const v1, 0x1d

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

    nop

    :goto_33
    const v4, 0x7f070390

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_34
    iget-object v4, p0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->a()Landroid/widget/TextView;

    move-result-object p0

    nop

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

    nop

    :goto_36
    iget-object p0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3a
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean v0, p0, Lmym;->k:Z

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

    :goto_3d
    const v3, 0x7f070893

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lmym;->f:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->a()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
