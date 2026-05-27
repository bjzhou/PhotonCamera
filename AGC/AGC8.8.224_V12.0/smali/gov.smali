.class public final Lgov;
.super Ljava/util/TimerTask;


# instance fields
.field public final synthetic a:Lgow;


# direct methods
.method public constructor <init>(Lgow;)V
    .locals 0

    iput-object p1, p0, Lgov;->a:Lgow;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lgov;->a:Lgow;

    iget-object v0, v0, Lgow;->c:Ljuh;

    new-instance v1, Lgot;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lgov;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
