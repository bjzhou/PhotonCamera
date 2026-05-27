.class public final Licj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljvs;

.field public final b:Lgzi;

.field public final c:Lell;

.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Licf;

.field public i:Licf;

.field public j:Licf;

.field public k:Licf;

.field public l:Z

.field public final m:Lcdi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljvs;Lgzi;Lell;Ljava/util/concurrent/Executor;Lcdi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Licj;->l:Z

    iput-object p2, p0, Licj;->a:Ljvs;

    iput-object p3, p0, Licj;->b:Lgzi;

    iput-object p4, p0, Licj;->c:Lell;

    iput-object p1, p0, Licj;->d:Landroid/content/Context;

    iput-object p6, p0, Licj;->m:Lcdi;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140191

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Licj;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140192

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Licj;->g:Ljava/lang/String;

    iput-object p5, p0, Licj;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Licj;->k:Licf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Licj;->c:Lell;

    invoke-interface {v1, v0}, Lell;->g(Lelk;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Licj;->c:Lell;

    iget-object v1, p0, Licj;->i:Licf;

    invoke-interface {v0, v1}, Lell;->g(Lelk;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Licj;->c:Lell;

    iget-object v1, p0, Licj;->i:Licf;

    invoke-interface {v0, v1}, Lell;->d(Lelk;)Lkad;

    return-void
.end method
