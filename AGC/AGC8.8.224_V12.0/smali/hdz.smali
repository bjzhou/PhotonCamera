.class public final Lhdz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lmwn;

.field public final c:Lmwn;

.field public final d:Z

.field public final e:Z

.field public final f:Ljvs;

.field public final g:Lmqp;

.field public final h:Lmqp;

.field public final i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmwn;Lmwn;ZZLjvs;ILmqp;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdz;->a:Ljava/lang/String;

    iput-object p2, p0, Lhdz;->b:Lmwn;

    iput-object p3, p0, Lhdz;->c:Lmwn;

    iput-boolean p4, p0, Lhdz;->d:Z

    iput-boolean p5, p0, Lhdz;->e:Z

    iput-object p6, p0, Lhdz;->f:Ljvs;

    iput p7, p0, Lhdz;->i:I

    iput-object p8, p0, Lhdz;->g:Lmqp;

    iput-object p9, p0, Lhdz;->h:Lmqp;

    return-void
.end method

.method public static a()Llie;
    .locals 2

    new-instance v0, Llie;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llie;-><init>([B)V

    const-string v1, "UnknownSmartsProcessor"

    iput-object v1, v0, Llie;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llie;->j(Z)V

    invoke-virtual {v0, v1}, Llie;->k(Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v1

    invoke-virtual {v0, v1}, Llie;->i(Ljvs;)V

    const/4 v1, 0x4

    iput v1, v0, Llie;->a:I

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Llie;->e:Ljava/lang/Object;

    iput-object v1, v0, Llie;->f:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhdz;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lhdz;

    iget-object v1, p0, Lhdz;->a:Ljava/lang/String;

    iget-object v3, p1, Lhdz;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhdz;->b:Lmwn;

    iget-object v3, p1, Lhdz;->b:Lmwn;

    invoke-virtual {v1, v3}, Lmwn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhdz;->c:Lmwn;

    iget-object v3, p1, Lhdz;->c:Lmwn;

    invoke-virtual {v1, v3}, Lmwn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lhdz;->d:Z

    iget-boolean v3, p1, Lhdz;->d:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lhdz;->e:Z

    iget-boolean v3, p1, Lhdz;->e:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lhdz;->f:Ljvs;

    iget-object v3, p1, Lhdz;->f:Ljvs;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lhdz;->i:I

    iget v3, p1, Lhdz;->i:I

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lhdz;->g:Lmqp;

    iget-object v3, p1, Lhdz;->g:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhdz;->h:Lmqp;

    iget-object p1, p1, Lhdz;->h:Lmqp;

    invoke-virtual {v1, p1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return v2

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lhdz;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lhdz;->b:Lmwn;

    invoke-virtual {v2}, Lmwn;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lhdz;->c:Lmwn;

    invoke-virtual {v2}, Lmwn;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lhdz;->d:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget-boolean v6, p0, Lhdz;->e:Z

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x4cf

    :goto_1
    iget-object v4, p0, Lhdz;->f:Ljvs;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    iget v2, p0, Lhdz;->i:I

    if-eqz v2, :cond_2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lhdz;->g:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lhdz;->h:Lmqp;

    invoke-virtual {v1}, Lmqp;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_2
    const/4 v0, 0x0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lhdz;->a:Ljava/lang/String;

    iget-object v1, p0, Lhdz;->b:Lmwn;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhdz;->c:Lmwn;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lhdz;->d:Z

    iget-boolean v4, p0, Lhdz;->e:Z

    iget-object v5, p0, Lhdz;->f:Ljvs;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lhdz;->i:I

    packed-switch v6, :pswitch_data_0

    const-string v6, "null"

    goto :goto_0

    :pswitch_0
    const-string v6, "LENS_SUGGESTION"

    goto :goto_0

    :pswitch_1
    const-string v6, "SUGGESTION"

    goto :goto_0

    :pswitch_2
    const-string v6, "FRAMING_HINT"

    goto :goto_0

    :pswitch_3
    const-string v6, "STATUS_UPDATE_STICKY"

    goto :goto_0

    :pswitch_4
    const-string v6, "DEFAULT"

    :goto_0
    iget-object v7, p0, Lhdz;->g:Lmqp;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lhdz;->h:Lmqp;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmartsProcessorOptions{name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activeModes="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activeCameraFacing="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldPauseDuringCapture="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldPauseWhenTimerActive="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", externalToggle="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", notificationPriority="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", smartsCaptureListener="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", registrationThread="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
