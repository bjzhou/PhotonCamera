.class public final Lkxd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Lkxe;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lkxe;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lkxd;->a:Lkxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkxd;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lkxd;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcw;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lkcw;-><init>(Lkxd;Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
