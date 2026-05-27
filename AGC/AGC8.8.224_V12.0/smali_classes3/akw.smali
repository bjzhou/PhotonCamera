.class public final Lakw;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Laku;Lakr;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lakz;->a:Lakz;

    instance-of v0, p1, Lakt;

    instance-of v1, p1, Lakl;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    move-object v1, p1

    check-cast v1, Lakl;

    check-cast p1, Lakt;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lakl;Lakt;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    check-cast p1, Lakl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lakl;Lakt;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lakt;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lakz;->a:Lakz;

    invoke-virtual {v1, v0}, Lakz;->a(Ljava/lang/Class;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    sget-object v1, Lakz;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p1}, Lakz;->b(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lakm;

    move-result-object p1

    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Lakm;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Lakm;

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    invoke-static {v4, p1}, Lakz;->b(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lakm;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v0, v3}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Lakm;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput-object v0, p0, Lakw;->b:Ljava/lang/Object;

    iput-object p2, p0, Lakw;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 2

    invoke-virtual {p2}, Lakq;->a()Lakr;

    move-result-object v0

    iget-object v1, p0, Lakw;->a:Ljava/lang/Object;

    check-cast v1, Lakr;

    invoke-static {v1, v0}, Labw;->b(Lakr;Lakr;)Lakr;

    move-result-object v1

    iput-object v1, p0, Lakw;->a:Ljava/lang/Object;

    iget-object v1, p0, Lakw;->b:Ljava/lang/Object;

    invoke-interface {v1, p1, p2}, Lakt;->a(Lakv;Lakq;)V

    iput-object v0, p0, Lakw;->a:Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lakw;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, [I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lakw;->a:Ljava/lang/Object;

    return-void
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, Lakw;->b:Ljava/lang/Object;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lakw;->b:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void

    :cond_0
    move-object v2, v0

    check-cast v2, [I

    array-length v3, v2

    if-lt p1, v3, :cond_2

    :goto_0
    if-gt v3, p1, :cond_1

    add-int/2addr v3, v3

    goto :goto_0

    :cond_1
    new-array p1, v3, [I

    iput-object p1, p0, Lakw;->b:Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lakw;->b:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    return-void
.end method
