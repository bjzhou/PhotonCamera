.class public final Lmoc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmza;->a:Lmza;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmoc;->a:Ljava/util/WeakHashMap;

    new-instance v0, Lmnz;

    invoke-direct {v0}, Lmnz;-><init>()V

    sput-object v0, Lmoc;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method

.method static a()Lmnt;
    .locals 1

    sget-object v0, Lmoc;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmob;

    iget-object v0, v0, Lmob;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static b()Lmnt;
    .locals 1

    invoke-static {}, Lmoc;->a()Lmnt;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lmnj;

    invoke-direct {v0}, Lmnj;-><init>()V

    return-object v0
.end method

.method public static c(Lmob;Lmnt;)Lmnt;
    .locals 2

    iget-object v0, p0, Lmob;->b:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lmoa;->a()Z

    move-result v1

    iput-boolean v1, p0, Lmob;->a:Z

    :cond_1
    iget-boolean v1, p0, Lmob;->a:Z

    if-eqz v1, :cond_2

    invoke-static {v0, p1}, Lmoc;->h(Lmnt;Lmnt;)V

    :cond_2
    iput-object p1, p0, Lmob;->b:Ljava/lang/Object;

    iget-object p0, p0, Lmob;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static d()Lmob;
    .locals 1

    sget-object v0, Lmoc;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmob;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method private static f(Lmnt;)V
    .locals 1

    invoke-interface {p0}, Lmnt;->a()Lmnt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmnt;->a()Lmnt;

    move-result-object v0

    invoke-static {v0}, Lmoc;->f(Lmnt;)V

    :cond_0
    invoke-interface {p0}, Lmnt;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmoc;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static g(Lmnt;)V
    .locals 1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-interface {p0}, Lmnt;->a()Lmnt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmnt;->a()Lmnt;

    move-result-object p0

    invoke-static {p0}, Lmoc;->g(Lmnt;)V

    :cond_0
    return-void
.end method

.method private static h(Lmnt;Lmnt;)V
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lmnt;->a()Lmnt;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    invoke-interface {p1}, Lmnt;->a()Lmnt;

    move-result-object v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lmnt;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmoc;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p0}, Lmoc;->g(Lmnt;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lmoc;->f(Lmnt;)V

    :cond_4
    return-void
.end method
