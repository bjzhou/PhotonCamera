.class public final Lktj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    sput-object v0, Lktj;->a:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method
