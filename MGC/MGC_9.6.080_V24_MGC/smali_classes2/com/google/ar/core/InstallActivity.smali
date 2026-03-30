.class public Lcom/google/ar/core/InstallActivity;
.super Landroid/app/Activity;
.source "PG"


# static fields
.field private static final BOX_SIZE_DP:I = 0x118

.field private static final INSTALLING_TEXT_BOTTOM_MARGIN_DP:I = 0x1e

.field static final INSTALL_BEHAVIOR_KEY:Ljava/lang/String; = "behavior"

.field static final MESSAGE_TYPE_KEY:Ljava/lang/String; = "message"

.field private static final TAG:Ljava/lang/String; = "ARCore-InstallActivity"


# instance fields
.field private finished:Z

.field private installBehavior:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

.field private installStarted:Z

.field private lastEvent:Lrqg;

.field private messageType:Lcom/google/ar/core/ArCoreApk$UserMessageType;

.field private final themeWrapper:Landroid/view/ContextThemeWrapper;

.field private waitingForCompletion:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetwaitingForCompletion(Lcom/google/ar/core/InstallActivity;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/ar/core/InstallActivity;->waitingForCompletion:Z

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
.end method

.method public static bridge synthetic -$$Nest$fputlastEvent(Lcom/google/ar/core/InstallActivity;Lrqg;)V
    .locals 0

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
    iput-object p1, p0, Lcom/google/ar/core/InstallActivity;->lastEvent:Lrqg;

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
.end method

.method public static bridge synthetic -$$Nest$manimateToSpinner(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->04e8ab26a3f474daf86fb8bd9ef2ccfbm()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$mcloseInstaller(Lcom/google/ar/core/InstallActivity;)V
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

    :goto_1
    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->32721ffe6bf70a3cd603419dcaec1bbcm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$mfinishWithFailure(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V
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

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/ar/core/InstallActivity;->6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$mshowSpinner(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->3dba14949575976f95abb04b36c232c7m()V

    goto/32 :goto_1

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

    nop
.end method

.method public static bridge synthetic -$$Nest$mstartInstaller(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->54ad550132b5041019bafb369f2bf2f6m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 04e8ab26a3f474daf86fb8bd9ef2ccfbm()V
    .locals 6

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v1, 0x438c0000    # 280.0f

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

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

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_20

    nop

    :goto_5
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_6
    const-wide/16 v4, 0x12c

    nop

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

    :goto_7
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-direct {v4, p0, v1, v0, v2}, Lrqd;-><init>(Lcom/google/ar/core/InstallActivity;III)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v4, Lrqd;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Lrqe;-><init>(Lcom/google/ar/core/InstallActivity;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_c
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_16

    nop

    nop

    :goto_e
    mul-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_23

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lrqe;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    invoke-virtual {v3, v0}, Landroid/view/View;->setMinimumWidth(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Landroid/util/DisplayMetrics;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

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

    :goto_1c
    new-instance v3, Landroid/widget/RelativeLayout;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v3}, Lcom/google/ar/core/InstallActivity;->setContentView(Landroid/view/View;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-array v3, v3, [F

    nop

    nop

    fill-array-data v3, :array_0

    goto/32 :goto_1b

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 1350d8077a4607fa6e2e5b7e6d4d1482m()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->OPTIONAL:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/ar/core/InstallActivity;->installBehavior:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

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
    if-eq p0, v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop
.end method

.method private 32721ffe6bf70a3cd603419dcaec1bbcm()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const-class v1, Lcom/google/ar/core/InstallActivity;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    const/high16 v1, 0x4000000

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/ar/core/InstallActivity;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method private 3dba14949575976f95abb04b36c232c7m()V
    .locals 7

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int v0, v0

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
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_3
    const/4 v6, 0x1

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

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v4, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v2, 0x438c0000    # 280.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_c
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

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

    :goto_d
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    const v4, 0x7f140004

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    invoke-virtual {p0, v2}, Lcom/google/ar/core/InstallActivity;->setContentView(Landroid/view/View;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    const/16 v5, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    :goto_19
    new-instance v0, Landroid/util/DisplayMetrics;

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    const/16 v4, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v1, v1}, Landroid/view/Window;->setLayout(II)V

    goto/32 :goto_35

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_21
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    :goto_25
    const/4 v4, -0x2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    new-instance v0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    iget-object v4, p0, Lcom/google/ar/core/InstallActivity;->themeWrapper:Landroid/view/ContextThemeWrapper;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

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

    nop

    :goto_2a
    return-void

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v6, p0, Lcom/google/ar/core/InstallActivity;->themeWrapper:Landroid/view/ContextThemeWrapper;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_30
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v3, p0, Lcom/google/ar/core/InstallActivity;->themeWrapper:Landroid/view/ContextThemeWrapper;

    nop

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

    nop

    :goto_32
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/32 :goto_1d

    nop

    nop

    :goto_33
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v5, Landroid/widget/ProgressBar;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v2, Landroid/widget/RelativeLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_36
    const/high16 v4, 0x41f00000    # 30.0f

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_14

    nop

    nop
.end method

.method private 54ad550132b5041019bafb369f2bf2f6m()V
    .locals 6

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

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

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v2

    nop

    nop

    nop

    iput-object v2, v0, Lrqh;->c:Landroid/content/pm/PackageInstaller;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lrqj;

    nop

    nop

    nop

    invoke-direct {v2, v0, v1}, Lrqj;-><init>(Lrqh;Lrqf;)V

    iput-object v2, v0, Lrqh;->d:Landroid/content/pm/PackageInstaller$SessionCallback;

    nop

    nop

    iget-object v2, v0, Lrqh;->c:Landroid/content/pm/PackageInstaller;

    nop

    nop

    iget-object v3, v0, Lrqh;->d:Landroid/content/pm/PackageInstaller$SessionCallback;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v3, "Unable to obtain Android PackageInstaller; is this a Play Instant App?"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/ar/core/InstallActivity;->installStarted:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Lrpx;->a(Landroid/content/Context;)Lrqh;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    const-string v2, "requestInstall bind failed, launching fullscreen."

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v2, Lrqk;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v1}, Lrqh;->g(Landroid/app/Activity;Lrqf;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lrqg;->b:Lrqg;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

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

    :goto_c
    invoke-virtual {v1, v2}, Lrqf;->b(Ljava/lang/Exception;)V

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_f
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p0, v0, Lrqh;->b:Landroid/content/Context;

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

    :goto_11
    iput-object v0, p0, Lcom/google/ar/core/InstallActivity;->lastEvent:Lrqg;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lrqf;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lrpx;->a:Lrpx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    :goto_19
    return-void

    nop

    :catch_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    iget-object v2, v0, Lrqh;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v0, Lrqh;->a:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    new-instance v4, Landroid/content/IntentFilter;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    const-string v5, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    iput-object v2, v0, Lrqh;->a:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2, v3}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    iget-object v3, v0, Lrqh;->a:Landroid/content/BroadcastReceiver;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_26
    :try_start_1
    new-instance v2, Lqxm;

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, p0, v1, v3}, Lqxm;-><init>(Lrqh;Landroid/content/Context;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lrqh;->e(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lrqm; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, v0, Lrqh;->d:Landroid/content/pm/PackageInstaller$SessionCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_d

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v2, v1}, Lrqk;-><init>(Lrqf;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, p0}, Lrqf;-><init>(Lcom/google/ar/core/InstallActivity;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v0, "ARCore-InstallService"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method private 6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0x239

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

    :goto_1
    invoke-static {v3, p1, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    const v0, 0xc

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lcom/google/ar/core/InstallActivity;->finished:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lrpx;->a:Lrpx;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

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

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lrpx;->a:Lrpx;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    iput-object p1, v0, Lrpx;->c:Ljava/lang/Exception;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lrqg;->b:Lrqg;

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
    iput-object v0, p0, Lcom/google/ar/core/InstallActivity;->themeWrapper:Landroid/view/ContextThemeWrapper;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/ar/core/InstallActivity;->lastEvent:Lrqg;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v1, 0x103023a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

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

    :goto_6
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_7
    new-instance v0, Landroid/view/ContextThemeWrapper;

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

    :goto_8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    const v0, 0x1b

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method private ae355835fdc086884be2967e72a5c3e7m()V
    .locals 4

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/ar/core/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/InstallActivity;->messageType:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

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

    :goto_2
    new-instance v1, Lrqc;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->1350d8077a4607fa6e2e5b7e6d4d1482m()Z

    move-result v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_14

    nop

    nop

    :goto_5
    const p0, 0x7f140002

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

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    :goto_a
    check-cast v0, Landroid/widget/TextView;

    nop

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

    :goto_b
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/ar/core/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/ar/core/InstallActivity;->setContentView(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v0, 0x7f0e0000

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v2, p0, v3}, Lrqc;-><init>(Lcom/google/ar/core/InstallActivity;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Lcom/google/ar/core/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x7f0b0010

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Lcom/google/ar/core/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_1e
    const v0, 0x7f0b0012

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

    :goto_1f
    new-instance v2, Lrqc;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1, p0, v2}, Lrqc;-><init>(Lcom/google/ar/core/InstallActivity;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    if-ne p0, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_23
    const v0, 0x7f0b0011

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

    :goto_24
    invoke-virtual {p0}, Lcom/google/ar/core/ArCoreApk$UserMessageType;->ordinal()I

    move-result p0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_25
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

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

    :goto_27
    rem-int v0, v0, v1

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

    :goto_28
    const/4 v3, 0x1

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

    nop

    :goto_29
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    const p0, 0x7f140003

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method


# virtual methods
.method public finish()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/ar/core/InstallActivity;->6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
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
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const-string v1, "ARCore-InstallActivity"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    const-string v0, "Install activity was suspended and recreated."

    nop

    nop

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/ar/core/InstallActivity;->6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V

    return-void

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    const-string v0, "message"

    nop

    nop

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    iput-object p1, p0, Lcom/google/ar/core/InstallActivity;->messageType:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const-string v0, "behavior"

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    nop

    nop

    iput-object p1, p0, Lcom/google/ar/core/InstallActivity;->installBehavior:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lcom/google/ar/core/InstallActivity;->messageType:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    const v0, 0x11

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    const-string v1, "Exception starting install flow"

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

    :goto_f
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1b

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

    :goto_11
    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const p1, 0x103023a

    nop

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/ar/core/InstallActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->1350d8077a4607fa6e2e5b7e6d4d1482m()Z

    move-result p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lcom/google/ar/core/InstallActivity;->setFinishOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/google/ar/core/InstallActivity;->messageType:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    sget-object v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    nop

    if-ne p1, v0, :cond_4

    nop

    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->3dba14949575976f95abb04b36c232c7m()V

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lrpx;->a:Lrpx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lrpx;->a(Landroid/content/Context;)Lrqh;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v2, Lrqb;

    nop

    nop

    nop

    nop

    invoke-direct {v2, p1}, Lrqb;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, p0, v2}, Lrqh;->b(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/ArCoreApk$Availability;->ordinal()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    if-eq p1, v0, :cond_5

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_5
    new-instance p1, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    nop

    invoke-direct {p1}, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/ar/core/InstallActivity;->6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V

    return-void

    nop

    nop

    :cond_6
    const-string p1, "Preliminary compatibility check failed."

    nop

    nop

    nop

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->ae355835fdc086884be2967e72a5c3e7m()V

    return-void

    nop

    nop

    :goto_14
    const-string p1, "missing intent data."

    nop

    nop

    nop

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    const-string v0, "Install activity launched without config data."

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/ar/core/InstallActivity;->6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_14

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v0}, Lcom/google/ar/core/InstallActivity;->6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public onDestroy()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/ar/core/InstallActivity;->finished:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lrpx;->c()V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lrpx;->a:Lrpx;

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

    :goto_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method protected onResume()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/InstallActivity;->messageType:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lcom/google/ar/core/InstallActivity;->finished:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/InstallActivity;->lastEvent:Lrqg;

    nop

    nop

    sget-object v1, Lrqg;->b:Lrqg;

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->finish()V

    goto :goto_a

    nop

    nop

    :cond_0
    sget-object v1, Lrqg;->a:Lrqg;

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lcom/google/ar/core/InstallActivity;->waitingForCompletion:Z

    nop

    goto :goto_a

    nop

    nop

    :cond_1
    sget-object v0, Lrpx;->a:Lrpx;

    nop

    nop

    iget-object v0, v0, Lrpx;->c:Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v0}, Lcom/google/ar/core/InstallActivity;->6d38cf8f2ac821af8e30e6ebd1c764fdm(Ljava/lang/Exception;)V

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v0, 0x17

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

    nop

    nop

    :goto_e
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

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

    :goto_f
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto/32 :goto_17

    nop

    nop

    :goto_10
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_12
    if-eqz v0, :cond_5

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

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lcom/google/ar/core/InstallActivity;->54ad550132b5041019bafb369f2bf2f6m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    throw v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    iget-boolean v0, p0, Lcom/google/ar/core/InstallActivity;->installStarted:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p0, "didResume"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
