.class public final Lgjt;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lkfj;

.field public final c:Lfyz;

.field private final d:Lken;

.field private final e:Lfwn;

.field private final f:Lkgq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckSingleImageCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgjt;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Lkfj;Lkgq;Lfyz;Lfwn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgjt;->d:Lken;

    iput-object p2, p0, Lgjt;->b:Lkfj;

    iput-object p3, p0, Lgjt;->f:Lkgq;

    iput-object p4, p0, Lgjt;->c:Lfyz;

    iput-object p5, p0, Lgjt;->e:Lfwn;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgjt;->e:Lfwn;

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v0, v8, Lgjt;->d:Lken;

    iget-object v10, v8, Lgjt;->f:Lkgq;

    const/4 v1, 0x0

    :goto_0
    const/4 v11, 0x3

    if-eqz v0, :cond_0

    if-eqz v10, :cond_0

    add-int/lit8 v12, v1, 0x1

    if-ge v1, v11, :cond_0

    invoke-interface {v0, v10}, Lken;->q(Lkgq;)Lkeb;

    move-result-object v13

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v14

    new-instance v15, Lgjs;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p2

    move-object v5, v14

    invoke-direct/range {v1 .. v7}, Lgjs;-><init>(Lgjt;Lkeb;Lgkr;Lnph;[B[B)V

    invoke-interface {v13, v15}, Lkeb;->k(Lkfg;)V

    :try_start_0
    invoke-virtual {v14}, Lnph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    move v1, v12

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    sget-object v1, Lgjt;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Error acquiring image."

    const/16 v3, 0xb25

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_0
    sget-object v0, Lgjt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xb22

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Couldn\'t capture image after %s attempts."

    invoke-interface {v1, v2, v11}, Lnah;->p(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Aborting shot."

    const/16 v2, 0xb21

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, v9, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lfzz;->f()V

    iget-object v0, v9, Lgkr;->c:Ljava/lang/Object;

    sget-object v1, Ligh;->a:Ligf;

    new-instance v2, Ldog;

    const-string v3, "Image capture failed. Aborting capture!"

    invoke-direct {v2, v3}, Ldog;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    :cond_1
    invoke-interface/range {p1 .. p1}, Lgal;->close()V

    return-void
.end method
