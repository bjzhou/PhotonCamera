.class public final Lkbm;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkaq;

.field public final b:Ljava/util/Set;

.field public volatile c:I

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lkaq;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lkbm;->b:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Lkbm;->c:I

    const-string v0, "AudioRestrictApi"

    invoke-interface {p1, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkbm;->a:Lkaq;

    invoke-static {p2}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lkbm;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lkbm;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lgcm;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lgcm;-><init>(Lkbm;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lkcv;)V
    .locals 3

    iget-object v0, p0, Lkbm;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Ljoq;

    const/16 v2, 0x13

    invoke-direct {v1, p0, p1, v2}, Ljoq;-><init>(Lkbm;Lkcv;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lkcv;)V
    .locals 3

    iget-object v0, p0, Lkbm;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Ljoq;

    const/16 v2, 0x14

    invoke-direct {v1, p0, p1, v2}, Ljoq;-><init>(Lkbm;Lkcv;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
