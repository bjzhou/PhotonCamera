.class public final Lgjg;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgam;Lcvr;Lcvr;Lgnk;I[B[B[B)V
    .locals 0

    iput p5, p0, Lgjg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgjg;->c:Ljava/lang/Object;

    iput-object p1, p0, Lgjg;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgjg;->d:Ljava/lang/Object;

    iput-object p4, p0, Lgjg;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkap;Ljvs;I)V
    .locals 0

    iput p3, p0, Lgjg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgjg;->d:Ljava/lang/Object;

    const-string p3, "ImgCptrSwitch"

    invoke-interface {p1, p3}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgjg;->e:Ljava/lang/Object;

    new-instance p1, Lcej;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcej;-><init>(I)V

    invoke-static {p2, p1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p1

    invoke-static {p1}, Ljvm;->c(Ljvs;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lgjg;->c:Ljava/lang/Object;

    new-instance p1, Lcej;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Lcej;-><init>(I)V

    invoke-static {p2, p1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p1

    invoke-static {p1}, Ljvm;->c(Ljvs;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lgjg;->b:Ljava/lang/Object;

    return-void
.end method

.method private static d(Lgnk;)Lfsk;
    .locals 2

    new-instance v0, Lgjf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgjf;-><init>(Lgnk;I)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget v0, p0, Lgjg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgjg;->c:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgjg;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljvs;
    .locals 1

    iget v0, p0, Lgjg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgjg;->b:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgjg;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 4

    iget v0, p0, Lgjg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgjg;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgam;

    iget-object v1, p0, Lgjg;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Running command: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lgjg;->c:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgjg;->d:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgjg;->c:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsg;

    iget-object v1, p0, Lgjg;->e:Ljava/lang/Object;

    invoke-static {v1}, Lgjg;->d(Lgnk;)Lfsk;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lfsg;->q(Lfsk;Lgkr;)V

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->i()Lgya;

    move-result-object v0

    sget-object v1, Lgya;->o:Lgya;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgjg;->d:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsn;

    iget-object v1, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lfsn;->e(Lgxy;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgjg;->d:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsn;

    iget-object v1, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lfsn;->f(Lgxy;)V

    :goto_0
    iget-object v0, p0, Lgjg;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    iget-object p1, p0, Lgjg;->c:Ljava/lang/Object;

    check-cast p1, Lcvr;

    invoke-virtual {p1}, Lcvr;->G()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfsg;

    iget-object v0, p0, Lgjg;->e:Ljava/lang/Object;

    invoke-static {v0}, Lgjg;->d(Lgnk;)Lfsk;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lfsg;->o(Lfsk;Lgkr;)V

    return-void

    :cond_1
    iget-object v0, p0, Lgjg;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lgjg;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgjg;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmqo;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgjg;->b:Ljava/lang/Object;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
