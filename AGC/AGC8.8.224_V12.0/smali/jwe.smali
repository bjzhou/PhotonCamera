.class public final Ljwe;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# instance fields
.field private final a:Ljvs;

.field private final b:Ljwf;


# direct methods
.method public constructor <init>(Ljvs;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljwe;->a:Ljvs;

    new-instance v0, Ljwf;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljwf;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljwe;->b:Ljwf;

    new-instance v1, Liiz;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Liiz;-><init>(Ljwf;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p1, v1, v0}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    iget-object v0, p0, Ljwe;->b:Ljwf;

    invoke-virtual {v0, p1, p2}, Ljvk;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljwe;->b:Ljwf;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    return-object v0
.end method
