.class public final synthetic Llkw;
.super Ljava/lang/Object;

# interfaces
.implements Llkt;


# instance fields
.field public final synthetic a:Llkv;


# direct methods
.method public synthetic constructor <init>(Llkv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkw;->a:Llkv;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Llkw;->a:Llkv;

    iget-object v1, v0, Llkv;->b:Llgf;

    iget-boolean v1, v1, Llgf;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lnsy;->z()Lnou;

    return-void

    :cond_0
    new-instance v1, Llkx;

    invoke-direct {v1, v0, p1, p2}, Llkx;-><init>(Llkv;ILjava/lang/String;)V

    iget-object p1, v0, Llkv;->a:Lnox;

    invoke-static {v1, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method
