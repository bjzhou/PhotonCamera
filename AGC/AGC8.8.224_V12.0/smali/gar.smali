.class public final synthetic Lgar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lkbc;

.field public final synthetic c:Lnph;

.field public final synthetic d:Loiw;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lkbc;Lnph;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgar;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lgar;->b:Lkbc;

    iput-object p3, p0, Lgar;->c:Lnph;

    iput-object p4, p0, Lgar;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lgar;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lgar;->b:Lkbc;

    iget-object v2, p0, Lgar;->c:Lnph;

    iget-object v3, p0, Lgar;->d:Loiw;

    new-instance v4, Lgaq;

    invoke-direct {v4, v2, v3}, Lgaq;-><init>(Lnph;Loiw;)V

    const-string v2, "PictureTaker"

    invoke-interface {v1, v2, v4}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
