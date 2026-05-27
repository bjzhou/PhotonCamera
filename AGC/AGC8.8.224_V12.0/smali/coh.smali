.class public final Lcoh;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcnt;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcoh;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcnt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoh;->b:Landroid/content/Context;

    iput-object p2, p0, Lcoh;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcoh;->c:Lcnt;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lmqp;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    invoke-static {p1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lmpx;->a:Lmpx;

    return-object p1
.end method

.method public final b(Ljava/util/List;)Lnou;
    .locals 3

    new-instance v0, Lcnb;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcnb;-><init>(Lcoh;Ljava/util/List;I)V

    iget-object v1, p0, Lcoh;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-static {v0}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v0

    new-instance v1, Lcdu;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lcdu;-><init>(Ljava/util/List;I)V

    iget-object p1, p0, Lcoh;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    invoke-static {p1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object p1

    sget-object v0, Lcfv;->n:Lcfv;

    iget-object v1, p0, Lcoh;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v0, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    invoke-static {p1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object p1

    new-instance v0, Lcmq;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcmq;-><init>(Lcoh;I)V

    iget-object v1, p0, Lcoh;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v0, v1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    iget-object v0, p0, Lcoh;->c:Lcnt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcmq;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcmq;-><init>(Lcnt;I)V

    iget-object v0, p0, Lcoh;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v1, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
