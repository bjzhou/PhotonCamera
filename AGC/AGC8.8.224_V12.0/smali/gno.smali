.class public final Lgno;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Ldhi;

.field public final b:Ljuf;

.field public final c:Ldja;

.field private final e:Lecd;

.field private final f:Lgue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/temporalbinning/TemporalBinningUtils"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgno;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Ldja;Lecd;Lgue;Ldhi;Ljuf;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgno;->c:Ldja;

    iput-object p2, p0, Lgno;->e:Lecd;

    iput-object p3, p0, Lgno;->f:Lgue;

    iput-object p4, p0, Lgno;->a:Ldhi;

    iput-object p5, p0, Lgno;->b:Ljuf;

    return-void
.end method

.method private final c(Ljava/util/List;)Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->b()Lkeg;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lgno;->b(Lkeb;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Set;
    .locals 5

    iget-object v0, p0, Lgno;->a:Ldhi;

    sget-object v1, Ldhq;->X:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lmza;->a:Lmza;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lgno;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkeb;

    invoke-interface {v2}, Lkeb;->c()Lkou;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lgno;->f:Lgue;

    invoke-virtual {v4, v2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v2

    invoke-virtual {v2}, Lgli;->a()Lkfj;

    move-result-object v2

    invoke-interface {v2}, Lkfj;->c()Lkll;

    move-result-object v2

    iget-object v4, p0, Lgno;->e:Lecd;

    invoke-interface {v4, v3, v2}, Lecd;->c(Lkou;Lkll;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lgno;->e:Lecd;

    invoke-interface {v2, v1}, Lecd;->t(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lgno;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_4

    sget-object p1, Lgno;->d:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v1, "[live-tb] Binning has claimed all frames. Giving up and sending all frames to Gcam."

    const/16 v2, 0xc26

    invoke-static {p1, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-object v0

    :cond_4
    return-object v0
.end method

.method public final b(Lkeb;)Z
    .locals 2

    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v0

    iget-object v1, p0, Lgno;->f:Lgue;

    invoke-virtual {v1, p1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgno;->e:Lecd;

    invoke-virtual {p1}, Lgli;->a()Lkfj;

    move-result-object p1

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lecd;->z(Lkou;Lkll;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
