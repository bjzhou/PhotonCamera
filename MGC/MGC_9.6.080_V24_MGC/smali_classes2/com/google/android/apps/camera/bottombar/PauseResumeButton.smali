.class public Lcom/google/android/apps/camera/bottombar/PauseResumeButton;
.super Landroid/widget/ImageButton;
.source "PG"


# static fields
.field private static final f:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Lhhg;

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->f:[I

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
    filled-new-array {v0}, [I

    move-result-object v0

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f040651

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x7f0802de

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7f0801ab

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->g:Landroid/graphics/drawable/Drawable;

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->g:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->b:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->refreshDrawableState()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x7f1404c9

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    :goto_1c
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->c:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->g:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->c:Z

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

    nop

    :goto_1
    return-object p0

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

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->mergeDrawableStates([I[I)[I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->f:[I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method protected final onFinishInflate()V
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

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->b:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->b:Z

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final performClick()Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->e:Lhhg;

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->e:Lhhg;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lhhg;->e()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->c:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lhhg;->d()V

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
