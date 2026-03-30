.class public Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;
.super Landroid/widget/HorizontalScrollView;
.source "PG"

# interfaces
.implements Lnbg;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Lndy;

.field public c:Landroid/view/GestureDetector;

.field public d:Z

.field public e:Z

.field public f:Lned;

.field public g:Lnec;

.field public h:Lnne;

.field public i:Lnne;

.field public j:Lneb;

.field public k:Lmjv;

.field private final l:Landroid/graphics/Rect;

.field private m:Lnbe;


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-direct {v2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setHorizontalScrollBarEnabled(Z)V

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    invoke-direct {v2, p0, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lndz;-><init>(Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

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

    :goto_6
    const v0, 0x16

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

    :goto_7
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    new-instance v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lnzk;->Y(Landroid/view/View;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

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

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_13
    iput-object v2, v0, Lndy;->o:Lrss;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x7f0705a4

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

    :goto_15
    new-instance v2, Landroid/view/GestureDetector;

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

    :goto_16
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2}, Lndy;->setGravity(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Lndy;->setOrientation(I)V

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lndy;->setBackgroundColor(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    iput-object v2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setOverScrollMode(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setFadingEdgeLength(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lndy;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lndz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_18

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, p1}, Lndy;-><init>(Landroid/content/Context;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

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
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

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
    const-string v0, "com.google.android.apps.camera.ui.modeswitcher.ModeSwitcher"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    nop

    goto/32 :goto_2

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

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->m:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lnea;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/content/Context;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Lneb;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/graphics/Rect;

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

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_11
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

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

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lnne;->a:Lnne;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    const v0, 0x10

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Lned;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lnea;

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

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lnne;->b:Lnne;

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

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    sget-object v1, Lnbe;->b:Lnbe;

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, v0}, Lnea;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p2, Lnea;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lnbe;->b:Lnbe;

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

    :goto_d
    sget-object p2, Lnne;->b:Lnne;

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
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Lned;

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

    :goto_f
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

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

    :goto_10
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p2, Lnne;->a:Lnne;

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

    :goto_12
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Lneb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->m:Lnbe;

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p2, Lnne;->b:Lnne;

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

    :goto_1
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Landroid/graphics/Rect;

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

    :goto_3
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Lneb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->m:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p2, p3}, Lnea;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    goto/32 :goto_10

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

    nop

    nop

    :goto_e
    sget-object p3, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iput-boolean p3, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/content/Context;)V

    goto/32 :goto_d

    nop

    nop

    :goto_11
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    sget-object p2, Lnne;->a:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Lned;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean p3, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

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

    :goto_15
    new-instance p2, Lnea;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Landroid/graphics/Rect;

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

    :goto_2
    sget-object p3, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/4 p3, 0x1

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

    :goto_4
    iput-boolean p3, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

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

    :goto_6
    iput-object p3, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->m:Lnbe;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p3, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Lned;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p2, Lnea;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-direct {p2, p3}, Lnea;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p2, Lnne;->a:Lnne;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    sget-object p2, Lnne;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/content/Context;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Lneb;

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
.end method

.method public static a(FFF)F
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    cmpg-float v0, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v1, 0xf

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v4, "value=%s min=%s max=%s"

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

    :goto_9
    invoke-static {v0, v4, v1, v2, v3}, Lrrf;->u(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final d()Lnne;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, p0}, Lsaw;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

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

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Lrvh;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    div-int/2addr p0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lrvg;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getScrollX()I

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    iget-object p0, v0, Lndy;->b:Lrvg;

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

    nop

    :goto_d
    check-cast p0, Lnne;

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_10
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-direct {v1, v3, p0}, Lrvh;-><init>(Lrsk;Lsaw;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v1, p0

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

    :goto_1b
    sget-object p0, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Lrvg;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1f
    new-instance v3, Ljep;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v3, v1, v2}, Ljep;-><init>(II)V

    goto/32 :goto_5

    nop

    nop

    :goto_21
    sget-object p0, Lsav;->a:Lsav;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    iget-object p0, v0, Lndy;->b:Lrvg;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final synthetic dI(Lnbh;)V
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

    nop

    nop

    nop

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p2, p1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lnzk;->aQ(Lnbe;)Z

    move-result p1

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

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setHorizontalFadingEdgeEnabled(Z)V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->m:Lnbe;

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
    return-void

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->m:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(ZZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_3

    nop

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
    invoke-virtual {p0, p1, p2}, Lndy;->d(ZZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final f(IZ)V
    .locals 1

    goto/32 :goto_10

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
    goto/32 :goto_9

    nop

    nop

    :goto_2
    new-instance p2, Lkwi;

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

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->smoothScrollTo(II)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    sub-int/2addr p1, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    if-nez p2, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->scrollTo(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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

    :goto_b
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    new-instance p2, Lkwi;

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

    :goto_d
    invoke-direct {p2, p0, p1, v0}, Lkwi;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-direct {p2, p0, p1, v0}, Lkwi;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getWidth()I

    move-result v0

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

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Lnne;Z)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_6

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
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_8
    const-string v1, "Cannot setActiveMode to UNINITIALIZED"

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    const-string v1, "must call finalizeModeSetup before setActiveMode"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lnne;->a:Lnne;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1, p2}, Lndy;->b(Lnne;Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_13

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final h(Lnne;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    move v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    iget-object v0, p0, Lneb;->e:Lrss;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Lned;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_e
    const-string v0, "ModeSwitcher#setActiveModeAndNL"

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

    :goto_f
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g(Lnne;Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

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

    nop

    :goto_14
    if-ne p1, v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lnne;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lneb;->e:Lrss;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, p1}, Lned;->f(Lnne;)V

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_1d
    goto :goto_17

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
    check-cast p0, Lneb;

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

    :goto_20
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public final i(Landroid/widget/TextView;Lnne;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const/16 v1, 0xb

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljsy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    invoke-direct {v0, p0, p2, v1, v2}, Ljsy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isEnabled()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final j(Lnne;Z)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lndy;->d:Ljava/util/EnumSet;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :goto_1
    if-nez p2, :cond_2

    nop

    iget-object v0, p0, Lndy;->d:Ljava/util/EnumSet;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_2
    if-eqz p2, :cond_3

    nop

    iget-object p2, p0, Lndy;->d:Ljava/util/EnumSet;

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object p2, p0, Lndy;->d:Ljava/util/EnumSet;

    nop

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lndy;->f:Z

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

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

    :goto_5
    invoke-virtual {p0}, Lndy;->requestLayout()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

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
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

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
    return p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getWidth()I

    move-result p2

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-static {p1}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    sget p1, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

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

    :goto_c
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_f

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

    :goto_e
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getHeight()I

    move-result p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto/32 :goto_4

    nop

    nop
.end method

.method public final setEnabled(Z)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

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

    :goto_2
    goto/32 :goto_12

    nop

    nop

    :goto_3
    check-cast v0, Lscz;

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

    :goto_4
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

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
    sget-object v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_a
    invoke-virtual {v0, p1}, Lndy;->setEnabled(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

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

    nop

    :goto_c
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1d

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "ModeSwitcher WAS ALREADY DISABLED!"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v1, 0x1364

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_14

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    sget-object v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lscs;->c()Lsdo;

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

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_25
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    :goto_26
    const/16 v1, 0x1365

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_27
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "ModeSwitcher WAS ALREADY ENABLED!"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setVisibility(I)V
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

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lndy;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
