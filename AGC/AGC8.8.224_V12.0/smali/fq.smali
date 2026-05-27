.class public final Lfq;
.super Ldy;

# interfaces
.implements Lhw;


# static fields
.field private static final r:Landroid/view/animation/Interpolator;

.field private static final s:Landroid/view/animation/Interpolator;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field public c:Landroid/support/v7/widget/ActionBarContainer;

.field d:Ljy;

.field e:Landroid/support/v7/widget/ActionBarContextView;

.field f:Landroid/view/View;

.field g:Lfp;

.field h:Lfx;

.field i:Lfw;

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lgf;

.field n:Z

.field final o:Laga;

.field final p:Laga;

.field final q:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:Z

.field private final w:Ljava/util/ArrayList;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lfq;->r:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lfq;->s:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Ldy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfq;->w:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lfq;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfq;->k:Z

    iput-boolean v0, p0, Lfq;->y:Z

    new-instance v0, Lfn;

    invoke-direct {v0, p0}, Lfn;-><init>(Lfq;)V

    iput-object v0, p0, Lfq;->o:Laga;

    new-instance v0, Lfo;

    invoke-direct {v0, p0}, Lfo;-><init>(Lfq;)V

    iput-object v0, p0, Lfq;->p:Laga;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lfq;)V

    iput-object v0, p0, Lfq;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lfq;->z(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lfq;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Ldy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfq;->w:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lfq;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfq;->k:Z

    iput-boolean v0, p0, Lfq;->y:Z

    new-instance v0, Lfn;

    invoke-direct {v0, p0}, Lfn;-><init>(Lfq;)V

    iput-object v0, p0, Lfq;->o:Laga;

    new-instance v0, Lfo;

    invoke-direct {v0, p0}, Lfo;-><init>(Lfq;)V

    iput-object v0, p0, Lfq;->p:Laga;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lfq;)V

    iput-object v0, p0, Lfq;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lfq;->z(Landroid/view/View;)V

    return-void
.end method

.method private final A(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1}, Ljy;->v()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1}, Ljy;->v()V

    :goto_0
    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1}, Ljy;->u()V

    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1}, Ljy;->x()V

    iget-object p1, p0, Lfq;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Z

    return-void
.end method

.method static y(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private final z(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0b0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lfq;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iput-object p0, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Lhw;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Lhw;

    iget v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->b:I

    check-cast v1, Lfq;

    iput v2, v1, Lfq;->j:I

    iget v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    invoke-static {v0}, Laff;->c(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0b0036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Ljy;

    if-eqz v1, :cond_1

    check-cast v0, Ljy;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()Ljy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lfq;->d:Ljy;

    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    const v0, 0x7f0b0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ActionBarContainer;

    iput-object p1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, p0, Lfq;->d:Ljy;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {v0}, Ljy;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lfq;->a:Landroid/content/Context;

    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1}, Ljy;->a()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lfq;->u:Z

    :cond_2
    iget-object p1, p0, Lfq;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v1, p0, Lfq;->d:Ljy;

    invoke-interface {v1}, Ljy;->w()V

    invoke-static {p1}, Ldq;->d(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lfq;->A(Z)V

    iget-object p1, p0, Lfq;->a:Landroid/content/Context;

    sget-object v1, Lfr;->a:[I

    const v2, 0x7f04000b

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfq;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->d:Z

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lfq;->n:Z

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->k(Z)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lafh;->l(Landroid/view/View;F)V

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lfq;->d:Ljy;

    invoke-interface {v0}, Ljy;->a()I

    move-result v0

    return v0
.end method

.method public final b()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lfq;->t:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lfq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040010

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lfq;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lfq;->t:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfq;->a:Landroid/content/Context;

    iput-object v0, p0, Lfq;->t:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lfq;->t:Landroid/content/Context;

    return-object v0
.end method

.method public final c(Lfw;)Lfx;
    .locals 2

    iget-object v0, p0, Lfq;->g:Lfp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfp;->f()V

    :cond_0
    iget-object v0, p0, Lfq;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->k(Z)V

    iget-object v0, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    new-instance v0, Lfp;

    iget-object v1, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lfp;-><init>(Lfq;Landroid/content/Context;Lfw;)V

    iget-object p1, v0, Lfp;->a:Lgw;

    invoke-virtual {p1}, Lgw;->s()V

    :try_start_0
    iget-object p1, v0, Lfp;->b:Lfw;

    iget-object v1, v0, Lfp;->a:Lgw;

    invoke-interface {p1, v0, v1}, Lfw;->c(Lfx;Landroid/view/Menu;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lfp;->a:Lgw;

    invoke-virtual {v1}, Lgw;->r()V

    if-eqz p1, :cond_1

    iput-object v0, p0, Lfq;->g:Lfp;

    invoke-virtual {v0}, Lfp;->g()V

    iget-object p1, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->h(Lfx;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lfq;->v(Z)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, v0, Lfp;->a:Lgw;

    invoke-virtual {v0}, Lgw;->r()V

    throw p1
.end method

.method public final d(Z)V
    .locals 2

    iget-boolean v0, p0, Lfq;->v:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lfq;->v:Z

    iget-object p1, p0, Lfq;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lfq;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldx;

    invoke-interface {v1}, Ldx;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lfq;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lfq;->g(Z)V

    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1, v1}, Lfq;->w(II)V

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lfq;->z:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lfq;->m:Lgf;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgf;->a()V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lfq;->d:Ljy;

    invoke-interface {v0, p1}, Ljy;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lfq;->d:Ljy;

    invoke-interface {v0, p1}, Ljy;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lfq;->d:Ljy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljy;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljy;->c()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lfq;->g:Lfp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lfp;->a:Lgw;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lfq;->a:Landroid/content/Context;

    invoke-static {v0}, Ldq;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lfq;->A(Z)V

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Lfq;->w(II)V

    return-void
.end method

.method public final s()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v0}, Lfq;->w(II)V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lfq;->d:Ljy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljy;->h(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lfq;->a:Landroid/content/Context;

    const v1, 0x7f1403ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfq;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final v(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lfq;->x:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfq;->x:Z

    invoke-virtual {p0, v0}, Lfq;->x(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lfq;->x:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lfq;->x:Z

    invoke-virtual {p0, v0}, Lfq;->x(Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, Lafe;->f(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1, v2, v4, v5}, Ljy;->y(IJ)Lbkb;

    move-result-object p1

    iget-object v1, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Landroid/support/v7/widget/ActionBarContextView;->g(IJ)Lbkb;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1, v0, v6, v7}, Ljy;->y(IJ)Lbkb;

    move-result-object v0

    iget-object p1, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v7/widget/ActionBarContextView;->g(IJ)Lbkb;

    move-result-object p1

    :goto_1
    new-instance v1, Lgf;

    invoke-direct {v1}, Lgf;-><init>()V

    iget-object v2, v1, Lgf;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    iget-object p1, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    iget-object p1, v1, Lgf;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lgf;->b()V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1, v2}, Ljy;->l(I)V

    iget-object p1, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    :cond_6
    iget-object p1, p0, Lfq;->d:Ljy;

    invoke-interface {p1, v0}, Ljy;->l(I)V

    iget-object p1, p0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final w(II)V
    .locals 2

    iget-object v0, p0, Lfq;->d:Ljy;

    invoke-interface {v0}, Ljy;->a()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfq;->u:Z

    :cond_0
    iget-object v1, p0, Lfq;->d:Ljy;

    and-int/2addr p1, p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Ljy;->g(I)V

    return-void
.end method

.method public final x(Z)V
    .locals 5

    iget-boolean v0, p0, Lfq;->l:Z

    iget-boolean v1, p0, Lfq;->x:Z

    invoke-static {v0, v1}, Lfq;->y(ZZ)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lfq;->y:Z

    if-nez v0, :cond_c

    iput-boolean v2, p0, Lfq;->y:Z

    iget-object v0, p0, Lfq;->m:Lgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgf;->a()V

    :cond_0
    iget-object v0, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lfq;->j:I

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lfq;->z:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    :cond_1
    iget-object v0, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v0, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_2
    :goto_0
    iget-object p1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    new-instance p1, Lgf;

    invoke-direct {p1}, Lgf;-><init>()V

    iget-object v1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, Lafq;->k(Landroid/view/View;)Lbkb;

    move-result-object v1

    invoke-virtual {v1, v4}, Lbkb;->r(F)V

    iget-object v2, p0, Lfq;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v1, v2}, Lbkb;->B(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    invoke-virtual {p1, v1}, Lgf;->f(Lbkb;)V

    iget-boolean v1, p0, Lfq;->k:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lfq;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lfq;->f:Landroid/view/View;

    invoke-static {v0}, Lafq;->k(Landroid/view/View;)Lbkb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbkb;->r(F)V

    invoke-virtual {p1, v0}, Lgf;->f(Lbkb;)V

    :cond_3
    sget-object v0, Lfq;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lgf;->d(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1}, Lgf;->c()V

    iget-object v0, p0, Lfq;->p:Laga;

    invoke-virtual {p1, v0}, Lgf;->e(Laga;)V

    iput-object p1, p0, Lfq;->m:Lgf;

    invoke-virtual {p1}, Lgf;->b()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionBarContainer;->setAlpha(F)V

    iget-object p1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    iget-boolean p1, p0, Lfq;->k:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lfq;->f:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p1, p0, Lfq;->p:Laga;

    invoke-interface {p1}, Laga;->a()V

    :goto_1
    iget-object p1, p0, Lfq;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_c

    invoke-static {p1}, Laff;->c(Landroid/view/View;)V

    return-void

    :cond_6
    iget-boolean v0, p0, Lfq;->y:Z

    if-eqz v0, :cond_c

    iput-boolean v3, p0, Lfq;->y:Z

    iget-object v0, p0, Lfq;->m:Lgf;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lgf;->a()V

    :cond_7
    iget v0, p0, Lfq;->j:I

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lfq;->z:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    :cond_8
    iget-object v0, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v0, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContainer;->a(Z)V

    new-instance v0, Lgf;

    invoke-direct {v0}, Lgf;-><init>()V

    iget-object v1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    if-eqz p1, :cond_9

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    goto :goto_2

    :cond_9
    :goto_2
    iget-object p1, p0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {p1}, Lafq;->k(Landroid/view/View;)Lbkb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbkb;->r(F)V

    iget-object v2, p0, Lfq;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p1, v2}, Lbkb;->B(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    invoke-virtual {v0, p1}, Lgf;->f(Lbkb;)V

    iget-boolean p1, p0, Lfq;->k:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lfq;->f:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lafq;->k(Landroid/view/View;)Lbkb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbkb;->r(F)V

    invoke-virtual {v0, p1}, Lgf;->f(Lbkb;)V

    :cond_a
    sget-object p1, Lfq;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lgf;->d(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Lgf;->c()V

    iget-object p1, p0, Lfq;->o:Laga;

    invoke-virtual {v0, p1}, Lgf;->e(Laga;)V

    iput-object v0, p0, Lfq;->m:Lgf;

    invoke-virtual {v0}, Lgf;->b()V

    return-void

    :cond_b
    iget-object p1, p0, Lfq;->o:Laga;

    invoke-interface {p1}, Laga;->a()V

    return-void

    :cond_c
    return-void
.end method
