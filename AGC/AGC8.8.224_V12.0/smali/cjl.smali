.class public final Lcjl;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;
.implements Lkad;


# instance fields
.field private final a:Lkad;

.field private final b:Ljvs;


# direct methods
.method public constructor <init>(Ljvs;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Ljvk;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcjl;->b:Ljvs;

    new-instance v1, Lcbl;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcbl;-><init>(Ljvk;I)V

    invoke-interface {p1, v1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lcjl;->a:Lkad;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    iget-object v0, p0, Lcjl;->b:Ljvs;

    invoke-interface {v0, p1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcjl;->b:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcjl;->a:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    return-void
.end method
