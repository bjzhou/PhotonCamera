.class public final Lhzo;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfav;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ldhi;

.field public final d:Ljuh;

.field public final e:Lgzm;

.field public final f:Lgzn;

.field public final g:Lell;

.field public final h:Liff;

.field public final i:Lgeh;

.field public j:Z

.field public k:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

.field public l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

.field public m:Licy;

.field public n:Lkad;

.field public final o:Ljuf;

.field public p:Lict;

.field public final q:Llqh;

.field private final r:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/mars/MarsSwitchController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhzo;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldhi;Lgzm;Lgzn;Llqh;Ljuh;Ljava/util/concurrent/Executor;Lell;Liff;Lgeh;Lcdi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p12, 0x0

    iput-boolean p12, p0, Lhzo;->j:Z

    sget-object p12, Lgnl;->g:Lgnl;

    iput-object p12, p0, Lhzo;->n:Lkad;

    iput-object p1, p0, Lhzo;->b:Landroid/content/Context;

    iput-object p2, p0, Lhzo;->c:Ldhi;

    iput-object p6, p0, Lhzo;->d:Ljuh;

    iput-object p7, p0, Lhzo;->r:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lhzo;->e:Lgzm;

    iput-object p4, p0, Lhzo;->f:Lgzn;

    iput-object p5, p0, Lhzo;->q:Llqh;

    iput-object p8, p0, Lhzo;->g:Lell;

    iput-object p9, p0, Lhzo;->h:Liff;

    iput-object p10, p0, Lhzo;->i:Lgeh;

    invoke-virtual {p11}, Lcdi;->i()Ljuf;

    move-result-object p1

    iput-object p1, p0, Lhzo;->o:Ljuf;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;Landroid/content/Context;)Lnou;
    .locals 2

    new-instance v0, Lbdj;

    const/16 v1, 0xe

    invoke-direct {v0, p1, v1}, Lbdj;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, p0}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lhzo;->d:Ljuh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lhxc;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lhxc;-><init>(Lhzo;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bN()V
    .locals 3

    iget-object v0, p0, Lhzo;->r:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lhzo;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lhzo;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)Lnou;

    move-result-object v0

    new-instance v1, Ldje;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ldje;-><init>(Lhzo;I)V

    iget-object v2, p0, Lhzo;->r:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lhzo;->c:Ldhi;

    sget-object v1, Ldho;->cm:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhzo;->m:Licy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Licy;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->b()V

    return-void

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhzo;->n:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lhzo;->c:Ldhi;

    sget-object v1, Ldho;->cm:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhzo;->m:Licy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lgyb;->b:Lgyb;

    goto :goto_0

    :cond_0
    sget-object p1, Lgyb;->a:Lgyb;

    :goto_0
    invoke-virtual {v0, p1}, Licy;->e(Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-boolean p1, p0, Lhzo;->j:Z

    return-void

    :cond_2
    iget-object v0, p0, Lhzo;->p:Lict;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    sget-object p1, Lgyb;->b:Lgyb;

    goto :goto_1

    :cond_3
    sget-object p1, Lgyb;->a:Lgyb;

    :goto_1
    invoke-virtual {v0, p1}, Lict;->c(Ljava/lang/Object;)V

    return-void

    :cond_4
    iput-boolean p1, p0, Lhzo;->j:Z

    return-void
.end method

.method public final g(Lhsl;)V
    .locals 2

    iget-object v0, p0, Lhzo;->o:Ljuf;

    new-instance v1, Lhzm;

    invoke-direct {v1, p0}, Lhzm;-><init>(Lhzo;)V

    invoke-interface {p1, v1}, Lhsl;->a(Lhsk;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lhzo;->r:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lhzo;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lhzo;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)Lnou;

    move-result-object v0

    new-instance v1, Ldje;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Ldje;-><init>(Lhzo;I)V

    iget-object v2, p0, Lhzo;->r:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
