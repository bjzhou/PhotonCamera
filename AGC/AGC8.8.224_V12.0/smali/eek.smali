.class final Leek;
.super Ljava/lang/Object;

# interfaces
.implements Lfwu;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/google/googlex/gcam/ShotMetadata;

.field final synthetic d:I

.field final synthetic e:Lgxl;

.field final synthetic f:Leeo;

.field final synthetic g:Ligo;


# direct methods
.method public constructor <init>(Leeo;Ligo;IZLcom/google/googlex/gcam/ShotMetadata;ILgxl;[B[B)V
    .locals 0

    iput-object p1, p0, Leek;->f:Leeo;

    iput-object p2, p0, Leek;->g:Ligo;

    iput p3, p0, Leek;->a:I

    iput-boolean p4, p0, Leek;->b:Z

    iput-object p5, p0, Leek;->c:Lcom/google/googlex/gcam/ShotMetadata;

    iput p6, p0, Leek;->d:I

    iput-object p7, p0, Leek;->e:Lgxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v14

    iget-object v2, v0, Leek;->f:Leeo;

    iget-object v15, v2, Leeo;->c:Ljava/util/concurrent/Executor;

    new-instance v13, Leem;

    iget-object v3, v0, Leek;->g:Ligo;

    iget v5, v0, Leek;->a:I

    iget-boolean v6, v0, Leek;->b:Z

    iget-object v7, v0, Leek;->c:Lcom/google/googlex/gcam/ShotMetadata;

    iget v8, v0, Leek;->d:I

    iget-object v1, v0, Leek;->e:Lgxl;

    invoke-interface {v1}, Lgxl;->d()J

    move-result-wide v9

    iget-object v1, v0, Leek;->e:Lgxl;

    invoke-interface {v1}, Lgxl;->m()Lmqp;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v1, v13

    move-object v4, v14

    move-object v0, v13

    move-object/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Leem;-><init>(Leeo;Ligo;Lnph;IZLcom/google/googlex/gcam/ShotMetadata;IJLmqp;[B[B)V

    invoke-interface {v15, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v14
.end method

.method public final b()Lnou;
    .locals 2

    new-instance v0, Lkdf;

    const-string v1, "RGB image couldn\'t be encoded into jpeg."

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    return-object v0
.end method
