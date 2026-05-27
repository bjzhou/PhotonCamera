.class public final Lcns;
.super Ljava/lang/Object;

# interfaces
.implements Lcnt;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lcnf;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/brella/examplestorecontroller/BrellaExampleStoreControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcns;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;Lcnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcns;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcns;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcns;->b:Lcnf;

    return-void
.end method


# virtual methods
.method public final a(Lcnm;Lcnk;)Lcmv;
    .locals 3

    new-instance v0, Lcmv;

    iget-object v1, p0, Lcns;->b:Lcnf;

    iget-object v2, p0, Lcns;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, p2, v2}, Lcmv;-><init>(Lcnf;Lcnm;Lcnk;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;J)Lnou;
    .locals 3

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Lcnq;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcnq;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Lcnf;->a(Lmqi;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lnou;
    .locals 2

    iget-object v0, p0, Lcns;->b:Lcnf;

    sget-object v1, Lcfv;->m:Lcfv;

    invoke-virtual {v0, v1}, Lcnf;->a(Lmqi;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/lang/String;Ljava/util/Map;[B)Lnou;
    .locals 8

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v7, Lcnp;

    move-object v1, v7

    move-object v2, p3

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcnp;-><init>(Ljava/lang/String;JLjava/util/Map;[B)V

    invoke-virtual {v0, v7}, Lcnf;->a(Lmqi;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lmwn;)Lnou;
    .locals 3

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Ldvo;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Ldvo;-><init>(Lcns;Lmwn;I)V

    invoke-virtual {v0, v1}, Lcnf;->a(Lmqi;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final f(J)Lnou;
    .locals 3

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Lcnq;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Lcnq;-><init>(Lcns;JI)V

    invoke-virtual {v0, v1}, Lcnf;->a(Lmqi;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lnou;
    .locals 3

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Lcna;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcna;-><init>(Lcnf;I)V

    iget-object v0, v0, Lcnf;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/util/List;)Lnou;
    .locals 3

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Lcnb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcnb;-><init>(Lcnf;Ljava/util/List;I)V

    iget-object p1, v0, Lcnf;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final i(J[B)Lnou;
    .locals 3

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Lcnq;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p3, v2}, Lcnq;-><init>(J[BI)V

    invoke-virtual {v0, v1}, Lcnf;->a(Lmqi;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Lcdu;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcdu;-><init>(Lcns;I)V

    invoke-virtual {v0, v1}, Lcnf;->a(Lmqi;)Lnou;

    move-result-object v0

    new-instance v1, Lcnr;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcnr;-><init>(I)V

    iget-object v2, p0, Lcns;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final k()Lnou;
    .locals 2

    iget-object v0, p0, Lcns;->b:Lcnf;

    new-instance v1, Lcmy;

    invoke-direct {v1, v0}, Lcmy;-><init>(Lcnf;)V

    iget-object v0, v0, Lcnf;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method
