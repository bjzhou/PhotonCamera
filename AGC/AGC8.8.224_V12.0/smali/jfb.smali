.class public final Ljfb;
.super Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Ljez;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljov;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljov;-><init>(Landroid/os/Looper;I)V

    iput-object v0, p0, Ljfb;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljfb;->a:Ljava/lang/Object;

    new-instance p1, Ljez;

    invoke-static {p3}, Ljhp;->Z(Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Ljez;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljfb;->b:Ljez;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljfb;->a:Ljava/lang/Object;

    iput-object v0, p0, Ljfb;->b:Ljez;

    return-void
.end method

.method public final b(Ljfa;)V
    .locals 3

    const-string v0, "Notifier must not be null"

    invoke-static {p1, v0}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljfb;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lioi;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v2}, Lioi;-><init>(Ljfb;Ljfa;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
