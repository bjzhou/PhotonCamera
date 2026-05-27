.class public final Lguv;
.super Ljava/lang/Object;

# interfaces
.implements Lgus;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Loiw;

.field public final c:Ljava/lang/Class;

.field public d:Lgur;

.field private final e:Z

.field private final f:Landroid/app/Activity;

.field private final g:Landroid/app/KeyguardManager;

.field private final h:Lgzm;

.field private final i:Lbkc;


# direct methods
.method public constructor <init>(Lbkc;Landroid/app/Activity;Loiw;ZLjava/lang/Class;Landroid/app/KeyguardManager;Lgzm;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lguv;->i:Lbkc;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lguv;->a:Landroid/content/Context;

    iput-boolean p4, p0, Lguv;->e:Z

    iput-object p2, p0, Lguv;->f:Landroid/app/Activity;

    iput-object p5, p0, Lguv;->c:Ljava/lang/Class;

    iput-object p3, p0, Lguv;->b:Loiw;

    iput-object p6, p0, Lguv;->g:Landroid/app/KeyguardManager;

    iput-object p7, p0, Lguv;->h:Lgzm;

    return-void
.end method

.method private final h(Landroid/content/Intent;Z)V
    .locals 1

    iget-boolean v0, p0, Lguv;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lguu;

    invoke-direct {v0, p0, p2, p1}, Lguu;-><init>(Lguv;ZLandroid/content/Intent;)V

    iget-object p1, p0, Lguv;->f:Landroid/app/Activity;

    invoke-virtual {p0, p1, v0}, Lguv;->b(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void

    :cond_0
    iget-object p2, p0, Lguv;->i:Lbkc;

    invoke-virtual {p2, p1}, Lbkc;->f(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lguv;->d:Lgur;

    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 3

    iget-boolean v0, p0, Lguv;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lguv;->d:Lgur;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lgur;->A()V

    :cond_1
    iget-object v0, p0, Lguv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    iget v0, v0, Leoa;->f:I

    iget-object v1, p0, Lguv;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leoa;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Leoa;->g(I)V

    iget-object v1, p0, Lguv;->g:Landroid/app/KeyguardManager;

    new-instance v2, Lgut;

    invoke-direct {v2, p0, v0, p2}, Lgut;-><init>(Lguv;ILandroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method public final c(Lgur;)V
    .locals 0

    iput-object p1, p0, Lguv;->d:Lgur;

    return-void
.end method

.method public final d(Landroid/os/Parcelable;Ljava/io/Serializable;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lguv;->a:Landroid/content/Context;

    iget-object v2, p0, Lguv;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "open_socialshare"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "filmstrip_item_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "filmstrip_item_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lguv;->h(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lguv;->a:Landroid/content/Context;

    iget-object v2, p0, Lguv;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "open_empty_vault"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lguv;->h(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final f()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lguv;->a:Landroid/content/Context;

    iget-object v2, p0, Lguv;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "open_filmstrip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lguv;->h:Lgzm;

    sget-object v3, Lgzd;->at:Lgzr;

    invoke-interface {v1, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "open_mars"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lguv;->h(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final g(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lguv;->h(Landroid/content/Intent;Z)V

    return-void
.end method
