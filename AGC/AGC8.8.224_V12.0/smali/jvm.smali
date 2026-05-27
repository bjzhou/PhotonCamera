.class public final Ljvm;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# instance fields
.field private final a:Ljvs;


# direct methods
.method private constructor <init>(Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljvm;->a:Ljvs;

    return-void
.end method

.method public static c(Ljvs;)Ljvs;
    .locals 1

    new-instance v0, Ljvm;

    invoke-direct {v0, p0}, Ljvm;-><init>(Ljvs;)V

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 4

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    new-instance v1, Ljwc;

    invoke-direct {v1}, Ljwc;-><init>()V

    iget-object v2, p0, Ljvm;->a:Ljvs;

    new-instance v3, Ljvl;

    invoke-direct {v3, p1, p2, v0}, Ljvl;-><init>(Lkai;Ljava/util/concurrent/Executor;Ljuf;)V

    invoke-interface {v2, v3, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-object v0
.end method

.method public final bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljvm;->a:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DerefObs"

    invoke-static {v0}, Lmoz;->z(Ljava/lang/String;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Ljvm;->a:Ljvs;

    invoke-virtual {v0, v1}, Lmqo;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
