.class public final Lfot;
.super Ljava/util/TimerTask;


# instance fields
.field public final synthetic a:Lfou;


# direct methods
.method public constructor <init>(Lfou;)V
    .locals 0

    iput-object p1, p0, Lfot;->a:Lfou;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lfot;->a:Lfou;

    iget-object v0, v0, Lfou;->d:Ljuh;

    new-instance v1, Lfof;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lfof;-><init>(Lfot;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
