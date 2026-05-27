.class public final Lfcy;
.super Ljava/lang/Object;

# interfaces
.implements Lhdy;


# instance fields
.field public a:Lheb;

.field public final b:Lflf;

.field public final c:Lgzm;

.field public d:Z

.field public e:Lhec;

.field public f:Ljava/util/Date;

.field public final g:Ljew;

.field private final h:Landroid/content/res/Resources;

.field private final i:Lici;

.field private j:Lkad;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lflf;Lgzm;Ljew;Lici;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput-object p6, p0, Lfcy;->f:Ljava/util/Date;

    iput-object p1, p0, Lfcy;->h:Landroid/content/res/Resources;

    iput-object p2, p0, Lfcy;->b:Lflf;

    iput-object p3, p0, Lfcy;->c:Lgzm;

    iput-object p4, p0, Lfcy;->g:Ljew;

    iput-object p5, p0, Lfcy;->i:Lici;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfcy;->i:Lici;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lici;->b(Lkai;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lfcy;->j:Lkad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p0, Lfcy;->j:Lkad;

    invoke-virtual {p0}, Lfcy;->c()V

    iput-object v1, p0, Lfcy;->e:Lhec;

    return-void
.end method

.method public final b(Lhec;)V
    .locals 3

    iput-object p1, p0, Lfcy;->e:Lhec;

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object p1

    iget-object v0, p0, Lfcy;->h:Landroid/content/res/Resources;

    const v1, 0x7f14026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhea;->a:Ljava/lang/String;

    iget-object v0, p0, Lfcy;->h:Landroid/content/res/Resources;

    const v1, 0x7f080240

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance v0, Levi;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Levi;-><init>(Lfcy;I)V

    iput-object v0, p1, Lhea;->c:Ljava/lang/Runnable;

    new-instance v0, Levi;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Levi;-><init>(Lfcy;I)V

    iput-object v0, p1, Lhea;->f:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lhea;->a()Lheb;

    move-result-object p1

    iput-object p1, p0, Lfcy;->a:Lheb;

    iget-object p1, p0, Lfcy;->i:Lici;

    new-instance v0, Leus;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Leus;-><init>(Lfcy;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-virtual {p1, v0, v1}, Lici;->b(Lkai;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lfcy;->c:Lgzm;

    sget-object v0, Lgzd;->t:Lgzu;

    invoke-interface {p1, v0}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object p1

    new-instance v0, Leus;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Leus;-><init>(Lfcy;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p1, v0, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lfcy;->j:Lkad;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lfcy;->e:Lhec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhec;->a()V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lfcy;->f:Ljava/util/Date;

    invoke-virtual {p0}, Lfcy;->c()V

    return-void
.end method

.method public final w()V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lfcy;->f:Ljava/util/Date;

    return-void
.end method
