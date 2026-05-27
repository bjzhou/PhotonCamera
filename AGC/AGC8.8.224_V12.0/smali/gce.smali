.class public final Lgce;
.super Ljava/lang/Object;

# interfaces
.implements Ljwb;


# instance fields
.field public final a:Lfuz;

.field private final b:Z

.field private final c:Lgcd;

.field private final d:Lgcd;


# direct methods
.method public constructor <init>(Ljwb;Ljwb;Lfuz;Lgcc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lgce;->a:Lfuz;

    new-instance v0, Lgcd;

    invoke-direct {v0, p1, p4}, Lgcd;-><init>(Ljwb;Lgcc;)V

    iput-object v0, p0, Lgce;->c:Lgcd;

    new-instance p1, Lgcd;

    invoke-direct {p1, p2, p4}, Lgcd;-><init>(Ljwb;Lgcc;)V

    iput-object p1, p0, Lgce;->d:Lgcd;

    invoke-virtual {p3}, Lklw;->I()Z

    move-result p1

    iput-boolean p1, p0, Lgce;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 4

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v1, p0, Lgce;->c:Lgcd;

    new-instance v2, Lecf;

    const/16 v3, 0xc

    invoke-direct {v2, p0, p1, v3}, Lecf;-><init>(Lgce;Lkai;I)V

    invoke-virtual {v1, v2, p2}, Ljwi;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lgce;->d:Lgcd;

    new-instance v2, Lecf;

    const/16 v3, 0xd

    invoke-direct {v2, p0, p1, v3}, Lecf;-><init>(Lgce;Lkai;I)V

    invoke-virtual {v1, v2, p2}, Ljwi;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-object v0
.end method

.method public final bridge synthetic bm()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lgce;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lgcc;->b:Lgcc;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgce;->a:Lfuz;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lgce;->d:Lgcd;

    invoke-virtual {v0}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcc;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgce;->c:Lgcd;

    invoke-virtual {v0}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcc;

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lgcc;

    iget-object v0, p0, Lgce;->a:Lfuz;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgce;->d:Lgcd;

    invoke-virtual {v0, p1}, Ljwi;->bn(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgce;->c:Lgcd;

    invoke-virtual {v0, p1}, Ljwi;->bn(Ljava/lang/Object;)V

    return-void
.end method
