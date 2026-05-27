.class public final Lbby;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbby;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Laks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbby;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lamt;Loxq;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->b:Ljava/lang/Object;

    sget p1, Lamr;->a:I

    sget-object p1, Lana;->a:[[S

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbby;->b:Ljava/lang/Object;

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbby;-><init>([B)V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    new-instance v0, Lajg;

    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Lajg;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lbby;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lajb;->a()Landroid/text/Editable$Factory;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    new-instance p2, Lbkb;

    invoke-direct {p2, p1}, Lbkb;-><init>(Landroid/widget/EditText;)V

    iput-object p2, p0, Lbby;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbby;->b:Ljava/lang/Object;

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldqx;Lwm;[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lomk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lavs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Ldqx;[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Ldqx;[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbby;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lbby;->b:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lbby;->a:Ljava/lang/Object;

    return-void
.end method

.method private static final G(Lolz;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lolz;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    return v0
.end method

.method public static final f(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final g(Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    return p0
.end method

.method public static final h(Ljava/lang/reflect/Method;Lonx;)Z
    .locals 0

    check-cast p1, Lona;

    iget-object p1, p1, Lona;->d:Ljava/lang/Class;

    invoke-static {p0, p1}, Lbby;->f(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static final l(II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v1, p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v2, v4

    if-le v2, p1, :cond_3

    add-int/2addr v3, v4

    :cond_3
    return v3
.end method

.method public static final n(Landroid/text/method/KeyListener;)Z
    .locals 0

    instance-of p0, p0, Landroid/text/method/NumberKeyListener;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final o(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    invoke-static {p0}, Lbby;->n(Landroid/text/method/KeyListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lajd;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/text/method/NumberKeyListener;

    if-nez v0, :cond_2

    new-instance v0, Lajd;

    invoke-direct {v0, p0}, Lajd;-><init>(Landroid/text/method/KeyListener;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public final A(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->A(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final B(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->B(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final C(Lbw;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lbby;->C(Lbw;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnom;

    if-eqz p4, :cond_1

    iget-boolean p2, p2, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final D(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->D(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final E(Lbbx;)Lbkb;
    .locals 2

    iget-object v0, p0, Lbby;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbby;->a:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbkb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final F(Lbbx;)Lbkb;
    .locals 3

    iget-object v0, p0, Lbby;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbby;->a:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lbkb;

    invoke-direct {v2, p1}, Lbkb;-><init>(Lbbx;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    check-cast v2, Lbkb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lbby;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbby;->a:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbbx;

    iget-object v4, v4, Lbbx;->a:Ljava/lang/String;

    invoke-static {v4, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbx;

    iget-object v3, p0, Lbby;->a:Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lljr;->aj(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final b(Lbbx;)Z
    .locals 2

    iget-object v0, p0, Lbby;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbby;->a:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 3

    new-instance v0, Lpo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lpo;-><init>(Lbby;I[B[B)V

    invoke-static {v0}, Lbby;->G(Lolz;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lpo;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1, v2, v2}, Lpo;-><init>(Lbby;I[B[B)V

    invoke-static {v0}, Lbby;->G(Lolz;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lpo;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, v2, v2}, Lpo;-><init>(Lbby;I[B[B)V

    invoke-static {v0}, Lbby;->G(Lolz;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lpo;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, v2, v2}, Lpo;-><init>(Lbby;I[B[B)V

    invoke-static {v0}, Lbby;->G(Lolz;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v0

    invoke-interface {v0}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-object v2
.end method

.method public final d()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    const-string v1, "androidx.window.extensions.WindowExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    const-string v1, "androidx.window.extensions.layout.WindowLayoutComponent"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final i(Ljava/lang/String;JLoku;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lsu;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lsu;

    iget v1, v0, Lsu;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lsu;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lsu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1, v1}, Lsu;-><init>(Lbby;Loku;[B[B)V

    :goto_0
    iget-object p4, v0, Lsu;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lsu;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p4, Lsv;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lsv;-><init>(Lbby;Ljava/lang/String;Loku;[B[B)V

    const/4 p1, 0x1

    iput p1, v0, Lsu;->b:I

    invoke-static {p2, p3, p4, v0}, Lolp;->Q(JLomo;Loku;)Ljava/lang/Object;

    move-result-object p4

    if-eq p4, v1, :cond_2

    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lbby;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final m(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lfr;->i:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Lbkb;

    iget-object p1, p1, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Lbby;

    iget-object p1, p1, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Lajg;

    iget-boolean p2, p1, Lajg;->a:Z

    if-eq p2, v1, :cond_2

    iput-boolean v1, p1, Lajg;->a:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Laix;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final p(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Lbby;->b:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    instance-of v1, p1, Lajc;

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Lajc;

    check-cast v0, Lbby;

    iget-object v0, v0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, v0, p1}, Lajc;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;)V

    return-object v1
.end method

.method public final q(Lbw;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lbby;->q(Lbw;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnom;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final r(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v1, v0, Lcq;->i:Lce;

    iget-object v1, v1, Lce;->c:Landroid/content/Context;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->r(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final s(Lbw;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lbby;->s(Lbw;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnom;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final t(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->t(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final u(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->u(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final v(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->v(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final w(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v1, v0, Lcq;->i:Lce;

    iget-object v1, v1, Lce;->c:Landroid/content/Context;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->w(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final x(Lbw;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lbby;->x(Lbw;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnom;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final y(Lbw;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbby;->y(Lbw;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnom;

    if-eqz p2, :cond_1

    iget-boolean v0, v0, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final z(Lbw;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbby;->a:Ljava/lang/Object;

    check-cast v0, Lcq;

    iget-object v0, v0, Lcq;->k:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget-object v0, v0, Lcq;->v:Lbby;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lbby;->z(Lbw;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbby;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnom;

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Lnom;->a:Z

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lnom;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
