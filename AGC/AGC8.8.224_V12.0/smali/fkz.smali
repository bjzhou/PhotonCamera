.class public final Lfkz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lhrz;

.field public final b:Landroid/content/Context;

.field public c:Landroid/view/View;

.field private final d:Landroid/util/DisplayMetrics;

.field private e:Landroid/view/View;

.field private final f:Ljew;


# direct methods
.method public constructor <init>(Lhrz;Ljew;Landroid/util/DisplayMetrics;Landroid/content/Context;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lfkz;->e:Landroid/view/View;

    iput-object p5, p0, Lfkz;->c:Landroid/view/View;

    iput-object p1, p0, Lfkz;->a:Lhrz;

    iput-object p2, p0, Lfkz;->f:Ljew;

    iput-object p4, p0, Lfkz;->b:Landroid/content/Context;

    iput-object p3, p0, Lfkz;->d:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lfkz;->e:Landroid/view/View;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lfkz;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lfkz;->b:Landroid/content/Context;

    const v2, 0x7f0e0091

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lhu;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3}, Lhu;-><init>(Lfkz;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0b008c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lfkz;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lfkz;->d:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    int-to-float v4, v4

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    mul-float v1, v1, v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v1, v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    int-to-float v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v5, v5, v4

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lfkz;->b:Landroid/content/Context;

    const v3, 0x7f140314

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfkz;->b:Landroid/content/Context;

    const v4, 0x7f140313

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lfkz;->e:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lfkz;->a:Lhrz;

    iget-object v1, p0, Lfkz;->e:Landroid/view/View;

    const/4 v2, 0x7

    const v3, 0x7f14030f

    invoke-virtual {v0, v2, v3, v1}, Lhrz;->l(IILandroid/view/View;)V

    iget-object v0, p0, Lfkz;->f:Ljew;

    const-string v1, "micro_tutorial_dismiss"

    invoke-virtual {v0, v1}, Ljew;->Z(Ljava/lang/String;)I

    return-void
.end method
