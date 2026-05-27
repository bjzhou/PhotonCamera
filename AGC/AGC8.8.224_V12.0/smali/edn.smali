.class public final Ledn;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public b:Leej;

.field public c:Landroid/hardware/HardwareBuffer;

.field public d:J

.field public e:Ldrb;

.field public f:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public g:Lgtk;

.field public h:Lcom/google/googlex/gcam/ShotParams;

.field public i:B

.field public j:Lebb;

.field public k:Lgkr;

.field public l:Lgxb;

.field private m:Lcom/google/googlex/gcam/ShotMetadata;

.field private n:Lkab;

.field private o:Lkou;

.field private p:Lnou;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ledo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    iput-object v0, p0, Ledn;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-object v0, p1, Ledo;->b:Leej;

    iput-object v0, p0, Ledn;->b:Leej;

    iget-object v0, p1, Ledo;->c:Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Ledn;->c:Landroid/hardware/HardwareBuffer;

    iget-object v0, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iput-object v0, p0, Ledn;->m:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v0, p1, Ledo;->e:Lkab;

    iput-object v0, p0, Ledn;->n:Lkab;

    iget-object v0, p1, Ledo;->f:Lkou;

    iput-object v0, p0, Ledn;->o:Lkou;

    iget-wide v0, p1, Ledo;->g:J

    iput-wide v0, p0, Ledn;->d:J

    iget-object v0, p1, Ledo;->m:Lebb;

    iput-object v0, p0, Ledn;->j:Lebb;

    iget-object v0, p1, Ledo;->o:Lgxb;

    iput-object v0, p0, Ledn;->l:Lgxb;

    iget-object v0, p1, Ledo;->h:Lnou;

    iput-object v0, p0, Ledn;->p:Lnou;

    iget-object v0, p1, Ledo;->n:Lgkr;

    iput-object v0, p0, Ledn;->k:Lgkr;

    iget-object v0, p1, Ledo;->i:Ldrb;

    iput-object v0, p0, Ledn;->e:Ldrb;

    iget-object v0, p1, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    iput-object v0, p0, Ledn;->f:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-object v0, p1, Ledo;->k:Lgtk;

    iput-object v0, p0, Ledn;->g:Lgtk;

    iget-object p1, p1, Ledo;->l:Lcom/google/googlex/gcam/ShotParams;

    iput-object p1, p0, Ledn;->h:Lcom/google/googlex/gcam/ShotParams;

    const/4 p1, 0x1

    iput-byte p1, p0, Ledn;->i:B

    return-void
.end method


# virtual methods
.method public final a()Ledo;
    .locals 25

    move-object/from16 v0, p0

    iget-byte v1, v0, Ledn;->i:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v7, v0, Ledn;->m:Lcom/google/googlex/gcam/ShotMetadata;

    if-eqz v7, :cond_5

    iget-object v8, v0, Ledn;->n:Lkab;

    if-eqz v8, :cond_5

    iget-object v9, v0, Ledn;->o:Lkou;

    if-eqz v9, :cond_5

    iget-object v12, v0, Ledn;->j:Lebb;

    if-eqz v12, :cond_5

    iget-object v14, v0, Ledn;->p:Lnou;

    if-eqz v14, :cond_5

    iget-object v15, v0, Ledn;->k:Lgkr;

    if-nez v15, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ledo;

    move-object v3, v1

    iget-object v4, v0, Ledn;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-object v5, v0, Ledn;->b:Leej;

    iget-object v6, v0, Ledn;->c:Landroid/hardware/HardwareBuffer;

    iget-wide v10, v0, Ledn;->d:J

    iget-object v13, v0, Ledn;->l:Lgxb;

    iget-object v2, v0, Ledn;->e:Ldrb;

    move-object/from16 v16, v2

    iget-object v2, v0, Ledn;->f:Lcom/google/googlex/gcam/InterleavedImageU8;

    move-object/from16 v17, v2

    iget-object v2, v0, Ledn;->g:Lgtk;

    move-object/from16 v18, v2

    iget-object v2, v0, Ledn;->h:Lcom/google/googlex/gcam/ShotParams;

    move-object/from16 v19, v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v3 .. v24}, Ledo;-><init>(Lcom/google/googlex/gcam/InterleavedImageU8;Leej;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;Lkab;Lkou;JLebb;Lgxb;Lnou;Lgkr;Ldrb;Lcom/google/googlex/gcam/InterleavedImageU8;Lgtk;Lcom/google/googlex/gcam/ShotParams;[B[B[B[B[B)V

    iget-object v2, v1, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Ledo;->b:Leej;

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object v3, v1, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    return-object v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "We need exactly one image set; we have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Ledn;->m:Lcom/google/googlex/gcam/ShotMetadata;

    if-nez v2, :cond_6

    const-string v2, " shotMetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, v0, Ledn;->n:Lkab;

    if-nez v2, :cond_7

    const-string v2, " orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v2, v0, Ledn;->o:Lkou;

    if-nez v2, :cond_8

    const-string v2, " metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte v2, v0, Ledn;->i:B

    if-nez v2, :cond_9

    const-string v2, " timestampNs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v2, v0, Ledn;->j:Lebb;

    if-nez v2, :cond_a

    const-string v2, " gcaShotSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Ledn;->p:Lnou;

    if-nez v2, :cond_b

    const-string v2, " mergedPdData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Ledn;->k:Lgkr;

    if-nez v2, :cond_c

    const-string v2, " pictureTakerParameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ledn;->b:Leej;

    iput-object v0, p0, Ledn;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    iput-object v0, p0, Ledn;->c:Landroid/hardware/HardwareBuffer;

    return-void
.end method

.method public final c(Lnou;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ledn;->p:Lnou;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null mergedPdData"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lkou;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ledn;->o:Lkou;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null metadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lkab;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ledn;->n:Lkab;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null orientation"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ledn;->m:Lcom/google/googlex/gcam/ShotMetadata;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null shotMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Ledn;->d:J

    const/4 p1, 0x1

    iput-byte p1, p0, Ledn;->i:B

    return-void
.end method
