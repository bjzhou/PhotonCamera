.class public final Lnyh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnyh;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Lnxs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnyh;

    invoke-direct {v0}, Lnyh;-><init>()V

    sput-object v0, Lnyh;->a:Lnyh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnyh;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lnxs;

    invoke-direct {v0}, Lnxs;-><init>()V

    iput-object v0, p0, Lnyh;->c:Lnxs;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lnyo;
    .locals 5

    invoke-static {p1}, Lnxb;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lnyh;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnyo;

    if-nez v0, :cond_7

    iget-object v0, p0, Lnyh;->c:Lnxs;

    sget-object v1, Lnyp;->a:Ljava/lang/Class;

    const-class v1, Lnws;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lnyp;->a:Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, v0, Lnxs;->a:Lnxw;

    invoke-interface {v0, p1}, Lnxw;->a(Ljava/lang/Class;)Lnxv;

    move-result-object v0

    invoke-interface {v0}, Lnxv;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lnws;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lnyp;->d:Lkwp;

    sget-object v2, Lnwi;->a:Lkwp;

    invoke-interface {v0}, Lnxv;->a()Lnxy;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lnyc;->c(Lkwp;Lkwp;Lnxy;)Lnyc;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v1, Lnyp;->b:Lkwp;

    invoke-static {}, Lnwi;->a()Lkwp;

    move-result-object v2

    invoke-interface {v0}, Lnxv;->a()Lnxy;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lnyc;->c(Lkwp;Lkwp;Lnxy;)Lnyc;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-class v1, Lnws;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-static {v0}, Lnxs;->a(Lnxv;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lnye;->a:Lkwp;

    sget-object v1, Lnxo;->b:Lnxo;

    sget-object v2, Lnyp;->d:Lkwp;

    sget-object v3, Lnwi;->a:Lkwp;

    sget-object v4, Lnxu;->a:Lkwp;

    invoke-static {v0, v1, v2, v3}, Lnyb;->m(Lnxv;Lnxo;Lkwp;Lkwp;)Lnyb;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v1, Lnye;->a:Lkwp;

    sget-object v1, Lnxo;->b:Lnxo;

    sget-object v3, Lnyp;->d:Lkwp;

    sget-object v4, Lnxu;->a:Lkwp;

    invoke-static {v0, v1, v3, v2}, Lnyb;->m(Lnxv;Lnxo;Lkwp;Lkwp;)Lnyb;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lnxs;->a(Lnxv;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lnye;->a:Lkwp;

    sget-object v1, Lnxo;->a:Lnxo;

    sget-object v2, Lnyp;->b:Lkwp;

    invoke-static {}, Lnwi;->a()Lkwp;

    move-result-object v3

    sget-object v4, Lnxu;->a:Lkwp;

    invoke-static {v0, v1, v2, v3}, Lnyb;->m(Lnxv;Lnxo;Lkwp;Lkwp;)Lnyb;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v1, Lnye;->a:Lkwp;

    sget-object v1, Lnxo;->a:Lnxo;

    sget-object v3, Lnyp;->c:Lkwp;

    sget-object v4, Lnxu;->a:Lkwp;

    invoke-static {v0, v1, v3, v2}, Lnyb;->m(Lnxv;Lnxo;Lkwp;Lkwp;)Lnyb;

    move-result-object v0

    :goto_1
    invoke-static {p1}, Lnxb;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lnyh;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnyo;

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lnyo;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnyh;->a(Ljava/lang/Class;)Lnyo;

    move-result-object p1

    return-object p1
.end method
