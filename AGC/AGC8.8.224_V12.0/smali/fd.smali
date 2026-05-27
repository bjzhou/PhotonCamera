.class public final Lfd;
.super Lel;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Lgu;


# static fields
.field private static final L:Lxf;

.field private static final M:[I

.field public static final f:Z

.field public static final g:Z


# instance fields
.field A:Z

.field public B:Lfb;

.field public C:Z

.field D:Z

.field public E:Landroid/content/res/Configuration;

.field public F:I

.field public G:Z

.field public H:I

.field public I:Landroid/graphics/Rect;

.field public J:Landroid/graphics/Rect;

.field public K:Lbkb;

.field private N:Ljava/lang/CharSequence;

.field private O:Lfc;

.field private P:Landroid/widget/TextView;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:[Lfb;

.field private U:Z

.field private V:Z

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:Ley;

.field private aa:Ley;

.field private final ab:Ljava/lang/Runnable;

.field private ac:Z

.field private ad:Landroid/support/v7/app/AppCompatViewInflater;

.field private ae:Landroid/window/OnBackInvokedDispatcher;

.field private af:Landroid/window/OnBackInvokedCallback;

.field private ag:Lfc;

.field public final h:Ljava/lang/Object;

.field final i:Landroid/content/Context;

.field public j:Landroid/view/Window;

.field public k:Lev;

.field public l:Ldy;

.field public m:Landroid/view/MenuInflater;

.field public n:Ljx;

.field o:Lfx;

.field public p:Landroid/support/v7/widget/ActionBarContextView;

.field public q:Landroid/widget/PopupWindow;

.field public r:Ljava/lang/Runnable;

.field public s:Z

.field public t:Z

.field u:Landroid/view/ViewGroup;

.field public v:Landroid/view/View;

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxf;

    invoke-direct {v0}, Lxf;-><init>()V

    sput-object v0, Lfd;->L:Lxf;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lfd;->M:[I

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "robolectric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lfd;->f:Z

    sput-boolean v1, Lfd;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Lel;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfd;->K:Lbkb;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfd;->s:Z

    const/16 v1, -0x64

    iput v1, p0, Lfd;->W:I

    new-instance v2, Lbe;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lbe;-><init>(Lfd;I)V

    iput-object v2, p0, Lfd;->ab:Ljava/lang/Runnable;

    iput-object p1, p0, Lfd;->i:Landroid/content/Context;

    iput-object p3, p0, Lfd;->h:Ljava/lang/Object;

    instance-of p3, p3, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Lei;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Lei;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lei;->j()Lel;

    move-result-object p1

    check-cast p1, Lfd;

    iget p1, p1, Lfd;->W:I

    iput p1, p0, Lfd;->W:I

    :cond_2
    iget p1, p0, Lfd;->W:I

    if-ne p1, v1, :cond_3

    sget-object p1, Lfd;->L:Lxf;

    iget-object p3, p0, Lfd;->h:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lfd;->W:I

    iget-object p3, p0, Lfd;->h:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, p2}, Lfd;->S(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lio;->f()V

    return-void
.end method

.method private final Q(Landroid/content/Context;)Ley;
    .locals 1

    iget-object v0, p0, Lfd;->aa:Ley;

    if-nez v0, :cond_0

    new-instance v0, Lew;

    invoke-direct {v0, p0, p1}, Lew;-><init>(Lfd;Landroid/content/Context;)V

    iput-object v0, p0, Lfd;->aa:Ley;

    :cond_0
    iget-object p1, p0, Lfd;->aa:Ley;

    return-object p1
.end method

.method private final R(Landroid/content/Context;)Ley;
    .locals 3

    iget-object v0, p0, Lfd;->Z:Ley;

    if-nez v0, :cond_1

    new-instance v0, Lez;

    sget-object v1, Lva;->d:Lva;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lva;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lva;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lva;->d:Lva;

    :cond_0
    sget-object p1, Lva;->d:Lva;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lez;-><init>(Lfd;Lva;[B[B)V

    iput-object v0, p0, Lfd;->Z:Ley;

    :cond_1
    iget-object p1, p0, Lfd;->Z:Ley;

    return-object p1
.end method

.method private final S(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Lev;

    if-nez v2, :cond_3

    new-instance v1, Lev;

    invoke-direct {v1, p0, v0}, Lev;-><init>(Lfd;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lfd;->k:Lev;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    sget-object v1, Lfd;->M:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->y()V

    iput-object p1, p0, Lfd;->j:Landroid/view/Window;

    iget-object p1, p0, Lfd;->ae:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_2

    iget-object p1, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lfd;->h:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Leu;->b(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lfd;->ae:Landroid/window/OnBackInvokedDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto :goto_0

    :cond_1
    iput-object v2, p0, Lfd;->ae:Landroid/window/OnBackInvokedDispatcher;

    :goto_0
    invoke-virtual {p0}, Lfd;->E()V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final T()V
    .locals 2

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lfd;->S(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final U(I)V
    .locals 2

    iget v0, p0, Lfd;->H:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lfd;->H:I

    iget-boolean p1, p0, Lfd;->G:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lfd;->ab:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lafb;->i(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lfd;->G:Z

    :cond_0
    return-void
.end method

.method private final V(Lfb;Landroid/view/KeyEvent;)V
    .locals 12

    iget-boolean v0, p1, Lfb;->m:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lfd;->D:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v0, p1, Lfb;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v2, p1, Lfb;->a:I

    iget-object v3, p1, Lfb;->h:Lgw;

    invoke-interface {v0, v2, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lfd;->y(Lfb;Z)V

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lfd;->I(Lfb;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p1, Lfb;->e:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz p2, :cond_9

    iget-boolean v4, p1, Lfb;->n:Z

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    iget-object p2, p1, Lfb;->g:Landroid/view/View;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_8

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne p2, v4, :cond_8

    const/4 v5, -0x1

    goto/16 :goto_7

    :cond_8
    const/4 v5, -0x2

    goto/16 :goto_7

    :cond_9
    :goto_2
    if-nez p2, :cond_d

    invoke-virtual {p0}, Lfd;->s()Landroid/content/Context;

    move-result-object p2

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f040008

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f0404fc

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_b

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_b
    const v4, 0x7f1503ca

    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v4, Lqi;

    invoke-direct {v4, p2, v2}, Lqi;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v4, p1, Lfb;->j:Landroid/content/Context;

    sget-object p2, Lfr;->j:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v4, 0x56

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lfb;->b:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lfb;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lfa;

    iget-object v4, p1, Lfb;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, Lfa;-><init>(Lfd;Landroid/content/Context;)V

    iput-object p2, p1, Lfb;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Lfb;->c:I

    iget-object p2, p1, Lfb;->e:Landroid/view/ViewGroup;

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    return-void

    :cond_d
    iget-boolean v4, p1, Lfb;->n:Z

    if-eqz v4, :cond_e

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_e

    iget-object p2, p1, Lfb;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_e
    :goto_4
    iget-object p2, p1, Lfb;->g:Landroid/view/View;

    if-eqz p2, :cond_f

    iput-object p2, p1, Lfb;->f:Landroid/view/View;

    goto :goto_5

    :cond_f
    iget-object p2, p1, Lfb;->h:Lgw;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lfd;->O:Lfc;

    if-nez p2, :cond_10

    new-instance p2, Lfc;

    invoke-direct {p2, p0, v2}, Lfc;-><init>(Lfd;I)V

    iput-object p2, p0, Lfd;->O:Lfc;

    :cond_10
    iget-object p2, p0, Lfd;->O:Lfc;

    iget-object v4, p1, Lfb;->i:Lgs;

    if-nez v4, :cond_11

    new-instance v4, Lgs;

    iget-object v5, p1, Lfb;->j:Landroid/content/Context;

    invoke-direct {v4, v5}, Lgs;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lfb;->i:Lgs;

    iget-object v4, p1, Lfb;->i:Lgs;

    iput-object p2, v4, Lgs;->e:Lhi;

    iget-object p2, p1, Lfb;->h:Lgw;

    invoke-virtual {p2, v4}, Lgw;->g(Lhj;)V

    :cond_11
    iget-object p2, p1, Lfb;->i:Lgs;

    iget-object v4, p1, Lfb;->e:Landroid/view/ViewGroup;

    iget-object v5, p2, Lgs;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v5, :cond_13

    iget-object v5, p2, Lgs;->b:Landroid/view/LayoutInflater;

    const v6, 0x7f0e000d

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v4, p2, Lgs;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v4, p2, Lgs;->f:Lgr;

    if-nez v4, :cond_12

    new-instance v4, Lgr;

    invoke-direct {v4, p2}, Lgr;-><init>(Lgs;)V

    iput-object v4, p2, Lgs;->f:Lgr;

    :cond_12
    iget-object v4, p2, Lgs;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v5, p2, Lgs;->f:Lgr;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p2, Lgs;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object p2, p2, Lgs;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object p2, p1, Lfb;->f:Landroid/view/View;

    iget-object p2, p1, Lfb;->f:Landroid/view/View;

    if-eqz p2, :cond_1a

    :goto_5
    iget-object p2, p1, Lfb;->f:Landroid/view/View;

    if-nez p2, :cond_14

    goto/16 :goto_8

    :cond_14
    iget-object p2, p1, Lfb;->g:Landroid/view/View;

    if-eqz p2, :cond_15

    goto :goto_6

    :cond_15
    iget-object p2, p1, Lfb;->i:Lgs;

    invoke-virtual {p2}, Lgs;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_1a

    :goto_6
    iget-object p2, p1, Lfb;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_16

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v4, p1, Lfb;->b:I

    iget-object v5, p1, Lfb;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v4, p1, Lfb;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_17

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Lfb;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v4, p1, Lfb;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Lfb;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lfb;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p1, Lfb;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const/4 v5, -0x2

    goto :goto_7

    :cond_18
    const/4 v5, -0x2

    :goto_7
    iput-boolean v2, p1, Lfb;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Lfb;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Lfb;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Lfb;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Lfb;->m:Z

    iget p1, p1, Lfb;->a:I

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lfd;->E()V

    :cond_19
    return-void

    :cond_1a
    :goto_8
    iput-boolean v1, p1, Lfb;->n:Z

    return-void

    :cond_1b
    :goto_9
    return-void
.end method

.method private final W()V
    .locals 2

    iget-boolean v0, p0, Lfd;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lfd;->K:Lbkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbkb;->n()V

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 9

    iget-boolean v0, p0, Lfd;->t:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    sget-object v1, Lfr;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x7e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lfd;->p(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lfd;->p(I)V

    :cond_1
    :goto_0
    const/16 v1, 0x76

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lfd;->p(I)V

    :cond_2
    const/16 v1, 0x77

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lfd;->p(I)V

    :cond_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lfd;->z:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lfd;->T()V

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lfd;->A:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lfd;->z:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Lfd;->x:Z

    iput-boolean v3, p0, Lfd;->w:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v0, p0, Lfd;->w:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f04000f

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Lqi;

    iget-object v7, p0, Lfd;->i:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lqi;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lfd;->i:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ljx;

    iput-object v1, p0, Lfd;->n:Ljx;

    invoke-virtual {p0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Ljx;->n(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Lfd;->x:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lfd;->n:Ljx;

    invoke-interface {v1, v2}, Ljx;->c(I)V

    :cond_6
    iget-boolean v1, p0, Lfd;->Q:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lfd;->n:Ljx;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljx;->c(I)V

    :cond_7
    iget-boolean v1, p0, Lfd;->R:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lfd;->n:Ljx;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljx;->c(I)V

    goto :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Lfd;->y:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0e0016

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v1, 0x7f0e0015

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_1e

    new-instance v1, Lem;

    invoke-direct {v1, p0}, Lem;-><init>(Lfd;)V

    invoke-static {v0, v1}, Lafh;->n(Landroid/view/View;Laew;)V

    iget-object v1, p0, Lfd;->n:Ljx;

    if-nez v1, :cond_c

    const v1, 0x7f0b039e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfd;->P:Landroid/widget/TextView;

    :cond_c
    sget-object v1, Lnw;->a:Ljava/lang/reflect/Method;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "makeOptionalFitsSystemWindows"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_d
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_3
    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v2, p0, Lfd;->j:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_f

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v2, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v2, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lfd;)V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iput-object v0, p0, Lfd;->u:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lfd;->v()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lfd;->n:Ljx;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Ljx;->o(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_10
    iget-object v1, p0, Lfd;->l:Ldy;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Ldy;->j(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_11
    iget-object v1, p0, Lfd;->P:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_5
    iget-object v0, p0, Lfd;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v8, v0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0}, Lafe;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    :cond_13
    iget-object v1, p0, Lfd;->i:Landroid/content/Context;

    sget-object v2, Lfr;->j:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    if-nez v2, :cond_14

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    :cond_14
    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    const/16 v6, 0x7c

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    if-nez v2, :cond_15

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    :cond_15
    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    const/16 v6, 0x7d

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    if-nez v6, :cond_16

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    :cond_16
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    if-nez v6, :cond_18

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    :cond_18
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    if-nez v6, :cond_1a

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    :cond_1a
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1b
    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    if-nez v6, :cond_1c

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    :cond_1c
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    iput-boolean v5, p0, Lfd;->t:Z

    invoke-virtual {p0, v3}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-boolean v1, p0, Lfd;->D:Z

    if-nez v1, :cond_20

    iget-object v0, v0, Lfb;->h:Lgw;

    if-nez v0, :cond_20

    invoke-direct {p0, v4}, Lfd;->U(I)V

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfd;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfd;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfd;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfd;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lfd;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method public final C()V
    .locals 3

    invoke-virtual {p0}, Lfd;->B()V

    iget-boolean v0, p0, Lfd;->w:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfd;->l:Ldy;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Lfq;

    iget-object v1, p0, Lfd;->h:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lfd;->x:Z

    invoke-direct {v0, v1, v2}, Lfq;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lfd;->l:Ldy;

    goto :goto_0

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Lfq;

    iget-object v1, p0, Lfd;->h:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lfq;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lfd;->l:Ldy;

    :cond_2
    :goto_0
    iget-object v0, p0, Lfd;->l:Ldy;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lfd;->ac:Z

    invoke-virtual {v0, v1}, Ldy;->f(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public final D(Lgw;)V
    .locals 5

    iget-object p1, p0, Lfd;->n:Ljx;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljx;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lfd;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfd;->n:Ljx;

    invoke-interface {p1}, Ljx;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    invoke-virtual {p0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lfd;->n:Ljx;

    invoke-interface {v2}, Ljx;->s()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Lfd;->n:Ljx;

    invoke-interface {v0}, Ljx;->q()Z

    iget-boolean v0, p0, Lfd;->D:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-object v0, v0, Lfb;->h:Lgw;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lfd;->D:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lfd;->G:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lfd;->H:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lfd;->ab:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lfd;->ab:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-object v2, v0, Lfb;->h:Lgw;

    if-eqz v2, :cond_3

    iget-boolean v4, v0, Lfb;->o:Z

    if-nez v4, :cond_3

    iget-object v4, v0, Lfb;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lfb;->h:Lgw;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lfd;->n:Ljx;

    invoke-interface {p1}, Ljx;->u()Z

    return-void

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lfd;->M(I)Lfb;

    move-result-object p1

    iput-boolean v0, p1, Lfb;->n:Z

    invoke-virtual {p0, p1, v1}, Lfd;->y(Lfb;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfd;->V(Lfb;Landroid/view/KeyEvent;)V

    return-void
.end method

.method final E()V
    .locals 2

    iget-object v0, p0, Lfd;->ae:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-boolean v0, v0, Lfb;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfd;->o:Lfx;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lfd;->af:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Lfd;->ae:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Leu;->a(Ljava/lang/Object;Lfd;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Lfd;->af:Landroid/window/OnBackInvokedCallback;

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lfd;->af:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lfd;->ae:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v1, v0}, Leu;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method final F(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v1, v0, Laen;

    if-nez v1, :cond_0

    instance-of v0, v0, Lff;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lafq;->a:[I

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lfd;->k:Lev;

    iget-object v1, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    :try_start_0
    iput-boolean v3, v0, Lev;->a:Z

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v0, Lev;->a:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    iput-boolean v2, v0, Lev;->a:Z

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-boolean v1, v0, Lfb;->m:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v0, p1}, Lfd;->I(Lfb;Landroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_8

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lfd;->U:Z

    goto/16 :goto_8

    :cond_6
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_8

    :sswitch_2
    iget-object v0, p0, Lfd;->o:Lfx;

    if-eqz v0, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p0, v2}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-object v1, p0, Lfd;->n:Ljx;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljx;->p()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lfd;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lfd;->n:Ljx;

    invoke-interface {v1}, Ljx;->s()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lfd;->D:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lfd;->I(Lfb;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lfd;->n:Ljx;

    invoke-interface {p1}, Ljx;->u()Z

    move-result p1

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lfd;->n:Ljx;

    invoke-interface {p1}, Ljx;->q()Z

    move-result p1

    goto :goto_4

    :cond_9
    iget-boolean v1, v0, Lfb;->m:Z

    if-nez v1, :cond_d

    iget-boolean v4, v0, Lfb;->l:Z

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    iget-boolean v1, v0, Lfb;->k:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lfb;->o:Z

    if-eqz v1, :cond_b

    iput-boolean v2, v0, Lfb;->k:Z

    invoke-virtual {p0, v0, p1}, Lfd;->I(Lfb;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-direct {p0, v0, p1}, Lfd;->V(Lfb;Landroid/view/KeyEvent;)V

    goto :goto_5

    :cond_c
    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    :goto_3
    invoke-virtual {p0, v0, v3}, Lfd;->y(Lfb;Z)V

    move p1, v1

    :goto_4
    if-eqz p1, :cond_f

    :goto_5
    iget-object p1, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    :goto_6
    const/4 v2, 0x1

    goto :goto_8

    :sswitch_3
    invoke-virtual {p0}, Lfd;->G()Z

    move-result p1

    if-eqz p1, :cond_10

    :goto_7
    const/4 v2, 0x1

    :cond_10
    :goto_8
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public final G()Z
    .locals 5

    iget-boolean v0, p0, Lfd;->U:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lfd;->U:Z

    invoke-virtual {p0, v1}, Lfd;->M(I)Lfb;

    move-result-object v2

    iget-boolean v3, v2, Lfb;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Lfd;->y(Lfb;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lfd;->o:Lfx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfx;->f()V

    return v4

    :cond_2
    invoke-virtual {p0}, Lfd;->b()Ldy;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ldy;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public final H(Lgw;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lfd;->D:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lgw;->a()Lgw;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfd;->t(Landroid/view/Menu;)Lfb;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lfb;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final I(Lfb;Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Lfd;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lfb;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lfd;->B:Lfb;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lfd;->y(Lfb;Z)V

    :cond_2
    invoke-virtual {p0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lfb;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lfb;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Lfb;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_6

    iget-object v5, p0, Lfd;->n:Ljx;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljx;->m()V

    :cond_6
    iget-object v5, p1, Lfb;->g:Landroid/view/View;

    if-nez v5, :cond_1b

    if-eqz v3, :cond_7

    iget-object v5, p0, Lfd;->l:Ldy;

    instance-of v5, v5, Lfk;

    if-nez v5, :cond_1b

    :cond_7
    iget-object v5, p1, Lfb;->h:Lgw;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v7, p1, Lfb;->o:Z

    if-eqz v7, :cond_15

    :cond_8
    if-nez v5, :cond_10

    iget-object v5, p0, Lfd;->i:Landroid/content/Context;

    iget v7, p1, Lfb;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_e

    :cond_9
    iget-object v4, p0, Lfd;->n:Ljx;

    if-eqz v4, :cond_e

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f04000f

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f040010

    if-eqz v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_1

    :cond_a
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_1
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    new-instance v4, Lqi;

    invoke-direct {v4, v5, v1}, Lqi;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    goto :goto_2

    :cond_d
    goto :goto_2

    :cond_e
    :goto_2
    new-instance v4, Lgw;

    invoke-direct {v4, v5}, Lgw;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lgw;->b:Lgu;

    invoke-virtual {p1, v4}, Lfb;->a(Lgw;)V

    iget-object v4, p1, Lfb;->h:Lgw;

    if-eqz v4, :cond_f

    goto :goto_3

    :cond_f
    return v1

    :cond_10
    :goto_3
    if-eqz v3, :cond_12

    iget-object v4, p0, Lfd;->n:Ljx;

    if-eqz v4, :cond_12

    iget-object v5, p0, Lfd;->ag:Lfc;

    if-nez v5, :cond_11

    new-instance v5, Lfc;

    invoke-direct {v5, p0, v2}, Lfc;-><init>(Lfd;I)V

    iput-object v5, p0, Lfd;->ag:Lfc;

    :cond_11
    iget-object v5, p1, Lfb;->h:Lgw;

    iget-object v7, p0, Lfd;->ag:Lfc;

    invoke-interface {v4, v5, v7}, Ljx;->l(Landroid/view/Menu;Lhi;)V

    :cond_12
    iget-object v4, p1, Lfb;->h:Lgw;

    invoke-virtual {v4}, Lgw;->s()V

    iget v4, p1, Lfb;->a:I

    iget-object v5, p1, Lfb;->h:Lgw;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p1, v6}, Lfb;->a(Lgw;)V

    if-eqz v3, :cond_13

    iget-object p1, p0, Lfd;->n:Ljx;

    if-eqz p1, :cond_13

    iget-object p2, p0, Lfd;->ag:Lfc;

    invoke-interface {p1, v6, p2}, Ljx;->l(Landroid/view/Menu;Lhi;)V

    :cond_13
    return v1

    :cond_14
    iput-boolean v1, p1, Lfb;->o:Z

    :cond_15
    iget-object v4, p1, Lfb;->h:Lgw;

    invoke-virtual {v4}, Lgw;->s()V

    iget-object v4, p1, Lfb;->p:Landroid/os/Bundle;

    if-eqz v4, :cond_16

    iget-object v5, p1, Lfb;->h:Lgw;

    invoke-virtual {v5, v4}, Lgw;->n(Landroid/os/Bundle;)V

    iput-object v6, p1, Lfb;->p:Landroid/os/Bundle;

    :cond_16
    iget-object v4, p1, Lfb;->g:Landroid/view/View;

    iget-object v5, p1, Lfb;->h:Lgw;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz v3, :cond_17

    iget-object p2, p0, Lfd;->n:Ljx;

    if-eqz p2, :cond_17

    iget-object v0, p0, Lfd;->ag:Lfc;

    invoke-interface {p2, v6, v0}, Ljx;->l(Landroid/view/Menu;Lhi;)V

    :cond_17
    iget-object p1, p1, Lfb;->h:Lgw;

    invoke-virtual {p1}, Lgw;->r()V

    return v1

    :cond_18
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_4

    :cond_19
    const/4 p2, -0x1

    :goto_4
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1a

    const/4 p2, 0x1

    goto :goto_5

    :cond_1a
    const/4 p2, 0x0

    :goto_5
    iget-object v0, p1, Lfb;->h:Lgw;

    invoke-virtual {v0, p2}, Lgw;->setQwertyMode(Z)V

    iget-object p2, p1, Lfb;->h:Lgw;

    invoke-virtual {p2}, Lgw;->r()V

    :cond_1b
    iput-boolean v2, p1, Lfb;->k:Z

    iput-boolean v1, p1, Lfb;->l:Z

    iput-object p1, p0, Lfd;->B:Lfb;

    return v2
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Lfd;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfd;->u:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lafe;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfd;->O(Z)V

    return-void
.end method

.method public final L(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lfd;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    sget-object v2, Lfr;->j:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x74

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Lfd;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v0, p0, Lfd;->ad:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Lfd;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    :cond_1
    :goto_0
    iget-object v0, p0, Lfd;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    sget-object v2, Lfr;->y:[I

    invoke-virtual {p2, p3, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_3

    instance-of v2, p2, Lqi;

    if-eqz v2, :cond_2

    move-object v2, p2

    check-cast v2, Lqi;

    iget v2, v2, Lqi;->a:I

    if-eq v2, v4, :cond_3

    :cond_2
    new-instance v2, Lqi;

    invoke-direct {v2, p2, v4}, Lqi;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    move-object v2, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_4
    goto/16 :goto_2

    :sswitch_0
    const-string v3, "Button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "EditText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "CheckBox"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    goto/16 :goto_3

    :sswitch_4
    const-string v3, "ImageView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_5
    const-string v3, "ToggleButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xd

    goto :goto_3

    :sswitch_6
    const-string v3, "RadioButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    goto :goto_3

    :sswitch_7
    const-string v4, "Spinner"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :sswitch_8
    const-string v3, "SeekBar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xc

    goto :goto_3

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_a
    const-string v3, "TextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_b
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    goto :goto_3

    :sswitch_c
    const-string v3, "CheckedTextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    goto :goto_3

    :sswitch_d
    const-string v3, "RatingBar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xb

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    move-object v3, v4

    goto :goto_4

    :pswitch_0
    new-instance v3, Lju;

    invoke-direct {v3, v2, p3}, Lju;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_1
    new-instance v3, Lix;

    invoke-direct {v3, v2, p3}, Lix;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_2
    new-instance v3, Liw;

    invoke-direct {v3, v2, p3}, Liw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_3
    new-instance v3, Lis;

    invoke-direct {v3, v2, p3}, Lis;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lii;

    move-result-object v3

    goto :goto_4

    :pswitch_5
    new-instance v3, Lil;

    invoke-direct {v3, v2, p3}, Lil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Liv;

    move-result-object v3

    goto :goto_4

    :pswitch_7
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lik;

    move-result-object v3

    goto :goto_4

    :pswitch_8
    new-instance v3, Liq;

    invoke-direct {v3, v2, p3}, Liq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_9
    new-instance v3, Ljj;

    invoke-direct {v3, v2, p3}, Ljj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_a
    new-instance v3, Lip;

    invoke-direct {v3, v2, p3}, Lip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_b
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatButton;

    move-result-object v3

    goto :goto_4

    :pswitch_c
    new-instance v3, Landroid/support/v7/widget/AppCompatImageView;

    invoke-direct {v3, v2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_d
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Ljs;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_9

    if-eq p2, v2, :cond_9

    const-string p2, "view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "class"

    invoke-interface {p3, v4, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :try_start_1
    iget-object p2, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v2, p2, v1

    aput-object p3, p2, v7

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ne p2, v6, :cond_8

    const/4 p2, 0x0

    :goto_5
    if-ge p2, v5, :cond_7

    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->b:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v0, v2, p1, v3}, Landroid/support/v7/app/AppCompatViewInflater;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_6

    iget-object p1, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p1, v1

    aput-object v4, p1, v7

    move-object v4, v3

    goto :goto_6

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_7
    iget-object p1, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p1, v1

    aput-object v4, p1, v7

    goto :goto_6

    :cond_8
    :try_start_2
    invoke-virtual {v0, v2, p1, v4}, Landroid/support/v7/app/AppCompatViewInflater;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p2, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p2, v1

    aput-object v4, p2, v7

    move-object v4, p1

    goto :goto_6

    :catchall_1
    move-exception p1

    iget-object p2, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p2, v1

    aput-object v4, p2, v7

    throw p1

    :catch_0
    move-exception p1

    iget-object p1, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p1, v1

    aput-object v4, p1, v7

    :goto_6
    move-object v3, v4

    :cond_9
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_c

    invoke-static {v3}, Lafa;->a(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_7

    :cond_a
    sget-object p2, Landroid/support/v7/app/AppCompatViewInflater;->a:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance p3, Lfg;

    invoke-direct {p3, v3, p2}, Lfg;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c
    :goto_7
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M(I)Lfb;
    .locals 4

    iget-object v0, p0, Lfd;->T:[Lfb;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lfb;

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v1, p0, Lfd;->T:[Lfb;

    move-object v0, v1

    :goto_1
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Lfb;

    invoke-direct {v1, p1}, Lfb;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final N(Lfb;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lfb;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lfd;->I(Lfb;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lfb;->h:Lgw;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lgw;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final O(Z)V
    .locals 9

    iget-boolean v0, p0, Lfd;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lfd;->q()I

    move-result v0

    iget-object v1, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lfd;->r(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lfd;->i:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lfd;->P(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lfd;->i:Landroid/content/Context;

    iget-boolean v5, p0, Lfd;->Y:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget-object v5, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lfd;->h:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x100c0000

    invoke-virtual {v5, v7, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v2, p0, Lfd;->X:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iput v4, p0, Lfd;->X:I

    :cond_2
    :goto_0
    iput-boolean v6, p0, Lfd;->Y:Z

    iget v2, p0, Lfd;->X:I

    :goto_1
    iget-object v5, p0, Lfd;->E:Landroid/content/res/Configuration;

    if-nez v5, :cond_3

    iget-object v5, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    :cond_3
    iget v7, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-static {v5}, Let;->a(Landroid/content/res/Configuration;)Ladn;

    const/16 v5, 0x200

    if-eq v7, v1, :cond_4

    const/16 v4, 0x200

    goto :goto_2

    :cond_4
    :goto_2
    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v7, v4

    if-eqz v7, :cond_6

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lfd;->C:Z

    if-eqz p1, :cond_6

    sget-boolean p1, Lfd;->f:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lfd;->V:Z

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_6

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lfd;->h:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_a

    and-int/lit16 p1, v2, 0x200

    iget-object v2, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, -0x31

    or-int/2addr v1, v7

    iput v1, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v1, p0, Lfd;->F:I

    if-eqz v1, :cond_7

    iget-object v2, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->setTheme(I)V

    iget-object v1, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, p0, Lfd;->F:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_7
    if-ne p1, v5, :cond_9

    iget-object p1, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_9

    check-cast p1, Landroid/app/Activity;

    instance-of v1, p1, Lakv;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lakv;

    invoke-interface {v1}, Lakv;->getLifecycle()Laks;

    move-result-object v1

    iget-object v1, v1, Laks;->a:Lakr;

    sget-object v2, Lakr;->c:Lakr;

    invoke-virtual {v1, v2}, Lakr;->a(Lakr;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v4}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_3

    :cond_8
    iget-boolean v1, p0, Lfd;->V:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lfd;->D:Z

    if-nez v1, :cond_9

    invoke-virtual {p1, v4}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_9
    :goto_3
    iget-object p1, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v1, p1, Lei;

    if-eqz v1, :cond_a

    check-cast p1, Lei;

    :cond_a
    if-nez v0, :cond_b

    iget-object p1, p0, Lfd;->i:Landroid/content/Context;

    invoke-direct {p0, p1}, Lfd;->R(Landroid/content/Context;)Ley;

    move-result-object p1

    invoke-virtual {p1}, Ley;->d()V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lfd;->Z:Ley;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ley;->c()V

    :cond_c
    const/4 p1, 0x3

    if-ne v0, p1, :cond_d

    iget-object p1, p0, Lfd;->i:Landroid/content/Context;

    invoke-direct {p0, p1}, Lfd;->Q(Landroid/content/Context;)Ley;

    move-result-object p1

    invoke-virtual {p1}, Ley;->d()V

    return-void

    :cond_d
    :goto_4
    iget-object p1, p0, Lfd;->aa:Ley;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ley;->c()V

    :cond_e
    return-void
.end method

.method public final P(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 0

    packed-switch p2, :pswitch_data_0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 p4, 0x0

    iput p4, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_1
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ldy;
    .locals 1

    invoke-virtual {p0}, Lfd;->C()V

    iget-object v0, p0, Lfd;->l:Ldy;

    return-object v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfd;->B()V

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lfd;->B()V

    iget-object v0, p0, Lfd;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lfd;->k:Lev;

    iget-object p2, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lev;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lfd;->l:Ldy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfd;->b()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfd;->U(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lel;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lel;->i(Lel;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lfd;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lfd;->ab:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfd;->D:Z

    iget v0, p0, Lfd;->W:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lfd;->L:Lxf;

    iget-object v1, p0, Lfd;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfd;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lfd;->L:Lxf;

    iget-object v1, p0, Lfd;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lfd;->l:Ldy;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ldy;->e()V

    :cond_3
    iget-object v0, p0, Lfd;->Z:Ley;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ley;->c()V

    :cond_4
    iget-object v0, p0, Lfd;->aa:Ley;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ley;->c()V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lfd;->b()Ldy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldy;->h(Z)V

    :cond_0
    return-void
.end method

.method public final j(I)V
    .locals 2

    invoke-virtual {p0}, Lfd;->B()V

    iget-object v0, p0, Lfd;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lfd;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lfd;->k:Lev;

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lev;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lfd;->B()V

    iget-object v0, p0, Lfd;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lfd;->k:Lev;

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lev;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lfd;->B()V

    iget-object v0, p0, Lfd;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lfd;->k:Lev;

    iget-object p2, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lev;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lfd;->N:Ljava/lang/CharSequence;

    iget-object v0, p0, Lfd;->n:Ljx;

    if-nez v0, :cond_2

    iget-object v0, p0, Lfd;->l:Ldy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ldy;->j(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lfd;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0, p1}, Ljx;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfd;->C:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lfd;->O(Z)V

    invoke-direct {p0}, Lfd;->T()V

    iget-object v1, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lss;->h(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lfd;->l:Ldy;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lfd;->ac:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Ldy;->f(Z)V

    :cond_1
    :goto_1
    sget-object v1, Lel;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {p0}, Lel;->i(Lel;)V

    sget-object v2, Lel;->d:Lxa;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lxa;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lfd;->E:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lfd;->V:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lfd;->L(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lfd;->L(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(I)V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x6c

    if-ne p1, v0, :cond_0

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const/16 p1, 0x6d

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lfd;->A:Z

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lfd;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfd;->w:Z

    :cond_4
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    return-void

    :sswitch_0
    invoke-direct {p0}, Lfd;->W()V

    iput-boolean v1, p0, Lfd;->x:Z

    return-void

    :sswitch_1
    invoke-direct {p0}, Lfd;->W()V

    iput-boolean v1, p0, Lfd;->w:Z

    return-void

    :sswitch_2
    invoke-direct {p0}, Lfd;->W()V

    iput-boolean v1, p0, Lfd;->y:Z

    return-void

    :sswitch_3
    invoke-direct {p0}, Lfd;->W()V

    iput-boolean v1, p0, Lfd;->R:Z

    return-void

    :sswitch_4
    invoke-direct {p0}, Lfd;->W()V

    iput-boolean v1, p0, Lfd;->Q:Z

    return-void

    :sswitch_5
    invoke-direct {p0}, Lfd;->W()V

    iput-boolean v1, p0, Lfd;->A:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public final q()I
    .locals 2

    iget v0, p0, Lfd;->W:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    sget v0, Lel;->b:I

    return v0
.end method

.method final r(Landroid/content/Context;I)I
    .locals 23

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-direct/range {p0 .. p1}, Lfd;->Q(Landroid/content/Context;)Ley;

    move-result-object v0

    check-cast v0, Lew;

    iget-object v0, v0, Lew;->a:Landroid/os/PowerManager;

    invoke-static {v0}, Les;->b(Landroid/os/PowerManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p1}, Lfd;->R(Landroid/content/Context;)Ley;

    move-result-object v0

    check-cast v0, Lez;

    iget-object v0, v0, Lez;->b:Lva;

    iget-object v3, v0, Lva;->a:Ljava/lang/Object;

    check-cast v3, Lfm;

    iget-wide v4, v3, Lfm;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget-boolean v0, v3, Lfm;->a:Z

    goto/16 :goto_7

    :cond_1
    iget-object v4, v0, Lva;->c:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Laae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const-string v4, "network"

    invoke-virtual {v0, v4}, Lva;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    iget-object v6, v0, Lva;->c:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v7}, Laae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const-string v5, "gps"

    invoke-virtual {v0, v5}, Lva;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    goto :goto_1

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gtz v10, :cond_5

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_c

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v5, Lfl;->a:Lfl;

    if-nez v5, :cond_6

    new-instance v5, Lfl;

    invoke-direct {v5}, Lfl;-><init>()V

    sput-object v5, Lfl;->a:Lfl;

    :cond_6
    const-wide/32 v5, -0x5265c00

    add-long v15, v12, v5

    sget-object v10, Lfl;->a:Lfl;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    move-object v14, v10

    invoke-virtual/range {v14 .. v20}, Lfl;->a(JDD)V

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v5, v10

    move-wide v6, v12

    move-object v1, v10

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Lfl;->a(JDD)V

    iget v14, v1, Lfl;->d:I

    iget-wide v10, v1, Lfl;->c:J

    iget-wide v8, v1, Lfl;->b:J

    const-wide/32 v5, 0x5265c00

    add-long v17, v12, v5

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v19

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v21

    move-object v5, v1

    move-wide/from16 v6, v17

    move-wide/from16 v17, v8

    move-wide/from16 v8, v19

    move-wide/from16 v19, v10

    move-wide/from16 v10, v21

    invoke-virtual/range {v5 .. v11}, Lfl;->a(JDD)V

    iget-wide v10, v1, Lfl;->c:J

    const-wide/16 v4, -0x1

    cmp-long v1, v19, v4

    if-eqz v1, :cond_a

    cmp-long v1, v17, v4

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    cmp-long v1, v12, v17

    if-lez v1, :cond_8

    goto :goto_3

    :cond_8
    cmp-long v1, v12, v19

    if-lez v1, :cond_9

    move-wide/from16 v10, v17

    goto :goto_3

    :cond_9
    move-wide/from16 v10, v19

    :goto_3
    const-wide/32 v4, 0xea60

    add-long/2addr v10, v4

    goto :goto_5

    :cond_a
    :goto_4
    const-wide/32 v4, 0x2932e00

    add-long v10, v12, v4

    :goto_5
    if-eq v2, v14, :cond_b

    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    :goto_6
    check-cast v0, Lfm;

    iput-boolean v1, v0, Lfm;->a:Z

    iput-wide v10, v0, Lfm;->b:J

    iget-boolean v0, v3, Lfm;->a:Z

    :goto_7
    if-nez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    const/16 v1, 0x16

    if-ge v0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x2

    return v0

    :cond_e
    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_8
    return v1

    :cond_f
    return v0

    :sswitch_2
    return p2

    :sswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method final s()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lfd;->b()Ldy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldy;->b()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method final t(Landroid/view/Menu;)Lfb;
    .locals 5

    iget-object v0, p0, Lfd;->T:[Lfb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    iget-object v4, v3, Lfb;->h:Lgw;

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final u()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lfd;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lfd;->N:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final w(ILfb;Landroid/view/Menu;)V
    .locals 3

    if-nez p3, :cond_0

    iget-object p3, p2, Lfb;->h:Lgw;

    :cond_0
    iget-boolean p2, p2, Lfb;->m:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lfd;->D:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lfd;->k:Lev;

    iget-object v0, p0, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p2, Lev;->b:Z

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p2, Lev;->b:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p2, Lev;->b:Z

    throw p1

    :cond_1
    return-void
.end method

.method final x(Lgw;)V
    .locals 2

    iget-boolean v0, p0, Lfd;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfd;->S:Z

    iget-object v0, p0, Lfd;->n:Ljx;

    invoke-interface {v0}, Ljx;->a()V

    invoke-virtual {p0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lfd;->D:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lfd;->S:Z

    return-void
.end method

.method final y(Lfb;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget v0, p1, Lfb;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lfd;->n:Ljx;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljx;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lfb;->h:Lgw;

    invoke-virtual {p0, p1}, Lfd;->x(Lgw;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lfd;->i:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Lfb;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lfb;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_2

    iget p2, p1, Lfb;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lfd;->w(ILfb;Landroid/view/Menu;)V

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p1, Lfb;->k:Z

    iput-boolean p2, p1, Lfb;->l:Z

    iput-boolean p2, p1, Lfb;->m:Z

    iput-object v1, p1, Lfb;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lfb;->n:Z

    iget-object p2, p0, Lfd;->B:Lfb;

    if-ne p2, p1, :cond_3

    iput-object v1, p0, Lfd;->B:Lfb;

    :cond_3
    iget p1, p1, Lfb;->a:I

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lfd;->E()V

    :cond_4
    return-void
.end method

.method public final z(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-object v1, v0, Lfb;->h:Lgw;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lfb;->h:Lgw;

    invoke-virtual {v2, v1}, Lgw;->o(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lfb;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lfb;->h:Lgw;

    invoke-virtual {v1}, Lgw;->s()V

    iget-object v1, v0, Lfb;->h:Lgw;

    invoke-virtual {v1}, Lgw;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfb;->o:Z

    iput-boolean v1, v0, Lfb;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lfd;->n:Ljx;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfd;->M(I)Lfb;

    move-result-object v0

    iput-boolean p1, v0, Lfb;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lfd;->I(Lfb;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method
