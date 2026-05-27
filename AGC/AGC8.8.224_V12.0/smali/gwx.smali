.class public final Lgwx;
.super Lgwp;


# instance fields
.field public c:Lmqp;

.field private final d:Lkbc;


# direct methods
.method public constructor <init>(Lgwc;Lgpv;Lkbc;Lgya;Ljava/lang/String;Lcjf;Lgxr;Lmqp;)V
    .locals 7

    move-object v0, p1

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p2

    move-object v6, p8

    invoke-interface/range {v0 .. v6}, Lgwc;->a(Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;)Lgwd;

    move-result-object p1

    invoke-direct {p0, p1}, Lgwp;-><init>(Lgwd;)V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lgwx;->c:Lmqp;

    iput-object p3, p0, Lgwx;->d:Lkbc;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0}, Ljew;->ae()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "finish"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljew;->ai(II)V

    invoke-virtual {p0}, Lgwp;->t()Lgxr;

    move-result-object v0

    invoke-virtual {v0}, Lgxr;->g()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "finish. Ignoring as session was already finished."

    invoke-virtual {p0, v0}, Lgwp;->I(Ljava/lang/String;)V

    return-void
.end method

.method public final E()V
    .locals 1

    const-string v0, "interruptSession"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object v0

    invoke-virtual {v0}, Lgwm;->b()V

    return-void
.end method

.method public final S(Lkaf;)V
    .locals 2

    iget-object v0, p0, Lgwx;->d:Lkbc;

    const-string v1, "MultiImageCaptureSession#startEmpty"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lgwp;->S(Lkaf;)V

    invoke-super {p0}, Lgwp;->M()V

    invoke-virtual {p0}, Lgwp;->G()V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object p1

    invoke-virtual {p0}, Lgwp;->i()Lgya;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lfcr;->b(Lgya;Lnjo;Ljava/lang/Float;)Lfce;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgwm;->c(Lfce;)V

    iget-object p1, p0, Lgwx;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method
