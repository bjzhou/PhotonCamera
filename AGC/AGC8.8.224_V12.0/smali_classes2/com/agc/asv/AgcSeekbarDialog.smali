.class public Lcom/agc/asv/AgcSeekbarDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/AgcSeekbarDialog$OnBottomSheetShowListener;,
        Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;
    }
.end annotation


# static fields
.field private static final mAnimationDuration:I = 0xc8

.field private static mShadowPopup:Lcom/agc/asv/AgcSeekbarDialog;


# instance fields
.field key:Ljava/util/ArrayList;

.field listview:Landroidx/recyclerview/widget/RecyclerView;

.field private mContentView:Landroid/view/View;

.field private mIsAnimating:Z

.field private mOnBottomSheetShowListener:Lcom/agc/asv/AgcSeekbarDialog$OnBottomSheetShowListener;

.field myAdapter:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

.field value:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/agc/R$style;->AppTheme_BottomSheet:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->mIsAnimating:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->value:Ljava/util/ArrayList;

    new-instance p1, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/agc/asv/AgcSeekbarDialog;->value:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;-><init>(Lcom/agc/asv/AgcSeekbarDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->myAdapter:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

    return-void
.end method

.method public static synthetic access$002(Lcom/agc/asv/AgcSeekbarDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->mIsAnimating:Z

    return p1
.end method

.method public static synthetic access$101(Lcom/agc/asv/AgcSeekbarDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic access$200(Lcom/agc/asv/AgcSeekbarDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method private animateDown()V
    .locals 10

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v0, Lcom/agc/asv/AgcSeekbarDialog$1;

    invoke-direct {v0, p0}, Lcom/agc/asv/AgcSeekbarDialog$1;-><init>(Lcom/agc/asv/AgcSeekbarDialog;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateUp()V
    .locals 10

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initData()V
    .locals 4

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_sharpness_a_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_sharpness_b_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_chroma_a_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_chroma_b_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_denoise_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_spatial_a_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_spatial_b_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_luma_a_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_luma_b_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_temporal_a_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    const-string v1, "lib_temporal_b_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "0.0"

    invoke-virtual {v1, v2, v3}, Lcom/agc/util/SpUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/agc/asv/AgcSeekbarDialog;->value:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$showDialog$2()V
    .locals 0

    return-void
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/agc/asv/AgcSeekbarDialog;->mShadowPopup:Lcom/agc/asv/AgcSeekbarDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/asv/AgcSeekbarDialog;

    invoke-direct {v0, p0}, Lcom/agc/asv/AgcSeekbarDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/agc/asv/AgcSeekbarDialog;->mShadowPopup:Lcom/agc/asv/AgcSeekbarDialog;

    new-instance p0, Lcom/agc/asv/AgcSeekbarDialog$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/agc/asv/AgcSeekbarDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/asv/AgcSeekbarDialog;->setmOnBottomSheetShowListener(Lcom/agc/asv/AgcSeekbarDialog$OnBottomSheetShowListener;)V

    :cond_0
    sget-object p0, Lcom/agc/asv/AgcSeekbarDialog;->mShadowPopup:Lcom/agc/asv/AgcSeekbarDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/agc/asv/AgcSeekbarDialog;->mShadowPopup:Lcom/agc/asv/AgcSeekbarDialog;

    invoke-virtual {p0}, Lcom/agc/asv/AgcSeekbarDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/agc/asv/AgcSeekbarDialog;->animateDown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/agc/asv/AgcSeekbarDialog;->mShadowPopup:Lcom/agc/asv/AgcSeekbarDialog;

    return-void
.end method

.method synthetic lambda$setContentView$0$com-agc-asv-AgcSeekbarDialog(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/agc/asv/AgcSeekbarDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$setContentView$1$com-agc-asv-AgcSeekbarDialog(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/agc/asv/AgcSeekbarDialog;->dismiss()V

    iget-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->mOnBottomSheetShowListener:Lcom/agc/asv/AgcSeekbarDialog$OnBottomSheetShowListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/agc/asv/AgcSeekbarDialog$OnBottomSheetShowListener;->onSave()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x51

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/asv/DisplayHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/asv/DisplayHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget p1, Lcom/agc/Res$layout;->agc_seekbar_dialog:I

    invoke-virtual {p0, p1}, Lcom/agc/asv/AgcSeekbarDialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/agc/asv/AgcSeekbarDialog;->initData()V

    sget p1, Lcom/agc/Res$id;->rv_list:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->listview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->listview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->myAdapter:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->myAdapter:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog;->key:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/agc/asv/AgcSeekbarDialog;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    sget p1, Lcom/agc/Res$id;->agc_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/agc/Res$id;->agc_save:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/agc/asv/AgcSeekbarDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/agc/asv/AgcSeekbarDialog$$ExternalSyntheticLambda1;-><init>(Lcom/agc/asv/AgcSeekbarDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/agc/asv/AgcSeekbarDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/agc/asv/AgcSeekbarDialog$$ExternalSyntheticLambda2;-><init>(Lcom/agc/asv/AgcSeekbarDialog;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->mContentView:Landroid/view/View;

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setmOnBottomSheetShowListener(Lcom/agc/asv/AgcSeekbarDialog$OnBottomSheetShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog;->mOnBottomSheetShowListener:Lcom/agc/asv/AgcSeekbarDialog$OnBottomSheetShowListener;

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/agc/asv/AgcSeekbarDialog;->animateUp()V

    return-void
.end method
