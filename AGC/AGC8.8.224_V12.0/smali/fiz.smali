.class public final synthetic Lfiz;
.super Ljava/lang/Object;

# interfaces
.implements Lfzh;


# instance fields
.field public final synthetic a:Lkbc;

.field public final synthetic b:Loiw;

.field public final synthetic c:Loiw;


# direct methods
.method public synthetic constructor <init>(Lkbc;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfiz;->a:Lkbc;

    iput-object p2, p0, Lfiz;->b:Loiw;

    iput-object p3, p0, Lfiz;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lfiz;->a:Lkbc;

    iget-object v1, p0, Lfiz;->b:Loiw;

    iget-object v2, p0, Lfiz;->c:Loiw;

    const-string v3, "MICRO_GyroModule#stopGyroCapture"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldxl;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldxm;

    invoke-virtual {v1, v2}, Ldxl;->f(Ldxm;)V

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method
