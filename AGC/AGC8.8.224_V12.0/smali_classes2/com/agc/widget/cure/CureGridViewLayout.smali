.class public Lcom/agc/widget/cure/CureGridViewLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;,
        Lcom/agc/widget/cure/CureGridViewLayout$CureValue;
    }
.end annotation


# static fields
.field public static final pref_cure_gamma_pre_key:Ljava/lang/String; = "lib_gamma_key"

.field public static final pref_cure_gamma_value_key:Ljava/lang/String; = "lib_pref_gamma_custom_key"

.field public static final pref_cure_sect_pre_key:Ljava/lang/String; = "lib_sect_key"

.field public static final pref_cure_sect_value_key:Ljava/lang/String; = "lib_pref_sect_custom_key"

.field public static final pref_cure_tone_pre_key:Ljava/lang/String; = "lib_tone_key"

.field public static final pref_cure_tone_value_key:Ljava/lang/String; = "lib_pref_tone_custom_key"

.field public static final pref_title_index:Ljava/lang/String; = "pref_title_index"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private curePerModel:Lcom/agc/widget/cure/CurePerModel;

.field private gammaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/cure/CurePerModel;",
            ">;"
        }
    .end annotation
.end field

.field private lib_gamma_entries:[Ljava/lang/String;

.field private lib_sect_entries:[Ljava/lang/String;

.field private lib_tone_entries:[Ljava/lang/String;

.field private mCureGridView:Lcom/agc/widget/cure/CureGridView;

.field private mCureType:Lcom/agc/widget/cure/CureType;

.field private mLltTitle:Landroid/view/View;

.field private mOnCloseClickListener:Landroid/view/View$OnClickListener;

.field private mOnDoneClickListener:Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;

.field private mTvCurePre:Landroid/widget/TextView;

.field private mTvGamma:Landroid/widget/TextView;

.field private mTvSect:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mTvTone:Landroid/widget/TextView;

.field private saveKey:Ljava/lang/String;

.field private sectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/cure/CurePerModel;",
            ">;"
        }
    .end annotation
.end field

.field private toneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/cure/CurePerModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/cure/CureGridViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/cure/CureGridViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p3, Lcom/agc/widget/cure/CureType;->SWITCH:Lcom/agc/widget/cure/CureType;

    iput-object p3, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureType:Lcom/agc/widget/cure/CureType;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/agc/Res$layout;->agc_cure_dialog:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/agc/Res$id;->tv_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTitle:Landroid/widget/TextView;

    sget v0, Lcom/agc/Res$id;->llt_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mLltTitle:Landroid/view/View;

    sget v0, Lcom/agc/Res$id;->tv_tone:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTone:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/agc/Res$id;->tv_gamma:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvGamma:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/agc/Res$id;->tv_sect:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvSect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/agc/Res$id;->iv_back:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/agc/widget/cure/CureGridViewLayout$2;

    invoke-direct {v1, p0}, Lcom/agc/widget/cure/CureGridViewLayout$2;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/agc/Res$id;->cure_grid_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/cure/CureGridView;

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/agc/R$styleable;->CureGridViewLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/agc/R$styleable;->CureGridViewLayout_save_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CureGridViewLayout_save_key "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    sget-object p1, Lcom/agc/widget/cure/CureType;->SINGLE:Lcom/agc/widget/cure/CureType;

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureType:Lcom/agc/widget/cure/CureType;

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "lib_gamma_entries"

    invoke-static {p2}, Lcom/agc/Res;->getArrayID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->lib_gamma_entries:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "lib_tone_entries"

    invoke-static {p2}, Lcom/agc/Res;->getArrayID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->lib_tone_entries:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "lib_sect_entries"

    invoke-static {p2}, Lcom/agc/Res;->getArrayID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->lib_sect_entries:[Ljava/lang/String;

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->lib_gamma_entries:[Ljava/lang/String;

    const-string p2, "gamma"

    invoke-direct {p0, p2, p1}, Lcom/agc/widget/cure/CureGridViewLayout;->initPreList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->gammaList:Ljava/util/List;

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->lib_tone_entries:[Ljava/lang/String;

    const-string p2, "tone"

    invoke-direct {p0, p2, p1}, Lcom/agc/widget/cure/CureGridViewLayout;->initPreList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->toneList:Ljava/util/List;

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->lib_sect_entries:[Ljava/lang/String;

    const-string p2, "sect"

    invoke-direct {p0, p2, p1}, Lcom/agc/widget/cure/CureGridViewLayout;->initPreList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->sectList:Ljava/util/List;

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->gammaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->gammaList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/cure/CurePerModel;

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    :cond_1
    sget p1, Lcom/agc/Res$id;->tv_cure_pre:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvCurePre:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvCurePre:Landroid/widget/TextView;

    new-instance v0, Lcom/agc/widget/cure/CureGridViewLayout$3;

    invoke-direct {v0, p0}, Lcom/agc/widget/cure/CureGridViewLayout$3;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gammaList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->gammaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toneList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->toneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sectList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->sectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    const-string p1, "pref_title_index"

    invoke-static {p1, p2}, Lcom/Utils/Pref;->getIntValue(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    const-string p1, "lib_pref_tone_custom_key"

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTone:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_2
    if-ne p1, p2, :cond_3

    const-string p1, "lib_pref_gamma_custom_key"

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvGamma:Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    const-string p1, "lib_pref_sect_custom_key"

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvSect:Landroid/widget/TextView;

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->initCurePerModel()V

    :cond_4
    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->changeTitle()V

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    iget-object p2, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/agc/widget/cure/CureGridViewLayout;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/agc/widget/cure/CureGridView;->setCureValue(Ljava/lang/String;)V

    sget p1, Lcom/agc/Res$id;->agc_color_reset:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/agc/widget/cure/CureGridViewLayout$4;

    invoke-direct {p2, p0}, Lcom/agc/widget/cure/CureGridViewLayout$4;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/agc/Res$id;->agc_color_mix_tv_done:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/agc/widget/cure/CureGridViewLayout$5;

    invoke-direct {p2, p0}, Lcom/agc/widget/cure/CureGridViewLayout$5;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/cure/CureGridViewLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/agc/widget/cure/CureGridViewLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/cure/CureGridViewLayout;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/agc/widget/cure/CureGridViewLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/agc/widget/cure/CureGridViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->showPerListDialog()V

    return-void
.end method

.method public static synthetic access$400(Lcom/agc/widget/cure/CureGridViewLayout;)Lcom/agc/widget/cure/CureGridView;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/agc/widget/cure/CureGridViewLayout;)Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mOnDoneClickListener:Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/agc/widget/cure/CureGridViewLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvCurePre:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/agc/widget/cure/CureGridViewLayout;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->getCurrentPreKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/agc/widget/cure/CureGridViewLayout;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private changeTitle()V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mLltTitle:Landroid/view/View;

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureType:Lcom/agc/widget/cure/CureType;

    sget-object v2, Lcom/agc/widget/cure/CureType;->SWITCH:Lcom/agc/widget/cure/CureType;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureType:Lcom/agc/widget/cure/CureType;

    if-ne v1, v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/widget/cure/CurePerModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvGamma:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->gammaList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTone:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->toneList:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->sectList:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method private getCurrentPreKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvGamma:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lib_gamma_key"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTone:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lib_tone_key"

    goto :goto_0

    :cond_1
    const-string v0, "lib_sect_key"

    :goto_0
    return-object v0
.end method

.method private getCurrentValueKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvGamma:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lib_pref_gamma_custom_key"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTone:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lib_pref_tone_custom_key"

    goto :goto_0

    :cond_1
    const-string v0, "lib_pref_sect_custom_key"

    :goto_0
    return-object v0
.end method

.method private getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureType:Lcom/agc/widget/cure/CureType;

    sget-object v1, Lcom/agc/widget/cure/CureType;->SWITCH:Lcom/agc/widget/cure/CureType;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private initCurePerModel()V
    .locals 3

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->getCurrentPreKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->getCurrentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/cure/CurePerModel;

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/agc/widget/cure/CureGridViewLayout;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/widget/cure/CureGridView;->setCureValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    invoke-virtual {v0, v1}, Lcom/agc/widget/cure/CureGridView;->setCurePerModel(Lcom/agc/widget/cure/CurePerModel;)V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvCurePre:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->curePerModel:Lcom/agc/widget/cure/CurePerModel;

    iget-object v1, v1, Lcom/agc/widget/cure/CurePerModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initPreList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/agc/widget/cure/CurePerModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {p1}, Lagc/Agc;->curveList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, p1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lt v3, v2, :cond_1

    aget-object v3, p2, v2

    goto :goto_2

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v5, Lcom/agc/widget/cure/CurePerModel;

    invoke-direct {v5, v3, v4}, Lcom/agc/widget/cure/CurePerModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private initRAWPreList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/agc/widget/cure/CurePerModel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/Res;->openRawRes(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gamma:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/agc/widget/cure/CurePerModel;

    invoke-direct {v3, v4, v5}, Lcom/agc/widget/cure/CurePerModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private onTitleClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvTone:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvGamma:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mTvSect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    invoke-virtual {v3}, Lcom/agc/widget/cure/CureGridView;->getCureValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/agc/widget/cure/CureGridViewLayout;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/agc/Res$id;->tv_tone:I

    const-string v4, "pref_title_index"

    if-ne v2, v3, :cond_1

    const-string p1, "lib_pref_tone_custom_key"

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/agc/Res$id;->tv_gamma:I

    if-ne p1, v1, :cond_2

    const-string p1, "lib_pref_gamma_custom_key"

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "lib_pref_sect_custom_key"

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {v4, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    :goto_0
    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->initCurePerModel()V

    return-void
.end method

.method private setMenuValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureType:Lcom/agc/widget/cure/CureType;

    sget-object v1, Lcom/agc/widget/cure/CureType;->SWITCH:Lcom/agc/widget/cure/CureType;

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/Utils/Pref;->setAuxProfilePrefValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showPerListDialog()V
    .locals 5

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->getCurrentList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/widget/cure/CurePerModel;

    iget-object v4, v4, Lcom/agc/widget/cure/CurePerModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->getCurrentPreKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/agc/widget/cure/StringListAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/agc/widget/cure/StringListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    new-instance v1, Lcom/agc/widget/cure/CureGridViewLayout$6;

    invoke-direct {v1, p0, v0}, Lcom/agc/widget/cure/CureGridViewLayout$6;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/agc/widget/cure/StringListAdapter;->setOnStringItemClick(Lcom/agc/widget/cure/OnStringItemClick;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "agc_layout_list_dialog"

    invoke-static {v1}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "listView"

    invoke-static {v1}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->tv_tone:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->tv_gamma:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->tv_sect:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/agc/widget/cure/CureGridViewLayout;->onTitleClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public openActionUpToSave(Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    new-instance v1, Lcom/agc/widget/cure/CureGridViewLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/agc/widget/cure/CureGridViewLayout$1;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;)V

    invoke-virtual {v0, v1}, Lcom/agc/widget/cure/CureGridView;->setOnCureListener(Lcom/agc/widget/cure/CureGridView$OnCureListener;)V

    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoneClickListener(Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mOnDoneClickListener:Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;

    return-void
.end method

.method public setSaveKey(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout;->saveKey:Ljava/lang/String;

    sget-object v0, Lcom/agc/widget/cure/CureType;->SINGLE:Lcom/agc/widget/cure/CureType;

    iput-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureType:Lcom/agc/widget/cure/CureType;

    invoke-direct {p0}, Lcom/agc/widget/cure/CureGridViewLayout;->changeTitle()V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout;->mCureGridView:Lcom/agc/widget/cure/CureGridView;

    invoke-direct {p0, p1}, Lcom/agc/widget/cure/CureGridViewLayout;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/agc/widget/cure/CureGridView;->setCureValue(Ljava/lang/String;)V

    return-void
.end method
