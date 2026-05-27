.class public final Lgwv;
.super Lgwp;


# instance fields
.field public final c:Lefq;

.field public d:Lmqp;

.field private final e:Ljvs;


# direct methods
.method public constructor <init>(Lgwc;Lefq;Ljvs;Lgpv;Ljava/lang/String;Lcjf;Lgxr;Lmqp;Ljvs;)V
    .locals 9

    move-object v0, p0

    invoke-interface/range {p9 .. p9}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgya;->v:Lgya;

    goto :goto_0

    :cond_0
    sget-object v1, Lgya;->m:Lgya;

    :goto_0
    move-object v3, v1

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object v7, p4

    move-object/from16 v8, p8

    invoke-interface/range {v2 .. v8}, Lgwc;->a(Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;)Lgwd;

    move-result-object v1

    invoke-direct {p0, v1}, Lgwp;-><init>(Lgwd;)V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lgwv;->d:Lmqp;

    move-object v1, p2

    iput-object v1, v0, Lgwv;->c:Lefq;

    move-object v1, p3

    iput-object v1, v0, Lgwv;->e:Ljvs;

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    const-string v0, "interruptSession"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object v0

    invoke-virtual {v0}, Lgwm;->b()V

    return-void
.end method

.method public final M()V
    .locals 4

    invoke-super {p0}, Lgwp;->M()V

    invoke-virtual {p0}, Lgwp;->G()V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object v0

    invoke-virtual {p0}, Lgwp;->i()Lgya;

    move-result-object v1

    iget-object v2, p0, Lgwv;->e:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lfcr;->b(Lgya;Lnjo;Ljava/lang/Float;)Lfce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwm;->c(Lfce;)V

    return-void
.end method

.method public final r([BLhkt;)Lnou;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "saveAndFinish"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    invoke-virtual {p0, p1}, Lgwp;->I(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Ljew;->ag([I)V

    invoke-virtual {p0}, Lgwp;->e()Lcjf;

    move-result-object v0

    invoke-virtual {v0}, Lcjf;->b()Lmqp;

    move-result-object v0

    iput-object v0, p2, Lhkt;->d:Lmqp;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lhkt;->e:Z

    sget-object v0, Lgcf;->a:Lgcf;

    iput-object v0, p2, Lhkt;->f:Lgcf;

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljew;->ah(I)V

    invoke-virtual {p0, p2}, Lgwp;->v(Lhkt;)Lmqp;

    move-result-object v6

    invoke-virtual {p0}, Lgwp;->F()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lapv;

    const/16 v8, 0xe

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lapv;-><init>(Lgwv;[BLmqp;Lhkt;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1

    return-object p1
.end method
