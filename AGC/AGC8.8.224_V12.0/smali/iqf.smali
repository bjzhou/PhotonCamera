.class public final synthetic Liqf;
.super Ljava/lang/Object;

# interfaces
.implements Ljop;


# instance fields
.field public final synthetic a:Liqj;

.field public final synthetic b:Liqd;


# direct methods
.method public synthetic constructor <init>(Liqj;Liqd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqf;->a:Liqj;

    iput-object p2, p0, Liqf;->b:Liqd;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Liqf;->a:Liqj;

    iget-object v1, p0, Liqf;->b:Liqd;

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Liqj;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v2, "Wearable api is available"

    const/16 v3, 0x1112

    invoke-static {p1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Liqj;->t:Z

    iget-object v2, v1, Liqd;->b:Ljuh;

    iget-object v3, v1, Liqd;->a:Lfak;

    invoke-static {v2, v3, v1}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    iput-boolean p1, v0, Liqj;->v:Z

    iget-object v1, v0, Liqj;->j:Lipw;

    iget-object v2, v1, Lipw;->b:Lkaq;

    const-string v3, "GcaMessageUtil"

    invoke-interface {v2, v3}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v2

    iput-object v2, v1, Lipw;->b:Lkaq;

    iput-boolean p1, v0, Liqj;->t:Z

    new-instance v1, Liqg;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Liqg;-><init>(Liqj;I)V

    iput-object v1, v0, Liqj;->g:Ljava/lang/Runnable;

    new-instance v1, Liqg;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v3}, Liqg;-><init>(Liqj;I)V

    iput-object v1, v0, Liqj;->h:Ljava/lang/Runnable;

    iget-object v1, v0, Liqj;->j:Lipw;

    iget-object v1, v1, Lipw;->c:Ljde;

    new-array p1, p1, [Landroid/content/IntentFilter;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.gms.wearable.MESSAGE_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "wear"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v4, "*"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, p1, v4

    iget-object v3, v1, Ljde;->g:Landroid/os/Looper;

    const-string v6, "MessageListener"

    invoke-static {v0, v3, v6}, Ljfc;->b(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Ljfb;

    move-result-object v3

    invoke-static {}, Ldja;->y()Ljfg;

    move-result-object v6

    iput-object v3, v6, Ljfg;->c:Ljfb;

    new-instance v7, Ljso;

    invoke-direct {v7, v0, v3, p1, v4}, Ljso;-><init>(Ljqb;Ljfb;[Landroid/content/IntentFilter;I)V

    iput-object v7, v6, Ljfg;->a:Ljfh;

    new-instance p1, Ljhs;

    const/4 v3, 0x4

    invoke-direct {p1, v0, v3}, Ljhs;-><init>(Ljqb;I)V

    iput-object p1, v6, Ljfg;->b:Ljfh;

    const/16 p1, 0x5dd0

    iput p1, v6, Ljfg;->e:I

    invoke-virtual {v6}, Ljfg;->a()Ldja;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljde;->k(Ldja;)V

    iget-object p1, v0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/4 v6, 0x7

    invoke-direct {v1, v0, v6}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, v0, Liqj;->j:Lipw;

    const-string v1, "/check_status"

    invoke-virtual {p1, v1, v5}, Lipw;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object p1, v0, Liqj;->i:Landroid/os/Handler;

    new-instance v1, Liqg;

    const/16 v5, 0x8

    invoke-direct {v1, v0, v5}, Liqg;-><init>(Liqj;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Liqj;->m(J)V

    iget-object p1, v0, Liqj;->n:Litm;

    new-instance v1, Liqh;

    invoke-direct {v1, v0, v4}, Liqh;-><init>(Liqj;I)V

    invoke-interface {p1, v1}, Litm;->k(Litl;)V

    iget-object p1, v0, Liqj;->p:Ljuf;

    iget-object v1, v0, Liqj;->o:Ljwb;

    new-instance v4, Liiz;

    invoke-direct {v4, v0, v3}, Liiz;-><init>(Liqj;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v4, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljuf;->d(Lkad;)V

    iget-object p1, v0, Liqj;->p:Ljuf;

    iget-object v1, v0, Liqj;->q:Ldbf;

    iget-object v1, v1, Ldbf;->b:Ljwb;

    new-instance v3, Liiz;

    invoke-direct {v3, v0, v2}, Liiz;-><init>(Liqj;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v1, v3, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljuf;->d(Lkad;)V

    iget-object p1, v0, Liqj;->s:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Liqj;->s:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfu;

    iget-object v1, v0, Liqj;->w:Lhfv;

    invoke-interface {p1, v1}, Lhfu;->a(Lhfv;)V

    :cond_0
    invoke-virtual {v0}, Liqj;->r()V

    return-void
.end method
