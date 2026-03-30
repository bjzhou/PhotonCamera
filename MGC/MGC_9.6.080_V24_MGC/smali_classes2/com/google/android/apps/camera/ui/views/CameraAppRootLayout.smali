.class public Lcom/google/android/apps/camera/ui/views/CameraAppRootLayout;
.super Lcom/google/android/apps/camera/ui/layout/GcaLayout;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result p1

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

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CameraAppRootLayout;->getDisplay()Landroid/view/Display;

    move-result-object p2

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    const/4 p2, 0x0

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
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CameraAppRootLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onLayout(ZIIII)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CameraAppRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {p0, p2, p1, p2, p2}, Lcom/google/android/apps/camera/ui/views/CameraAppRootLayout;->setPadding(IIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p2}, Lnzk;->aR(Landroid/content/Context;Landroid/view/Display;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    move p1, p2

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
