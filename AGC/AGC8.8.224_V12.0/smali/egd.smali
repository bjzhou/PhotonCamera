.class public final synthetic Legd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmqp;

.field public final synthetic b:Ldhi;

.field public final synthetic c:Lhnb;

.field public final synthetic d:Ljuh;

.field public final synthetic e:Lhna;

.field public final synthetic f:Ljvk;

.field public final synthetic g:Lchl;


# direct methods
.method public synthetic constructor <init>(Lmqp;Ldhi;Lchl;Lhnb;Ljuh;Lhna;Ljvk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legd;->a:Lmqp;

    iput-object p2, p0, Legd;->b:Ldhi;

    iput-object p3, p0, Legd;->g:Lchl;

    iput-object p4, p0, Legd;->c:Lhnb;

    iput-object p5, p0, Legd;->d:Ljuh;

    iput-object p6, p0, Legd;->e:Lhna;

    iput-object p7, p0, Legd;->f:Ljvk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Legd;->a:Lmqp;

    iget-object v1, p0, Legd;->b:Ldhi;

    iget-object v2, p0, Legd;->g:Lchl;

    iget-object v3, p0, Legd;->c:Lhnb;

    iget-object v4, p0, Legd;->d:Ljuh;

    iget-object v5, p0, Legd;->e:Lhna;

    iget-object v6, p0, Legd;->f:Ljvk;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefy;

    invoke-interface {v0}, Lefy;->c()V

    sget-object v0, Ldhg;->a:Ljava/lang/String;

    invoke-interface {v1}, Ldhi;->c()V

    iget-object v0, v2, Lchl;->b:Ljuf;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v1

    const-string v2, "FusionZoom"

    invoke-virtual {v1, v2}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v5}, Lhnd;->g(Lhna;)V

    new-instance v2, Leer;

    const/4 v4, 0x5

    invoke-direct {v2, v6, v4}, Leer;-><init>(Ljvk;I)V

    invoke-virtual {v1, v2}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance v2, Leer;

    const/4 v4, 0x6

    invoke-direct {v2, v6, v4}, Leer;-><init>(Ljvk;I)V

    invoke-virtual {v1, v2}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lhnd;->a()Lhne;

    move-result-object v1

    invoke-interface {v3, v1}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void
.end method
