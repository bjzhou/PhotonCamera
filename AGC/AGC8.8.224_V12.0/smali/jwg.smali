.class public final Ljwg;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# instance fields
.field final synthetic a:Ljvs;

.field public final synthetic b:Ljwh;


# direct methods
.method public constructor <init>(Ljwh;Ljvs;)V
    .locals 0

    iput-object p1, p0, Ljwg;->b:Ljwh;

    iput-object p2, p0, Ljwg;->a:Ljvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 3

    iget-object v0, p0, Ljwg;->a:Ljvs;

    new-instance v1, Lglh;

    const/16 v2, 0x10

    invoke-direct {v1, p0, p1, v2}, Lglh;-><init>(Ljwg;Lkai;I)V

    invoke-interface {v0, v1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bm()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljwg;->b:Ljwh;

    iget-object v1, p0, Ljwg;->a:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljwh;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
