.class public final Liac;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgyq;Ljava/lang/Long;Lnou;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liac;->a:Ljava/lang/Object;

    iput-object p2, p0, Liac;->c:Ljava/lang/Object;

    iput-object p3, p0, Liac;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Liac;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Liac;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liac;->a:Ljava/lang/Object;

    iput-object p2, p0, Liac;->c:Ljava/lang/Object;

    iput-object p3, p0, Liac;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Liac;->b:Z

    return-void
.end method

.method public constructor <init>(Logd;Logd;Logd;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Liac;->a:Ljava/lang/Object;

    invoke-static {p2}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Liac;->d:Ljava/lang/Object;

    iput-object p3, p0, Liac;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p4, p1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Liac;->b:Z

    return-void
.end method

.method public constructor <init>(ZLcrm;Lmqp;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Liac;->b:Z

    iput-object p2, p0, Liac;->a:Ljava/lang/Object;

    iput-object p3, p0, Liac;->c:Ljava/lang/Object;

    iput-object p4, p0, Liac;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lgam;)Lgam;
    .locals 10

    iget-boolean v0, p0, Liac;->b:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lgjg;

    iget-object v1, p0, Liac;->a:Ljava/lang/Object;

    iget-object v2, p0, Liac;->d:Ljava/lang/Object;

    iget-object v3, p0, Liac;->c:Ljava/lang/Object;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lgnk;

    move-object v4, v2

    check-cast v4, Lcvr;

    move-object v3, v1

    check-cast v3, Lcvr;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lgjg;-><init>(Lgam;Lcvr;Lcvr;Lgnk;I[B[B[B)V

    return-object v0
.end method
