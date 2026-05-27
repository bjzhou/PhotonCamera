.class public final Ljlr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljma;->a:Ljmj;

    new-instance v0, Lnaa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnaa;-><init>([B)V

    const-string v1, "brella-inappjobsvc-%d"

    invoke-virtual {v0, v1}, Lnaa;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lnaa;->d(Lnaa;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljmj;->c(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ljlr;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
