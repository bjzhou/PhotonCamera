.class public final Lcjm;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# instance fields
.field private final a:Ljvs;


# direct methods
.method public constructor <init>(Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjm;->a:Ljvs;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 3

    iget-object v0, p0, Lcjm;->a:Ljvs;

    new-instance v1, Lcbl;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Lcbl;-><init>(Lkai;I)V

    invoke-interface {v0, v1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcjm;->a:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
