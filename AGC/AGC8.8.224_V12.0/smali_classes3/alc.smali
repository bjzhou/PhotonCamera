.class public Lalc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lqu;

.field public d:I

.field public e:Z

.field public volatile f:Ljava/lang/Object;

.field public volatile g:Ljava/lang/Object;

.field public h:I

.field public final i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lalc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lalc;->b:Ljava/lang/Object;

    new-instance v0, Lqu;

    invoke-direct {v0}, Lqu;-><init>()V

    iput-object v0, p0, Lalc;->c:Lqu;

    const/4 v0, 0x0

    iput v0, p0, Lalc;->d:I

    sget-object v0, Lalc;->a:Ljava/lang/Object;

    iput-object v0, p0, Lalc;->g:Ljava/lang/Object;

    new-instance v1, Lnk;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lnk;-><init>(Lalc;I)V

    iput-object v1, p0, Lalc;->i:Ljava/lang/Runnable;

    iput-object v0, p0, Lalc;->f:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lalc;->h:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lqk;->b()Lqk;

    move-result-object v0

    invoke-virtual {v0}, Lqk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final h(Lalb;)V
    .locals 2

    iget-boolean v0, p1, Lalb;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lalb;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lalb;->d(Z)V

    return-void

    :cond_1
    iget v0, p1, Lalb;->e:I

    iget v1, p0, Lalc;->h:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Lalb;->e:I

    iget-object p1, p1, Lalb;->c:Lale;

    iget-object v0, p0, Lalc;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lale;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final b(Lalb;)V
    .locals 2

    iget-boolean v0, p0, Lalc;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lalc;->k:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lalc;->j:Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalc;->k:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lalc;->h(Lalb;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lalc;->c:Lqu;

    invoke-virtual {p1}, Lqu;->e()Lqr;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lqr;->a()Ljava/util/Map$Entry;

    move-result-object v1

    check-cast v1, Lqq;

    iget-object v1, v1, Lqq;->b:Ljava/lang/Object;

    check-cast v1, Lalb;

    invoke-direct {p0, v1}, Lalc;->h(Lalb;)V

    iget-boolean v1, p0, Lalc;->k:Z

    if-eqz v1, :cond_2

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lalc;->k:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lalc;->j:Z

    return-void
.end method

.method public final c(Lakv;Lale;)V
    .locals 2

    const-string v0, "observe"

    invoke-static {v0}, Lalc;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lakv;->getLifecycle()Laks;

    move-result-object v0

    iget-object v0, v0, Laks;->a:Lakr;

    sget-object v1, Lakr;->a:Lakr;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Lalc;Lakv;Lale;)V

    iget-object v1, p0, Lalc;->c:Lqu;

    invoke-virtual {v1, p2, v0}, Lqu;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lalb;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lalb;->c(Lakv;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Lakv;->getLifecycle()Laks;

    move-result-object p1

    invoke-virtual {p1, v0}, Laks;->a(Laku;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f(Lale;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-static {v0}, Lalc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lalc;->c:Lqu;

    invoke-virtual {v0, p1}, Lqu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lalb;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lalb;->b()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lalb;->d(Z)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
