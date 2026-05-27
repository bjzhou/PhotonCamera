.class final Lfem;
.super Lkfg;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Laea;

.field final synthetic c:Lkeb;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Laea;Lkeb;)V
    .locals 0

    iput-object p1, p0, Lfem;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lfem;->b:Laea;

    iput-object p3, p0, Lfem;->c:Lkeb;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bk()V
    .locals 5

    iget-object v0, p0, Lfem;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lfem;->b:Laea;

    iget-object v2, p0, Lfem;->c:Lkeb;

    new-instance v3, Levy;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v2, v4}, Levy;-><init>(Laea;Lkeb;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
