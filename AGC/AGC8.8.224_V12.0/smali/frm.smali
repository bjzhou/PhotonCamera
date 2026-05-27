.class public final Lfrm;
.super Ljava/lang/Object;

# interfaces
.implements Lfpz;


# instance fields
.field public final synthetic a:Lfrn;


# direct methods
.method public constructor <init>(Lfrn;)V
    .locals 0

    iput-object p1, p0, Lfrm;->a:Lfrn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkpb;)Z
    .locals 3

    iget-object v0, p0, Lfrm;->a:Lfrn;

    iget-object v0, v0, Lfrn;->d:Landroid/os/Handler;

    new-instance v1, Lfqt;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lfqt;-><init>(Lfrm;Lkpb;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lfrm;->a:Lfrn;

    iget-object v0, v0, Lfrn;->e:Lkaq;

    const-string v1, "DBG closing sink"

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfrm;->a:Lfrn;

    iget-object v0, v0, Lfrn;->d:Landroid/os/Handler;

    new-instance v1, Lfof;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lfof;-><init>(Lfrm;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
