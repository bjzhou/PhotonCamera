.class public final Laks;
.super Ljava/lang/Object;


# instance fields
.field public a:Lakr;

.field private b:Lqn;

.field private final c:Ljava/lang/ref/WeakReference;

.field private d:I

.field private e:Z

.field private f:Z

.field private final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Lakv;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Laks;-><init>()V

    new-instance v0, Lqn;

    invoke-direct {v0}, Lqn;-><init>()V

    iput-object v0, p0, Laks;->b:Lqn;

    sget-object v0, Lakr;->b:Lakr;

    iput-object v0, p0, Laks;->a:Lakr;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laks;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laks;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lqk;->b()Lqk;

    move-result-object v0

    invoke-virtual {v0}, Lqk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be called on the main thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final f(Laku;)Lakr;
    .locals 3

    iget-object v0, p0, Laks;->b:Lqn;

    invoke-virtual {v0, p1}, Lqn;->c(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqq;

    iget-object p1, p1, Lqq;->d:Lqq;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lqq;->b:Ljava/lang/Object;

    check-cast p1, Lakw;

    iget-object p1, p1, Lakw;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Laks;->g:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laks;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lakr;

    goto :goto_2

    :cond_2
    :goto_2
    iget-object v0, p0, Laks;->a:Lakr;

    check-cast p1, Lakr;

    invoke-static {v0, p1}, Labw;->b(Lakr;Lakr;)Lakr;

    move-result-object p1

    invoke-static {p1, v2}, Labw;->b(Lakr;Lakr;)Lakr;

    move-result-object p1

    return-object p1
.end method

.method private final g(Lakr;)V
    .locals 2

    iget-object v0, p0, Laks;->a:Lakr;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lakr;->b:Lakr;

    if-ne v0, v1, :cond_2

    sget-object v0, Lakr;->a:Lakr;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no event down from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laks;->a:Lakr;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laks;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput-object p1, p0, Laks;->a:Lakr;

    iget-boolean p1, p0, Laks;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Laks;->d:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Laks;->e:Z

    invoke-direct {p0}, Laks;->j()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Laks;->e:Z

    iget-object p1, p0, Laks;->a:Lakr;

    sget-object v0, Lakr;->a:Lakr;

    if-ne p1, v0, :cond_4

    new-instance p1, Lqn;

    invoke-direct {p1}, Lqn;-><init>()V

    iput-object p1, p0, Laks;->b:Lqn;

    return-void

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v0, p0, Laks;->f:Z

    return-void
.end method

.method private final h()V
    .locals 2

    iget-object v0, p0, Laks;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final i(Lakr;)V
    .locals 1

    iget-object v0, p0, Laks;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final j()V
    .locals 6

    iget-object v0, p0, Laks;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakv;

    if-eqz v0, :cond_9

    :cond_0
    iget-object v1, p0, Laks;->b:Lqn;

    iget v2, v1, Lqu;->e:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lqu;->b:Lqq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lqq;->b:Ljava/lang/Object;

    check-cast v4, Lakw;

    iget-object v4, v4, Lakw;->a:Ljava/lang/Object;

    iget-object v1, v1, Lqu;->c:Lqq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lqq;->b:Ljava/lang/Object;

    check-cast v1, Lakw;

    iget-object v1, v1, Lakw;->a:Ljava/lang/Object;

    if-ne v4, v1, :cond_3

    iget-object v5, p0, Laks;->a:Lakr;

    if-eq v5, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v3, p0, Laks;->f:Z

    return-void

    :cond_3
    :goto_1
    iput-boolean v3, p0, Laks;->f:Z

    iget-object v1, p0, Laks;->a:Lakr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v1, v4}, Lakr;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_6

    iget-object v1, p0, Laks;->b:Lqn;

    new-instance v2, Lqp;

    iget-object v4, v1, Lqu;->c:Lqq;

    iget-object v5, v1, Lqu;->b:Lqq;

    invoke-direct {v2, v4, v5}, Lqp;-><init>(Lqq;Lqq;)V

    iget-object v1, v1, Lqu;->d:Ljava/util/WeakHashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Laks;->f:Z

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lqs;->c()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lqq;

    iget-object v3, v1, Lqq;->a:Ljava/lang/Object;

    check-cast v3, Laku;

    iget-object v1, v1, Lqq;->b:Ljava/lang/Object;

    check-cast v1, Lakw;

    :goto_2
    iget-object v4, v1, Lakw;->a:Ljava/lang/Object;

    iget-object v5, p0, Laks;->a:Lakr;

    check-cast v4, Lakr;

    invoke-virtual {v4, v5}, Lakr;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_4

    iget-boolean v4, p0, Laks;->f:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Laks;->b:Lqn;

    invoke-virtual {v4, v3}, Lqn;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lakq;->Companion:Lakp;

    iget-object v4, v1, Lakw;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lakr;

    invoke-virtual {v4}, Lakr;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_3

    :pswitch_0
    sget-object v4, Lakq;->ON_PAUSE:Lakq;

    goto :goto_3

    :pswitch_1
    sget-object v4, Lakq;->ON_STOP:Lakq;

    goto :goto_3

    :pswitch_2
    sget-object v4, Lakq;->ON_DESTROY:Lakq;

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lakq;->a()Lakr;

    move-result-object v5

    invoke-direct {p0, v5}, Laks;->i(Lakr;)V

    invoke-virtual {v1, v0, v4}, Lakw;->a(Lakv;Lakq;)V

    invoke-direct {p0}, Laks;->h()V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no event down from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lakw;->a:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, p0, Laks;->b:Lqn;

    iget-object v1, v1, Lqu;->c:Lqq;

    iget-boolean v2, p0, Laks;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Laks;->a:Lakr;

    iget-object v1, v1, Lqq;->b:Ljava/lang/Object;

    check-cast v1, Lakw;

    iget-object v1, v1, Lakw;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Lakr;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Laks;->b:Lqn;

    invoke-virtual {v1}, Lqu;->e()Lqr;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Laks;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lqr;->a()Ljava/util/Map$Entry;

    move-result-object v2

    check-cast v2, Lqq;

    iget-object v3, v2, Lqq;->a:Ljava/lang/Object;

    check-cast v3, Laku;

    iget-object v2, v2, Lqq;->b:Ljava/lang/Object;

    check-cast v2, Lakw;

    :goto_4
    iget-object v4, v2, Lakw;->a:Ljava/lang/Object;

    iget-object v5, p0, Laks;->a:Lakr;

    check-cast v4, Lakr;

    invoke-virtual {v4, v5}, Lakr;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_7

    iget-boolean v4, p0, Laks;->f:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Laks;->b:Lqn;

    invoke-virtual {v4, v3}, Lqn;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v2, Lakw;->a:Ljava/lang/Object;

    check-cast v4, Lakr;

    invoke-direct {p0, v4}, Laks;->i(Lakr;)V

    sget-object v4, Lakq;->Companion:Lakp;

    iget-object v4, v2, Lakw;->a:Ljava/lang/Object;

    check-cast v4, Lakr;

    invoke-static {v4}, Lakp;->a(Lakr;)Lakq;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, v0, v4}, Lakw;->a(Lakv;Lakq;)V

    invoke-direct {p0}, Laks;->h()V

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no event up from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lakw;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Laku;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "addObserver"

    invoke-static {v0}, Laks;->e(Ljava/lang/String;)V

    iget-object v0, p0, Laks;->a:Lakr;

    sget-object v1, Lakr;->a:Lakr;

    if-ne v0, v1, :cond_0

    sget-object v0, Lakr;->a:Lakr;

    goto :goto_0

    :cond_0
    sget-object v0, Lakr;->b:Lakr;

    :goto_0
    new-instance v1, Lakw;

    invoke-direct {v1, p1, v0}, Lakw;-><init>(Laku;Lakr;)V

    iget-object v0, p0, Laks;->b:Lqn;

    invoke-virtual {v0, p1}, Lqn;->a(Ljava/lang/Object;)Lqq;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v2, Lqq;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lqu;->d(Ljava/lang/Object;Ljava/lang/Object;)Lqq;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lakw;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Laks;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakv;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v2, p0, Laks;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-boolean v2, p0, Laks;->e:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, p1}, Laks;->f(Laku;)Lakr;

    move-result-object v4

    iget v5, p0, Laks;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Laks;->d:I

    :goto_3
    iget-object v3, v1, Lakw;->a:Ljava/lang/Object;

    check-cast v3, Lakr;

    invoke-virtual {v3, v4}, Lakr;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_7

    iget-object v3, p0, Laks;->b:Lqn;

    invoke-virtual {v3, p1}, Lqn;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lakw;->a:Ljava/lang/Object;

    check-cast v3, Lakr;

    invoke-direct {p0, v3}, Laks;->i(Lakr;)V

    sget-object v3, Lakq;->Companion:Lakp;

    iget-object v3, v1, Lakw;->a:Ljava/lang/Object;

    check-cast v3, Lakr;

    invoke-static {v3}, Lakp;->a(Lakr;)Lakq;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v0, v3}, Lakw;->a(Lakv;Lakq;)V

    invoke-direct {p0}, Laks;->h()V

    invoke-direct {p0, p1}, Laks;->f(Laku;)Lakr;

    move-result-object v4

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lakw;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-nez v2, :cond_8

    invoke-direct {p0}, Laks;->j()V

    :cond_8
    iget p1, p0, Laks;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Laks;->d:I

    return-void
.end method

.method public final b(Lakq;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "handleLifecycleEvent"

    invoke-static {v0}, Laks;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lakq;->a()Lakr;

    move-result-object p1

    invoke-direct {p0, p1}, Laks;->g(Lakr;)V

    return-void
.end method

.method public final c(Laku;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "removeObserver"

    invoke-static {v0}, Laks;->e(Ljava/lang/String;)V

    iget-object v0, p0, Laks;->b:Lqn;

    invoke-virtual {v0, p1}, Lqu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Lakr;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "setCurrentState"

    invoke-static {v0}, Laks;->e(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laks;->g(Lakr;)V

    return-void
.end method
