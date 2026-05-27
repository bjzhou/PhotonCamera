.class public final Llif;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lozv;

.field public final d:Loym;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Long;

.field public final g:Z

.field public final h:Llgr;

.field public final i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLozv;Loym;Ljava/lang/String;Ljava/lang/Long;ZLlgr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llif;->a:Ljava/lang/String;

    iput-boolean p2, p0, Llif;->b:Z

    iput-object p3, p0, Llif;->c:Lozv;

    iput-object p4, p0, Llif;->d:Loym;

    iput-object p5, p0, Llif;->e:Ljava/lang/String;

    iput-object p6, p0, Llif;->f:Ljava/lang/Long;

    iput-boolean p7, p0, Llif;->g:Z

    iput-object p8, p0, Llif;->h:Llgr;

    iput p9, p0, Llif;->i:I

    return-void
.end method

.method public static a()Llie;
    .locals 2

    new-instance v0, Llie;

    invoke-direct {v0}, Llie;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llie;->c(Z)V

    invoke-virtual {v0, v1}, Llie;->d(Z)V

    invoke-virtual {v0, v1}, Llie;->b(I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llif;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Llif;

    iget-object v1, p0, Llif;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Llif;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    iget-object v3, p1, Llif;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-boolean v1, p0, Llif;->b:Z

    iget-boolean v3, p1, Llif;->b:Z

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Llif;->c:Lozv;

    iget-object v3, p1, Llif;->c:Lozv;

    invoke-virtual {v1, v3}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Llif;->d:Loym;

    if-nez v1, :cond_2

    iget-object v1, p1, Llif;->d:Loym;

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    iget-object v3, p1, Llif;->d:Loym;

    invoke-virtual {v1, v3}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Llif;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Llif;->e:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    iget-object v3, p1, Llif;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Llif;->f:Ljava/lang/Long;

    if-nez v1, :cond_4

    iget-object v1, p1, Llif;->f:Ljava/lang/Long;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    iget-object v3, p1, Llif;->f:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-boolean v1, p0, Llif;->g:Z

    iget-boolean v3, p1, Llif;->g:Z

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Llif;->h:Llgr;

    if-nez v1, :cond_5

    iget-object v1, p1, Llif;->h:Llgr;

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    iget-object v3, p1, Llif;->h:Llgr;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    iget v1, p0, Llif;->i:I

    iget p1, p1, Llif;->i:I

    if-ne v1, p1, :cond_7

    return v0

    :cond_7
    :goto_5
    return v2

    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Llif;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-boolean v2, p0, Llif;->b:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_1

    const/16 v2, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v2, 0x4cf

    :goto_1
    const v6, 0xf4243

    xor-int/2addr v0, v6

    iget-object v7, p0, Llif;->c:Lozv;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lnws;->L()I

    move-result v7

    goto :goto_3

    :cond_2
    iget v8, v7, Lnws;->aG:I

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lnws;->L()I

    move-result v8

    iput v8, v7, Lnws;->aG:I

    goto :goto_2

    :cond_3
    :goto_2
    move v7, v8

    :goto_3
    mul-int v0, v0, v6

    xor-int/2addr v0, v2

    mul-int v0, v0, v6

    xor-int/2addr v0, v7

    mul-int v0, v0, v6

    iget-object v2, p0, Llif;->d:Loym;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_4

    :cond_5
    iget v7, v2, Lnws;->aG:I

    if-nez v7, :cond_6

    invoke-virtual {v2}, Lnws;->L()I

    move-result v7

    iput v7, v2, Lnws;->aG:I

    :cond_6
    move v2, v7

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v6

    iget-object v2, p0, Llif;->e:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    mul-int v0, v0, v6

    iget-object v2, p0, Llif;->f:Ljava/lang/Long;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_6
    xor-int/2addr v0, v2

    mul-int v0, v0, v6

    iget-boolean v2, p0, Llif;->g:Z

    if-eq v5, v2, :cond_9

    goto :goto_7

    :cond_9
    const/16 v3, 0x4cf

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v6

    iget-object v2, p0, Llif;->h:Llgr;

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    xor-int/2addr v0, v1

    mul-int v0, v0, v6

    iget v1, p0, Llif;->i:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Llif;->a:Ljava/lang/String;

    iget-boolean v1, p0, Llif;->b:Z

    iget-object v2, p0, Llif;->c:Lozv;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llif;->d:Loym;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Llif;->e:Ljava/lang/String;

    iget-object v5, p0, Llif;->f:Ljava/lang/Long;

    iget-boolean v6, p0, Llif;->g:Z

    iget-object v7, p0, Llif;->h:Llgr;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Llif;->i:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Metric{customEventName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isEventNameConstant="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", metric="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", metricExtension="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", accountableComponentName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sampleRatePermille="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isUnsampled="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", debugLogsTime="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", debugLogsSize="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
