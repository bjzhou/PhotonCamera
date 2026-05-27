.class public final Lpr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lojv;

.field public b:Lolz;

.field private final c:Ljava/lang/Runnable;

.field private d:Landroid/window/OnBackInvokedCallback;

.field private e:Landroid/window/OnBackInvokedDispatcher;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpr;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpr;->c:Ljava/lang/Runnable;

    new-instance p1, Lojv;

    invoke-direct {p1}, Lojv;-><init>()V

    iput-object p1, p0, Lpr;->a:Lojv;

    :try_start_0
    new-instance p1, Lpo;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lpo;-><init>(Lpr;I)V

    iput-object p1, p0, Lpr;->b:Lolz;

    sget-object p1, Lpp;->a:Lpp;

    new-instance v0, Lpo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpo;-><init>(Lpr;I)V

    invoke-virtual {p1, v0}, Lpp;->a(Lolz;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Lpr;->d:Landroid/window/OnBackInvokedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final a(Lpn;)Lph;
    .locals 2

    iget-object v0, p0, Lpr;->a:Lojv;

    invoke-virtual {v0, p1}, Lojv;->add(Ljava/lang/Object;)Z

    new-instance v0, Lpq;

    invoke-direct {v0, p0, p1}, Lpq;-><init>(Lpr;Lpn;)V

    invoke-virtual {p1, v0}, Lpn;->b(Lph;)V

    invoke-virtual {p0}, Lpr;->d()V

    iget-object v1, p0, Lpr;->b:Lolz;

    iput-object v1, p1, Lpn;->d:Lolz;

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lpr;->a:Lojv;

    iget v1, v0, Lojv;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lpn;

    iget-boolean v2, v2, Lpn;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lpn;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lpn;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lpr;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final c(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lpr;->e:Landroid/window/OnBackInvokedDispatcher;

    invoke-virtual {p0}, Lpr;->d()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lpr;->a:Lojv;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpn;

    iget-boolean v1, v1, Lpn;->b:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpr;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, p0, Lpr;->d:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lpr;->f:Z

    if-nez v0, :cond_4

    sget-object v0, Lpp;->a:Lpp;

    invoke-virtual {v0, v1, v3, v4}, Lpp;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-boolean v2, p0, Lpr;->f:Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lpr;->f:Z

    if-eqz v0, :cond_4

    sget-object v0, Lpp;->a:Lpp;

    invoke-virtual {v0, v1, v4}, Lpp;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lpr;->f:Z

    :cond_4
    return-void
.end method
