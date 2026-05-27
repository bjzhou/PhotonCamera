.class public final Lmnw;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field final synthetic a:Lmnt;

.field final synthetic b:Lnno;


# direct methods
.method public constructor <init>(Lmnt;Lnno;)V
    .locals 0

    iput-object p1, p0, Lmnw;->a:Lmnt;

    iput-object p2, p0, Lmnw;->b:Lnno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 3

    iget-object v0, p0, Lmnw;->a:Lmnt;

    iget-object v1, p0, Lmnw;->b:Lnno;

    invoke-static {}, Lmoc;->d()Lmob;

    move-result-object v2

    invoke-static {v2, v0}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    move-result-object v0

    :try_start_0
    invoke-interface {v1, p1}, Lnno;->a(Ljava/lang/Object;)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v0}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lmng;->a(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, v0}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmnw;->b:Lnno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propagating=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
