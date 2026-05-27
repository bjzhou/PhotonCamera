.class public final Lafq;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field private static b:Ljava/util/WeakHashMap;

.field private static final c:Laez;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v0, 0x0

    sput-object v0, Lafq;->b:Ljava/util/WeakHashMap;

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lafq;->a:[I

    new-instance v0, Laez;

    invoke-direct {v0}, Laez;-><init>()V

    sput-object v0, Lafq;->c:Laez;

    return-void

    :array_0
    .array-data 4
        0x7f0b0012
        0x7f0b0013
        0x7f0b001e
        0x7f0b0029
        0x7f0b002c
        0x7f0b002d
        0x7f0b002e
        0x7f0b002f
        0x7f0b0030
        0x7f0b0031
        0x7f0b0014
        0x7f0b0015
        0x7f0b0016
        0x7f0b0017
        0x7f0b0018
        0x7f0b0019
        0x7f0b001a
        0x7f0b001b
        0x7f0b001c
        0x7f0b001d
        0x7f0b001f
        0x7f0b0020
        0x7f0b0021
        0x7f0b0022
        0x7f0b0023
        0x7f0b0024
        0x7f0b0025
        0x7f0b0026
        0x7f0b0027
        0x7f0b0028
        0x7f0b002a
        0x7f0b002b
    .end array-data
.end method

.method public static a(Landroid/view/View;)Laei;
    .locals 1

    invoke-static {p0}, Lafn;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Laeg;

    if-eqz v0, :cond_1

    check-cast p0, Laeg;

    iget-object p0, p0, Laeg;->a:Laei;

    return-object p0

    :cond_1
    new-instance v0, Laei;

    invoke-direct {v0, p0}, Laei;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-object v0
.end method

.method public static b(Landroid/view/View;Lago;)Lago;
    .locals 2

    invoke-virtual {p1}, Lago;->e()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Laff;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Lago;->n(Landroid/view/WindowInsets;Landroid/view/View;)Lago;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static c(Landroid/view/View;Lago;)Lago;
    .locals 2

    invoke-virtual {p1}, Lago;->e()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Laff;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Lago;->n(Landroid/view/WindowInsets;Landroid/view/View;)Lago;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static d(Landroid/view/View;)Ljava/util/List;
    .locals 2

    const v0, 0x7f0b0373

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static e(Landroid/view/View;Lagr;)V
    .locals 1

    invoke-static {p0}, Lafq;->a(Landroid/view/View;)Laei;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Laei;

    invoke-direct {v0}, Laei;-><init>()V

    :cond_0
    invoke-static {p0, v0}, Lafq;->g(Landroid/view/View;Laei;)V

    invoke-virtual {p1}, Lagr;->a()I

    move-result v0

    invoke-static {v0, p0}, Lafq;->l(ILandroid/view/View;)V

    invoke-static {p0}, Lafq;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lafq;->j(Landroid/view/View;)V

    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p0}, Lafq;->l(ILandroid/view/View;)V

    invoke-static {p0}, Lafq;->j(Landroid/view/View;)V

    return-void
.end method

.method public static g(Landroid/view/View;Laei;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lafn;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Laeg;

    if-eqz v0, :cond_0

    new-instance p1, Laei;

    invoke-direct {p1}, Laei;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Laei;->c:Landroid/view/View$AccessibilityDelegate;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static h(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p0, p1}, Lafm;->f(Landroid/view/View;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    sget-object p1, Lafq;->c:Laez;

    iget-object v0, p1, Laez;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p0}, Lafe;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Laez;->a(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    sget-object p1, Lafq;->c:Laez;

    iget-object v0, p1, Laez;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-static {p0, p1}, Lafb;->k(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static i(Landroid/view/View;Lagr;Lahc;)V
    .locals 7

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lagr;->a()I

    move-result p1

    invoke-static {p0, p1}, Lafq;->f(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance v6, Lagr;

    const/4 v1, 0x0

    iget v2, p1, Lagr;->N:I

    const/4 v3, 0x0

    iget-object v5, p1, Lagr;->O:Ljava/lang/Class;

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lagr;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lahc;Ljava/lang/Class;)V

    invoke-static {p0, v6}, Lafq;->e(Landroid/view/View;Lagr;)V

    return-void
.end method

.method static j(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lafm;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lafe;->a(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p0, p0, v2}, Lafe;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ViewCompat"

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-eq v1, v0, :cond_4

    const/16 v3, 0x800

    goto :goto_2

    :cond_4
    const/16 v3, 0x20

    :goto_2
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v4, v2}, Lafe;->d(Landroid/view/accessibility/AccessibilityEvent;I)V

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lafm;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lafb;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v1}, Lafb;->o(Landroid/view/View;I)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lafb;->a(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lafb;->o(Landroid/view/View;I)V

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {p0, v4}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_8
    return-void
.end method

.method public static k(Landroid/view/View;)Lbkb;
    .locals 2

    sget-object v0, Lafq;->b:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lafq;->b:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Lafq;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    if-nez v0, :cond_1

    new-instance v0, Lbkb;

    invoke-direct {v0, p0}, Lbkb;-><init>(Landroid/view/View;)V

    sget-object v1, Lafq;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static l(ILandroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lafq;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lagr;

    invoke-virtual {v1}, Lagr;->a()I

    move-result v1

    if-ne v1, p0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
