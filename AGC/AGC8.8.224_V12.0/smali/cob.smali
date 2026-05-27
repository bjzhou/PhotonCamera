.class public final Lcob;
.super Lcof;

# interfaces
.implements Lezi;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/lang/Integer;

.field public final c:Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;

.field public d:Z

.field public e:I

.field private final j:Ldhi;

.field private final k:Ljpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/brella/inapptrainer/BrellaInAppTrainerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcob;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ldhi;Ljpl;Ljwb;Ljuh;Lezx;Ljava/lang/String;Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcof;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljuh;Lezx;Ljava/lang/String;)V

    iput-object p3, p0, Lcob;->j:Ldhi;

    iput-object p4, p0, Lcob;->k:Ljpl;

    invoke-interface {p5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcob;->b:Ljava/lang/Integer;

    const/16 p1, 0x50

    iput p1, p0, Lcob;->e:I

    iput-object p9, p0, Lcob;->c:Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcob;->f:Landroid/content/Context;

    iget-object v1, p0, Lcob;->g:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljkj;->a()Ljki;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljki;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljki;->c(I)V

    invoke-virtual {v2, p1}, Ljki;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljki;->a()Ljkj;

    move-result-object p2

    invoke-static {v0, v1, p2}, Ljlw;->c(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljkj;)Ljot;

    move-result-object p2

    iget-object v0, p0, Lcob;->g:Ljava/util/concurrent/Executor;

    sget-object v1, Ljmr;->b:Ljmr;

    invoke-virtual {p2, v0, v1}, Ljot;->a(Ljava/util/concurrent/Executor;Ljoj;)Ljot;

    move-result-object p2

    new-instance v0, Lcnz;

    invoke-direct {v0}, Lcnz;-><init>()V

    invoke-virtual {p2, v0}, Ljot;->l(Ljop;)V

    new-instance v0, Lilp;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lilp;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljot;->i(Ljoo;)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcob;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcob;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Fails to schedule media listener service."

    const/16 v2, 0x16d

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    iget-object v0, p0, Lcob;->h:Ljava/lang/String;

    iget-object v1, p0, Lcob;->j:Ldhi;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    iget-object v1, p0, Lcob;->j:Ldhi;

    sget-object v2, Ldho;->z:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcob;->j:Ldhi;

    sget-object v2, Ldho;->z:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcob;->e:I

    :cond_1
    const-string v1, "/train"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/analytics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcob;->k:Ljpl;

    invoke-interface {v2}, Ljpl;->h()Ljot;

    move-result-object v2

    invoke-static {v2}, Lktf;->b(Ljot;)Lnou;

    move-result-object v2

    new-instance v3, Lcwk;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v1, v4}, Lcwk;-><init>(Lcob;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v2, v3, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
