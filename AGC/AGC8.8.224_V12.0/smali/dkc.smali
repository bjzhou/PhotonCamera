.class public final Ldkc;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;
.implements Lfaz;
.implements Lfaa;


# instance fields
.field private final a:Ldhi;


# direct methods
.method public constructor <init>(Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkc;->a:Ldhi;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-string v2, "leak-checker"

    invoke-static {v2}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lepm;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lepm;-><init>(JLjava/util/concurrent/ExecutorService;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Ldkc;->a:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    return-void
.end method
