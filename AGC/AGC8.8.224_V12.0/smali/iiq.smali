.class public final Liiq;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Loiw;

.field private final b:Lmqp;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Ljvs;

.field private final j:Lfak;

.field private final k:Lkbc;

.field private final l:Lgzm;

.field private final m:Lcdi;


# direct methods
.method public constructor <init>(Lmqp;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Lcdi;Ljvs;Lfak;Lkbc;Lgzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liiq;->b:Lmqp;

    iput-object p4, p0, Liiq;->d:Loiw;

    iput-object p7, p0, Liiq;->g:Loiw;

    iput-object p8, p0, Liiq;->h:Loiw;

    iput-object p5, p0, Liiq;->e:Loiw;

    iput-object p2, p0, Liiq;->c:Loiw;

    iput-object p3, p0, Liiq;->a:Loiw;

    iput-object p6, p0, Liiq;->f:Loiw;

    iput-object p10, p0, Liiq;->i:Ljvs;

    iput-object p11, p0, Liiq;->j:Lfak;

    iput-object p9, p0, Liiq;->m:Lcdi;

    iput-object p12, p0, Liiq;->k:Lkbc;

    iput-object p13, p0, Liiq;->l:Lgzm;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-object v0, p0, Liiq;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    iget-object v1, p0, Liiq;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lgvu;

    iget-object v1, p0, Liiq;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lgvl;

    iget-object v1, p0, Liiq;->m:Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v4

    check-cast v0, Ljew;

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/apps/camera/uiutils/ReplaceableView;

    iget-object v1, p0, Liiq;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lgvv;

    iget-object v1, p0, Liiq;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Liks;

    iget-object v1, p0, Liiq;->l:Lgzm;

    sget-object v8, Lgzd;->w:Lgzu;

    invoke-interface {v1, v8}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v8

    iget-object v1, p0, Liiq;->l:Lgzm;

    sget-object v9, Lgzd;->t:Lgzu;

    invoke-interface {v1, v9}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v9

    iget-object v1, p0, Liiq;->l:Lgzm;

    sget-object v10, Lgzd;->x:Lgzu;

    invoke-interface {v1, v10}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v10

    iget-object v11, p0, Liiq;->i:Ljvs;

    invoke-interface/range {v2 .. v11}, Lgvu;->e(Lgvl;Ljuf;Lcom/google/android/apps/camera/uiutils/ReplaceableView;Lgvv;Liks;Ljvs;Ljvs;Ljvs;Ljvs;)V

    iget-object v1, p0, Liiq;->k:Lkbc;

    const-string v2, "WireMicro"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, p0, Liiq;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Liiq;->j:Lfak;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lffs;

    invoke-virtual {v2, v1}, Lfak;->e(Lfaz;)V

    :cond_0
    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lgwr;

    check-cast v1, Landroid/view/View;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    move-object v6, p0

    move-object v7, v1

    move-object v8, v0

    invoke-direct/range {v5 .. v11}, Lgwr;-><init>(Liiq;Landroid/view/View;Ljew;I[B[B)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Liiq;->k:Lkbc;

    const-string v1, "WireBottomBar"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Liiq;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->wireListeners()V

    iget-object v0, p0, Liiq;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method
