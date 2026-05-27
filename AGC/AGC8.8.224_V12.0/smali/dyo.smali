.class public final Ldyo;
.super Ljava/lang/Object;

# interfaces
.implements Lgxm;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ldzf;

.field private final c:Lhkv;

.field private final d:Ljava/util/Set;

.field private final e:Ldym;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/gallery/processing/ProcessingSessionManagerListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldyo;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lhkv;Ldzf;Ldym;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ldyo;->d:Ljava/util/Set;

    iput-object p1, p0, Ldyo;->c:Lhkv;

    iput-object p2, p0, Ldyo;->b:Ldzf;

    iput-object p3, p0, Ldyo;->e:Ldym;

    return-void
.end method

.method private final a(Lgxy;)V
    .locals 3

    iget-object v0, p0, Ldyo;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldyo;->e:Ldym;

    invoke-virtual {v0, p1}, Ldym;->b(Lgxy;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ldyo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Refusing to remove %s from processingMediaManager because it is not present. It\'s likely the mediaStoreInsertion future was canceled"

    const/16 v2, 0x4b7

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    iget-object v0, p0, Ldyo;->e:Ldym;

    invoke-virtual {v0, p1}, Ldym;->d(Lgxy;)Ldyj;

    move-result-object p1

    invoke-virtual {p1}, Ldyj;->close()V

    return-void
.end method


# virtual methods
.method public final j(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Ldyo;->a(Lgxy;)V

    return-void
.end method

.method public final k(Lgxy;)V
    .locals 3

    iget-object v0, p0, Ldyo;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldyo;->e:Ldym;

    invoke-virtual {v0, p1}, Ldym;->b(Lgxy;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyj;

    if-nez v0, :cond_1

    sget-object v0, Ldyo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "#onSessionCaptureIndicatorUpdate Update for neither completed nor queued shot %s"

    const/16 v2, 0x4b1

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    iget-object v1, p0, Ldyo;->c:Lhkv;

    invoke-virtual {v1, p1}, Lhkv;->a(Lgxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Ldyo;->c:Lhkv;

    invoke-virtual {v2, p1}, Lhkv;->b(Lgxy;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Ldyj;->d(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_3
    sget-object v0, Ldyo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "thumbnailBitmap not present for shot %s"

    const/16 v2, 0x4b0

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void
.end method

.method public final l(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Ldyo;->a(Lgxy;)V

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

.method public final p(Lgxy;Lkae;)V
    .locals 2

    iget-object v0, p0, Ldyo;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldyo;->e:Ldym;

    invoke-virtual {v0, p1}, Ldym;->b(Lgxy;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyj;

    if-nez v0, :cond_1

    sget-object p2, Ldyo;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string v0, "#onSessionProgress update for neither completed nor queued shot %s"

    const/16 v1, 0x4b4

    invoke-static {p2, v0, p1, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_1
    invoke-virtual {v0, p2}, Ldyj;->e(Lkae;)V

    return-void
.end method

.method public final q(Lgxy;Lgxt;Lgyb;)V
    .locals 2

    new-instance v0, Ldyj;

    invoke-direct {v0, p2}, Ldyj;-><init>(Lgxt;)V

    iget-object v1, p0, Ldyo;->e:Ldym;

    invoke-virtual {v1, p1, v0}, Ldym;->e(Lgxy;Ldyj;)V

    sget-object p1, Lgyb;->a:Lgyb;

    if-ne p3, p1, :cond_0

    iget-object p1, p2, Lgxt;->c:Lgya;

    invoke-static {p1}, Ldyy;->c(Lgya;)Lmqp;

    move-result-object p1

    sget-object p3, Ldyy;->a:Ldyy;

    invoke-static {p3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmqp;->a(Lmqp;)Lmqp;

    move-result-object p1

    iget-object p3, p0, Ldyo;->b:Ldzf;

    iget-wide v0, p2, Lgxt;->a:J

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldyy;

    invoke-interface {p3, v0, v1, p1}, Ldzf;->b(JLdyy;)V

    :cond_0
    return-void
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final x(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Ldyo;->a(Lgxy;)V

    return-void
.end method
