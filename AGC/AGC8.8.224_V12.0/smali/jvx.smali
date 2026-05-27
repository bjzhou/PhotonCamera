.class public final Ljvx;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# instance fields
.field private final a:Lmrl;

.field private final b:Ljvk;

.field private final c:Ljvs;


# direct methods
.method public constructor <init>(Lmrl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljvx;->a:Lmrl;

    new-instance v0, Ljvk;

    invoke-interface {p1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljvx;->b:Ljvk;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Ljvx;->c:Ljvs;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    iget-object v0, p0, Ljvx;->c:Ljvs;

    invoke-interface {v0, p1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljvx;->b:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ljvx;->b:Ljvk;

    iget-object v1, p0, Ljvx;->a:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PollingObs"

    invoke-static {v0}, Lmoz;->z(Ljava/lang/String;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Ljvx;->a:Lmrl;

    invoke-virtual {v0, v1}, Lmqo;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
