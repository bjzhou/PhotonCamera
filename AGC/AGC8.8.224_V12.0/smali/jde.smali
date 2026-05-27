.class public Ljde;
.super Ljava/lang/Object;

# interfaces
.implements Ljdi;
.implements Ljpl;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/String;

.field public final e:Ljcy;

.field public final f:Ljdz;

.field public final g:Landroid/os/Looper;

.field public final h:I

.field public final i:Ljdh;

.field protected final j:Ljeq;

.field public final k:Ligo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v2, Ljiz;->a:Ligo;

    sget-object v3, Ljcy;->r:Ljcx;

    sget-object v4, Ljdd;->a:Ljdd;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljtu;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ligo;Ljcy;Ljdd;[B[B[B)V
    .locals 7

    const-string p6, "LifecycleFragmentImpl"

    const-string p7, "SupportLifecycleFragmentImpl"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p8, "Null context is not permitted."

    invoke-static {p1, p8}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p8, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p5, p8}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p8

    const-string v0, "The provided context did not have an application context."

    invoke-static {p8, v0}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p8, p0, Ljde;->c:Landroid/content/Context;

    :try_start_0
    const-class p8, Landroid/content/Context;

    const-string v0, "getAttributionTag"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p8, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p8

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p8, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const/4 p1, 0x0

    move-object v3, p1

    :goto_1
    iput-object v3, p0, Ljde;->d:Ljava/lang/String;

    iput-object p3, p0, Ljde;->k:Ligo;

    iput-object p4, p0, Ljde;->e:Ljcy;

    iget-object p1, p5, Ljdd;->b:Landroid/os/Looper;

    iput-object p1, p0, Ljde;->g:Landroid/os/Looper;

    new-instance p1, Ljdz;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Ljdz;-><init>(Ligo;Ljcy;Ljava/lang/String;[B[B[B)V

    iput-object p1, p0, Ljde;->f:Ljdz;

    new-instance p3, Ljer;

    invoke-direct {p3, p0}, Ljer;-><init>(Ljde;)V

    iput-object p3, p0, Ljde;->i:Ljdh;

    iget-object p3, p0, Ljde;->c:Landroid/content/Context;

    invoke-static {p3}, Ljeq;->c(Landroid/content/Context;)Ljeq;

    move-result-object p3

    iput-object p3, p0, Ljde;->j:Ljeq;

    iget-object p4, p3, Ljeq;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p4

    iput p4, p0, Ljde;->h:I

    iget-object p4, p5, Ljdd;->c:Ljfc;

    if-eqz p2, :cond_9

    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_9

    new-instance p4, Ljew;

    invoke-direct {p4, p2}, Ljew;-><init>(Landroid/app/Activity;)V

    iget-object p2, p4, Ljew;->a:Ljava/lang/Object;

    instance-of p4, p2, Lbz;

    if-eqz p4, :cond_3

    check-cast p2, Lbz;

    sget-object p4, Ljfk;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljfk;

    if-nez p4, :cond_7

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lbz;->bI()Lcq;

    move-result-object p4

    invoke-virtual {p4, p7}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object p4

    check-cast p4, Ljfk;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz p4, :cond_1

    iget-boolean p5, p4, Lbw;->r:Z

    if-eqz p5, :cond_2

    :cond_1
    new-instance p4, Ljfk;

    invoke-direct {p4}, Ljfk;-><init>()V

    invoke-virtual {p2}, Lbz;->bI()Lcq;

    move-result-object p5

    invoke-virtual {p5}, Lcq;->i()Lcx;

    move-result-object p5

    invoke-virtual {p5, p4, p7}, Lcx;->o(Lbw;Ljava/lang/String;)V

    invoke-virtual {p5}, Lcx;->i()V

    :cond_2
    sget-object p5, Ljfk;->a:Ljava/util/WeakHashMap;

    new-instance p6, Ljava/lang/ref/WeakReference;

    invoke-direct {p6, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p2, p6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    sget-object p4, Ljey;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljey;

    if-nez p4, :cond_7

    :cond_4
    :try_start_2
    move-object p4, p2

    check-cast p4, Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p4

    invoke-virtual {p4, p6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p4

    check-cast p4, Ljey;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljey;->isRemoving()Z

    move-result p5

    if-eqz p5, :cond_6

    :cond_5
    new-instance p4, Ljey;

    invoke-direct {p4}, Ljey;-><init>()V

    move-object p5, p2

    check-cast p5, Landroid/app/Activity;

    invoke-virtual {p5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p5

    invoke-virtual {p5, p4, p6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_6
    sget-object p5, Ljey;->a:Ljava/util/WeakHashMap;

    new-instance p6, Ljava/lang/ref/WeakReference;

    invoke-direct {p6, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p2, p6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    const-class p2, Ljel;

    invoke-interface {p4, p2}, Ljex;->c(Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object p2

    check-cast p2, Ljel;

    if-nez p2, :cond_8

    new-instance p2, Ljel;

    invoke-direct {p2, p4, p3}, Ljel;-><init>(Ljex;Ljeq;)V

    goto :goto_3

    :cond_8
    :goto_3
    iget-object p4, p2, Ljel;->e:Lxa;

    invoke-virtual {p4, p1}, Lxa;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljeq;->f(Ljel;)V

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    :goto_4
    iget-object p1, p3, Ljeq;->n:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Ljde;-><init>(Landroid/content/Context;Landroid/app/Activity;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ligo;Ljcy;Ljfc;[B[B[B)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p5, Ljdc;

    invoke-direct {p5}, Ljdc;-><init>()V

    iput-object p4, p5, Ljdc;->b:Ljava/lang/Object;

    invoke-virtual {p5}, Ljdc;->a()Ljdd;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljpi;)V
    .locals 8

    sget-object v2, Ljpj;->a:Ligo;

    sget-object v4, Ljdd;->a:Ljdd;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-void
.end method

.method private final a(ILjfm;)Ljot;
    .locals 9

    new-instance v6, Lkgd;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0}, Lkgd;-><init>([B[B)V

    iget-object v7, p0, Ljde;->j:Ljeq;

    iget v0, p2, Ljfm;->c:I

    invoke-virtual {v7, v6, v0, p0}, Ljeq;->i(Lkgd;ILjde;)V

    new-instance v8, Ljdw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v1, p1

    move-object v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Ljdw;-><init>(ILjfm;Lkgd;[B[B)V

    iget-object p1, v7, Ljeq;->n:Landroid/os/Handler;

    new-instance p2, Llpu;

    iget-object v0, v7, Ljeq;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p2, v8, v0, p0}, Llpu;-><init>(Ljdy;ILjde;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v6, Lkgd;->a:Ljava/lang/Object;

    check-cast p1, Ljot;

    return-object p1
.end method

.method public static i(Ljqy;)V
    .locals 1

    const-string v0, "channel must not be null"

    invoke-static {p0, v0}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c()Ljdz;
    .locals 1

    iget-object v0, p0, Ljde;->f:Ljdz;

    return-object v0
.end method

.method public final d()Ljgd;
    .locals 4

    new-instance v0, Ljgd;

    invoke-direct {v0}, Ljgd;-><init>()V

    iget-object v1, p0, Ljde;->e:Ljcy;

    instance-of v2, v1, Ljcw;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Ljcw;

    invoke-interface {v1}, Ljcw;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljde;->e:Ljcy;

    instance-of v2, v1, Ljcv;

    if-eqz v2, :cond_2

    check-cast v1, Ljcv;

    invoke-interface {v1}, Ljcv;->a()Landroid/accounts/Account;

    move-result-object v3

    goto :goto_0

    :cond_2
    :goto_0
    iput-object v3, v0, Ljgd;->a:Ljava/lang/Object;

    iget-object v1, p0, Ljde;->e:Ljcy;

    instance-of v2, v1, Ljcw;

    if-eqz v2, :cond_4

    check-cast v1, Ljcw;

    invoke-interface {v1}, Ljcw;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    iget-object v2, v0, Ljgd;->b:Ljava/lang/Object;

    if-nez v2, :cond_5

    new-instance v2, Lxa;

    invoke-direct {v2}, Lxa;-><init>()V

    iput-object v2, v0, Ljgd;->b:Ljava/lang/Object;

    :cond_5
    iget-object v2, v0, Ljgd;->b:Ljava/lang/Object;

    check-cast v2, Lxa;

    invoke-virtual {v2, v1}, Lxa;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Ljde;->c:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljgd;->d:Ljava/lang/Object;

    iget-object v1, p0, Ljde;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljgd;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final e(Ljfm;)Ljot;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljde;->a(ILjfm;)Ljot;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljez;I)Ljot;
    .locals 3

    iget-object v0, p0, Ljde;->j:Ljeq;

    new-instance v1, Lkgd;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lkgd;-><init>([B[B)V

    invoke-virtual {v0, v1, p2, p0}, Ljeq;->i(Lkgd;ILjde;)V

    new-instance p2, Ljdx;

    invoke-direct {p2, p1, v1, v2, v2}, Ljdx;-><init>(Ljez;Lkgd;[B[B)V

    iget-object p1, v0, Ljeq;->n:Landroid/os/Handler;

    new-instance v2, Llpu;

    iget-object v0, v0, Ljeq;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v2, p2, v0, p0}, Llpu;-><init>(Ljdy;ILjde;)V

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v1, Lkgd;->a:Ljava/lang/Object;

    check-cast p1, Ljot;

    return-object p1
.end method

.method public final g(ILjec;)V
    .locals 2

    iget-boolean v0, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    iput-boolean v1, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Z

    iget-object v0, p0, Ljde;->j:Ljeq;

    new-instance v1, Ljdu;

    invoke-direct {v1, p1, p2}, Ljdu;-><init>(ILjec;)V

    iget-object p1, v0, Ljeq;->n:Landroid/os/Handler;

    new-instance p2, Llpu;

    iget-object v0, v0, Ljeq;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p2, v1, v0, p0}, Llpu;-><init>(Ljdy;ILjde;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final h()Ljot;
    .locals 3

    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object v0

    new-instance v1, Ljpc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljpc;-><init>(I)V

    iput-object v1, v0, Ljfl;->a:Ljfh;

    const/16 v1, 0x1195

    iput v1, v0, Ljfl;->c:I

    invoke-virtual {v0}, Ljfl;->a()Ljfm;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljde;->e(Ljfm;)Ljot;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljfm;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ljde;->a(ILjfm;)Ljot;

    return-void
.end method

.method public final k(Ldja;)V
    .locals 13

    iget-object v0, p1, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Lkxq;

    invoke-virtual {v0}, Lkxq;->a()Ljez;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljde;->j:Ljeq;

    iget-object v1, p1, Ldja;->c:Ljava/lang/Object;

    iget-object v2, p1, Ldja;->a:Ljava/lang/Object;

    iget-object v6, p1, Ldja;->b:Ljava/lang/Object;

    new-instance p1, Lkgd;

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3}, Lkgd;-><init>([B[B)V

    move-object v4, v1

    check-cast v4, Lkxq;

    iget v1, v4, Lkxq;->a:I

    invoke-virtual {v0, p1, v1, p0}, Ljeq;->i(Lkgd;ILjde;)V

    new-instance v1, Ljdv;

    new-instance v12, Ldja;

    move-object v5, v2

    check-cast v5, Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Ldja;-><init>(Lkxq;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;[B[B[B[B[B)V

    const/4 v2, 0x0

    move-object v7, v1

    move-object v8, v12

    move-object v9, p1

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Ljdv;-><init>(Ldja;Lkgd;[B[B[B)V

    iget-object p1, v0, Ljeq;->n:Landroid/os/Handler;

    new-instance v2, Llpu;

    iget-object v0, v0, Ljeq;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v2, v1, v0, p0}, Llpu;-><init>(Ljdy;ILjde;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
