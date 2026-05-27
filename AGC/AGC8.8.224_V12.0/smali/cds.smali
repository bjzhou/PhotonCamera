.class public final Lcds;
.super Ljava/lang/Object;

# interfaces
.implements Lcdp;
.implements Lfaz;
.implements Lezk;
.implements Lfaw;
.implements Lezl;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lcdx;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Landroid/content/DialogInterface$OnClickListener;

.field public final e:Landroid/content/DialogInterface$OnClickListener;

.field public f:Lnph;

.field public g:Leg;

.field public final h:Lbkc;

.field private final i:Lcdq;

.field private final j:Ljuh;

.field private final k:Ljava/util/concurrent/Executor;

.field private final l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcdx;Lfak;Lcdq;Lbkc;Ljuh;Ljava/util/concurrent/Executor;Z[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p9, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p9, Lcdc;

    const/4 p10, 0x3

    invoke-direct {p9, p0, p10}, Lcdc;-><init>(Lcds;I)V

    iput-object p9, p0, Lcds;->d:Landroid/content/DialogInterface$OnClickListener;

    new-instance p9, Lcdc;

    const/4 p10, 0x4

    invoke-direct {p9, p0, p10}, Lcdc;-><init>(Lcds;I)V

    iput-object p9, p0, Lcds;->e:Landroid/content/DialogInterface$OnClickListener;

    const/4 p9, 0x0

    iput-boolean p9, p0, Lcds;->m:Z

    const/4 p9, 0x0

    iput-object p9, p0, Lcds;->g:Leg;

    iput-object p1, p0, Lcds;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcds;->b:Lcdx;

    iput-object p4, p0, Lcds;->i:Lcdq;

    iput-object p5, p0, Lcds;->h:Lbkc;

    iput-object p6, p0, Lcds;->j:Ljuh;

    iput-object p7, p0, Lcds;->k:Ljava/util/concurrent/Executor;

    iput-boolean p8, p0, Lcds;->l:Z

    invoke-static {p6, p3, p0}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-void
.end method

.method private final i(IZ)V
    .locals 3

    iget-object v0, p0, Lcds;->j:Ljuh;

    new-instance v1, Lexy;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lexy;-><init>(Lcds;IZI)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final j()Z
    .locals 1

    iget-boolean v0, p0, Lcds;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcds;->i:Lcdq;

    invoke-virtual {v0}, Lcdq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lnou;
    .locals 2

    iget-object v0, p0, Lcds;->f:Lnph;

    if-nez v0, :cond_1

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcds;->f:Lnph;

    iget-object v0, p0, Lcds;->i:Lcdq;

    invoke-virtual {v0}, Lcdq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcds;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcds;->f:Lnph;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcds;->f:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcds;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnph;->isDone()Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcds;->f:Lnph;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcds;->m:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcds;->i:Lcdq;

    invoke-virtual {v0}, Lcdq;->c()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcds;->g:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcds;->g:Leg;

    invoke-virtual {v0}, Lff;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 9

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcds;->m:Z

    invoke-virtual {p0}, Lcds;->d()V

    iget-object v2, p0, Lcds;->i:Lcdq;

    iget-object v3, v2, Lcdq;->e:Lmvv;

    move-object v4, v3

    check-cast v4, Lmyu;

    iget v4, v4, Lmyu;->c:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcdq;->d:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcdq;->d:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, v2, Lcdq;->d:Ljava/util/Map;

    invoke-virtual {v2, v6}, Lcdq;->a(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcds;->i:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcds;->j()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcds;->f:Lnph;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcds;->m:Z

    iget-boolean v2, p0, Lcds;->l:Z

    if-eqz v2, :cond_5

    const v0, 0x7f140175

    invoke-direct {p0, v0, v1}, Lcds;->i(IZ)V

    return-void

    :cond_5
    iget-object v1, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    return-void

    :cond_6
    iget-object v1, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcds;->i:Lcdq;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcdq;->e:Lmvv;

    move-object v4, v3

    check-cast v4, Lmyu;

    iget v4, v4, Lmyu;->c:I

    :goto_2
    if-ge v0, v4, :cond_9

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcdq;->d:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v1, Lcdq;->d:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, v1, Lcdq;->c:Ljuh;

    new-instance v3, Lbem;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v2, v4}, Lbem;-><init>(Lcdq;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(I[Ljava/lang/String;[I)V
    .locals 6

    const v0, 0x906281f

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    array-length p1, p2

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    array-length p1, p3

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcds;->i:Lcdq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_4

    iget-object v3, p1, Lcdq;->d:Ljava/util/Map;

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcdq;->d:Ljava/util/Map;

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcdq;->d:Ljava/util/Map;

    aget-object v4, p2, v2

    aget v5, p3, v2

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcdq;->c()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p1, p1, Lcdq;->b:Lgzn;

    sget-object p2, Lgzd;->b:Lgzr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcds;->i:Lcdq;

    invoke-virtual {p1}, Lcdq;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcds;->f:Lnph;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const p1, 0x7f140176

    invoke-direct {p0, p1, v1}, Lcds;->i(IZ)V

    return-void

    :cond_7
    :goto_3
    invoke-static {}, Ljuh;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    iget-object p1, p0, Lcds;->k:Ljava/util/concurrent/Executor;

    new-instance p2, Lcdw;

    invoke-direct {p2, p0, v0}, Lcdw;-><init>(Lcds;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PermissionsCheckerImpl.permissionsRequestCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "PermissionsCheckerImpl.permissionsRequestCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
