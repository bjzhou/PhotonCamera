.class public final synthetic Lljx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lljy;

.field public final synthetic b:Loiw;

.field public final synthetic c:Lmqp;


# direct methods
.method public synthetic constructor <init>(Lljy;Loiw;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lljx;->a:Lljy;

    iput-object p2, p0, Lljx;->b:Loiw;

    iput-object p3, p0, Lljx;->c:Lmqp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lljx;->a:Lljy;

    iget-object v1, p0, Lljx;->b:Loiw;

    iget-object v2, p0, Lljx;->c:Lmqp;

    invoke-virtual {v0, v1, v2}, Lljy;->c(Loiw;Lmqp;)V

    return-void
.end method
