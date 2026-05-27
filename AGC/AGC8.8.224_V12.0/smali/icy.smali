.class public final Licy;
.super Landroid/widget/PopupWindow;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final m:Lj$/time/Duration;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Licz;

.field public c:Lhyn;

.field public d:Licx;

.field public final e:Landroid/view/View$OnLayoutChangeListener;

.field public final f:I

.field public final g:I

.field public h:Liko;

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final n:Landroid/content/Context;

.field private final o:Landroid/os/Handler;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/ListView;

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Licy;->m:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Licz;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sget-object v0, Lhyn;->b:Lhyn;

    iput-object v0, p0, Licy;->c:Lhyn;

    new-instance v0, Lhcl;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lhcl;-><init>(Licy;I)V

    iput-object v0, p0, Licy;->e:Landroid/view/View$OnLayoutChangeListener;

    sget-object v0, Liko;->a:Liko;

    iput-object v0, p0, Licy;->h:Liko;

    iput-object p1, p0, Licy;->n:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Licy;->o:Landroid/os/Handler;

    iput-object p2, p0, Licy;->a:Landroid/view/View;

    iput-object p3, p0, Licy;->b:Licz;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070437

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Licy;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070434

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Licy;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070435

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Licy;->t:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070439

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Licy;->s:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07043a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Licy;->w:I

    const/16 p1, 0x50

    iput p1, p0, Licy;->u:I

    const/4 p1, 0x5

    iput p1, p0, Licy;->v:I

    return-void
.end method

.method public static final h(Landroid/view/View;Z)I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    aget p0, v0, p0

    :goto_0
    return p0
.end method

.method private final i()I
    .locals 5

    iget-object v0, p0, Licy;->c:Lhyn;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Licy;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Licy;->k:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    sget-object v0, Liko;->a:Liko;

    iget-object v0, p0, Licy;->h:Liko;

    invoke-virtual {v0}, Liko;->ordinal()I

    move-result v0

    const/16 v1, 0x30

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Licy;->h:Liko;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected orientation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget v0, p0, Licy;->u:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Licy;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Licy;->k:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Licy;->k:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Licy;->u:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Licy;->k:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Licy;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Licy;->k:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Licy;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Licy;->s:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Licy;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Licy;->s:I

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Licy;->h:Liko;

    sget-object v3, Liko;->c:Liko;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    const/16 v2, -0x5a

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_1

    :cond_5
    :goto_1
    add-int/2addr v0, v4

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final j()I
    .locals 5

    iget-object v0, p0, Licy;->c:Lhyn;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Licy;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    sget-object v0, Liko;->a:Liko;

    iget-object v0, p0, Licy;->h:Liko;

    invoke-virtual {v0}, Liko;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Licy;->h:Liko;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected orientation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget v0, p0, Licy;->v:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Licy;->s:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Licy;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Licy;->s:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Licy;->v:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Licy;->s:I

    neg-int v0, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Licy;->s:I

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Licy;->u:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Licy;->k:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Licy;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Licy;->k:I

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Licy;->h:Liko;

    sget-object v3, Liko;->b:Liko;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4

    const/16 v2, -0x10e

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto :goto_1

    :cond_5
    :goto_1
    add-int/2addr v0, v4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final k()V
    .locals 2

    iget-object v0, p0, Licy;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private final l(Licw;)V
    .locals 8

    invoke-virtual {p0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Licw;->values()[Licw;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget v6, v5, Licw;->e:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-ne v5, p1, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-eq v5, p1, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_1

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Licw;->f:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v1, p0, Licy;->t:I

    :goto_2
    if-eqz p1, :cond_4

    iget v3, p0, Licy;->t:I

    goto :goto_3

    :cond_4
    :goto_3
    iget p1, p0, Licy;->i:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Licy;->setWidth(I)V

    iget-object p1, p0, Licy;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p0, Licy;->j:I

    iget v2, p0, Licy;->w:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v2, p0, Licy;->t:I

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Licy;->setHeight(I)V

    iget-object p1, p0, Licy;->e:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()Licw;
    .locals 3

    iget-object v0, p0, Licy;->c:Lhyn;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Licw;->c:Licw;

    return-object v0

    :cond_0
    sget-object v0, Liko;->a:Liko;

    iget-object v0, p0, Licy;->h:Liko;

    invoke-virtual {v0}, Liko;->ordinal()I

    move-result v0

    const/16 v1, 0x30

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Licy;->h:Liko;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected orientation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget v0, p0, Licy;->u:I

    if-ne v0, v1, :cond_1

    sget-object v0, Licw;->c:Licw;

    goto :goto_0

    :cond_1
    sget-object v0, Licw;->b:Licw;

    :goto_0
    return-object v0

    :pswitch_1
    iget v0, p0, Licy;->u:I

    if-ne v0, v1, :cond_2

    sget-object v0, Licw;->b:Licw;

    goto :goto_1

    :cond_2
    sget-object v0, Licw;->c:Licw;

    :goto_1
    return-object v0

    :pswitch_2
    iget v0, p0, Licy;->u:I

    if-ne v0, v1, :cond_3

    sget-object v0, Licw;->a:Licw;

    goto :goto_2

    :cond_3
    sget-object v0, Licw;->d:Licw;

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Licy;->b:Licz;

    invoke-virtual {v0, p1}, Licz;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Licy;->r:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Licy;->b:Licz;

    iput-object p1, v0, Licz;->b:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {v0}, Licz;->notifyDataSetChanged()V

    iget-object v0, p0, Licy;->d:Licx;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Licx;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 10

    iget-object v0, p0, Licy;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Licy;->i:I

    invoke-virtual {p0, v0}, Licy;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Licy;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Licy;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Licy;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Licy;->setAttachedInDecor(Z)V

    invoke-virtual {p0, v1}, Licy;->setClippingEnabled(Z)V

    invoke-virtual {p0, v0}, Licy;->setOverlapAnchor(Z)V

    iget-object v2, p0, Licy;->n:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e00b7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Licy;->setContentView(Landroid/view/View;)V

    const v3, 0x7f0b029c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Licy;->p:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0b029a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Licy;->q:Landroid/widget/ImageButton;

    iget-object v5, p0, Licy;->n:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const p1, 0x7f1402b4

    invoke-virtual {v5, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Licy;->getWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const v3, 0x7f0b029b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Licy;->r:Landroid/widget/ListView;

    iget-object v3, p0, Licy;->b:Licz;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Licy;->r:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Licy;->r:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    iget-object v3, p0, Licy;->r:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Licy;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Licy;->a:Landroid/view/View;

    invoke-virtual {p0, v5}, Licy;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Licy;->b:Licz;

    invoke-virtual {v7}, Licz;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Licy;->b:Licz;

    iget-object v8, p0, Licy;->r:Landroid/widget/ListView;

    invoke-virtual {v7, v6, v4, v8}, Licz;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    if-nez v7, :cond_0

    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v8, p0, Licy;->r:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v8

    iget-object v9, p0, Licy;->r:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getListPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v3, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    iget v9, v7, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-lez v9, :cond_1

    iget v7, v7, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_1
    invoke-virtual {v4, v8, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v2

    iput p1, p0, Licy;->j:I

    iget-object p1, p0, Licy;->b:Licz;

    iget-object p1, p1, Licz;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Licy;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Licy;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Licy;->q:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Licy;->q:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Licy;->b:Licz;

    iget-object v0, v0, Licz;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Licy;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 6

    invoke-virtual {p0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Licy;->e:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Licy;->a()Licw;

    move-result-object v0

    invoke-direct {p0, v0}, Licy;->l(Licw;)V

    iget-object v0, p0, Licy;->a:Landroid/view/View;

    invoke-direct {p0}, Licy;->i()I

    move-result v1

    invoke-direct {p0}, Licy;->j()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Licy;->showAsDropDown(Landroid/view/View;III)V

    invoke-direct {p0}, Licy;->k()V

    invoke-virtual {p0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Licy;->n:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Licy;->p:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Licy;->b:Licz;

    iget-object v4, v3, Licz;->a:Ljava/util/List;

    iget-object v5, v3, Licz;->b:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Licz;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lida;

    iget-object v3, v3, Lida;->b:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f1402b5

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Licy;->getWidth()I

    invoke-virtual {p0}, Licy;->getHeight()I

    invoke-virtual {p0}, Licy;->update()V

    return-void
.end method

.method public final g(Liko;)V
    .locals 6

    iput-object p1, p0, Licy;->h:Liko;

    invoke-virtual {p0}, Licy;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Licy;->a()Licw;

    move-result-object p1

    invoke-direct {p0, p1}, Licy;->l(Licw;)V

    iget-object v1, p0, Licy;->a:Landroid/view/View;

    invoke-direct {p0}, Licy;->i()I

    move-result v2

    invoke-direct {p0}, Licy;->j()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Licy;->update(Landroid/view/View;IIII)V

    invoke-direct {p0}, Licy;->k()V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Licy;->b:Licz;

    invoke-virtual {p1, p3}, Licz;->b(I)Lida;

    move-result-object p1

    iget-object p3, p0, Licy;->l:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz p3, :cond_0

    iget-object p3, p3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    iget-object p4, p1, Lida;->a:Ljava/lang/Object;

    sget-object p5, Lgyb;->b:Lgyb;

    if-ne p4, p5, :cond_0

    iget-boolean p4, p1, Lida;->f:Z

    if-nez p4, :cond_0

    check-cast p3, Lhzo;

    invoke-virtual {p3}, Lhzo;->h()V

    :cond_0
    iget-boolean p3, p1, Lida;->f:Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p1, Lida;->a:Ljava/lang/Object;

    invoke-virtual {p0, p3}, Licy;->e(Ljava/lang/Object;)V

    iget-object p3, p0, Licy;->n:Landroid/content/Context;

    invoke-static {p3}, Lnom;->e(Landroid/content/Context;)V

    iget-object p3, p0, Licy;->n:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p1, p1, Lida;->b:Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const p1, 0x7f1402b6

    invoke-virtual {p3, p1, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Licy;->o:Landroid/os/Handler;

    new-instance p2, Licv;

    invoke-direct {p2, p0, p5}, Licv;-><init>(Licy;I)V

    sget-object p3, Licy;->m:Lj$/time/Duration;

    invoke-virtual {p3}, Lj$/time/Duration;->toMillis()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
