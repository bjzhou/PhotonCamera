.class public final Lhel;
.super Ljava/lang/Object;

# interfaces
.implements Lgxm;
.implements Lchb;


# static fields
.field private static final g:Lmwn;


# instance fields
.field public final a:Loiw;

.field public final b:Lhfb;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/Runnable;

.field public final e:Landroid/app/Activity;

.field public f:Lgxy;

.field private final h:Loiw;

.field private final i:Ljuh;

.field private final j:Landroid/content/res/Resources;

.field private final k:Lebl;

.field private l:Lgxy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lgya;->b:Lgya;

    sget-object v1, Lgya;->c:Lgya;

    sget-object v2, Lgya;->d:Lgya;

    sget-object v3, Lgya;->k:Lgya;

    invoke-static {v0, v1, v2, v3}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Lhel;->g:Lmwn;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Lhfb;Ljuh;Landroid/os/Handler;Landroid/app/Activity;Landroid/content/res/Resources;Lebl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhbi;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lhbi;-><init>(Lhel;I)V

    iput-object v0, p0, Lhel;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lhel;->a:Loiw;

    iput-object p2, p0, Lhel;->h:Loiw;

    iput-object p3, p0, Lhel;->b:Lhfb;

    iput-object p4, p0, Lhel;->i:Ljuh;

    iput-object p5, p0, Lhel;->c:Landroid/os/Handler;

    iput-object p6, p0, Lhel;->e:Landroid/app/Activity;

    iput-object p7, p0, Lhel;->j:Landroid/content/res/Resources;

    iput-object p8, p0, Lhel;->k:Lebl;

    return-void
.end method

.method private final d(Lgxy;)V
    .locals 3

    invoke-virtual {p0}, Lhel;->b()V

    invoke-virtual {p0}, Lhel;->c()V

    invoke-direct {p0, p1}, Lhel;->f(Lgxy;)V

    iget-object v0, p0, Lhel;->f:Lgxy;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhel;->c:Landroid/os/Handler;

    iget-object v0, p0, Lhel;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lhel;->j:Landroid/content/res/Resources;

    const v2, 0x7f0c00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final e(Lgxy;)V
    .locals 3

    invoke-virtual {p0}, Lhel;->b()V

    iget-object v0, p0, Lhel;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfq;

    iget-object v0, v0, Lhfq;->t:Lchd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->d()Lgxy;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lhel;->c()V

    invoke-direct {p0, p1}, Lhel;->f(Lgxy;)V

    iget-object v2, p0, Lhel;->f:Lgxy;

    if-nez v2, :cond_1

    iget-object v1, p0, Lhel;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfq;

    invoke-virtual {v1}, Lhfq;->j()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lhel;->f:Lgxy;

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lhel;->a:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfq;

    invoke-virtual {p1}, Lhfq;->k()V

    :cond_3
    return-void
.end method

.method private final f(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lhel;->l:Lgxy;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lhel;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lhel;->l:Lgxy;

    iget-object p1, p0, Lhel;->h:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhey;

    sget-object v0, Lhft;->c:Lhft;

    invoke-virtual {p1, v0}, Lhey;->k(Lhft;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lhel;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfq;

    iget-object v0, v0, Lhfq;->t:Lchd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v3

    invoke-interface {v3}, Lche;->j()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lhel;->c()V

    if-eqz v3, :cond_2

    iget-object v0, p0, Lhel;->i:Ljuh;

    iget-object v1, p0, Lhel;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhbi;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v3}, Lhbi;-><init>(Lhfq;I)V

    invoke-virtual {v0, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lhel;->i:Ljuh;

    iget-object v1, p0, Lhel;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhbi;

    const/16 v3, 0x12

    invoke-direct {v2, v1, v3}, Lhbi;-><init>(Lhfq;I)V

    invoke-virtual {v0, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhel;->c:Landroid/os/Handler;

    iget-object v1, p0, Lhel;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lhel;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfq;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final j(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lhel;->e(Lgxy;)V

    return-void
.end method

.method public final k(Lgxy;)V
    .locals 0

    invoke-virtual {p0}, Lhel;->c()V

    invoke-direct {p0, p1}, Lhel;->d(Lgxy;)V

    return-void
.end method

.method public final l(Lgxy;)V
    .locals 0

    invoke-virtual {p0}, Lhel;->c()V

    invoke-direct {p0, p1}, Lhel;->d(Lgxy;)V

    return-void
.end method

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic o(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1}, Ljhp;->aw(Lgxm;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic p(Lgxy;Lkae;)V
    .locals 0

    return-void
.end method

.method public final q(Lgxy;Lgxt;Lgyb;)V
    .locals 3

    invoke-virtual {p0}, Lhel;->b()V

    iget-object p2, p2, Lgxt;->c:Lgya;

    invoke-virtual {p0}, Lhel;->c()V

    iput-object p1, p0, Lhel;->f:Lgxy;

    sget-object p3, Lhel;->g:Lmwn;

    invoke-virtual {p3, p2}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p3

    iget-object v0, p0, Lhel;->k:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    sget-object v0, Lgya;->m:Lgya;

    invoke-virtual {p2, v0}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_1
    iget-object p2, p0, Lhel;->h:Loiw;

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhey;

    iget p2, p2, Lhey;->q:I

    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lhel;->c()V

    iget-object p2, p0, Lhel;->h:Loiw;

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhey;

    sget-object p3, Lhft;->c:Lhft;

    invoke-virtual {p2, p3}, Lhey;->j(Lhft;)V

    iput-object p1, p0, Lhel;->l:Lgxy;

    :cond_3
    return-void
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final x(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lhel;->e(Lgxy;)V

    return-void
.end method
