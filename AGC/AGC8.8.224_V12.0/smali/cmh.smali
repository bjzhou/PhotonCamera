.class final Lcmh;
.super Ljava/lang/Object;

# interfaces
.implements Lcmo;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcmh;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcmh;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lika;)V
    .locals 4

    iget-object v0, p0, Lcmh;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcmh;->b:Ljava/util/Set;

    new-instance v2, Lcfz;

    const/16 v3, 0xa

    invoke-direct {v2, v1, p1, v3}, Lcfz;-><init>(Ljava/util/Set;Lika;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
