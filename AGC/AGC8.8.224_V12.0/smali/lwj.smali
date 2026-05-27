.class final Llwj;
.super Lapo;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Lapo;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Larf;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Llyf;

    iget-object v0, p2, Llyf;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p2, Llyf;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p2, Llyf;->c:Ljava/util/List;

    invoke-static {v0}, Llyc;->t(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    iget-object v0, p2, Llyf;->d:Lnyy;

    invoke-static {v0}, Llyc;->u(Lnyy;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_2
    iget-object v0, p2, Llyf;->e:Lnwf;

    invoke-static {v0}, Llyc;->g(Lnwf;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_3
    iget-wide v0, p2, Llyf;->f:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Llyf;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_4
    iget-object v0, p2, Llyf;->h:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_5
    iget-object v0, p2, Llyf;->w:Lluq;

    invoke-static {v0}, Llyc;->y(Lluq;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_6
    iget-object v0, p2, Llyf;->i:Lnwf;

    invoke-static {v0}, Llyc;->g(Lnwf;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_7
    iget-object v0, p2, Llyf;->j:Lnwf;

    invoke-static {v0}, Llyc;->g(Lnwf;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_8

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_8
    iget-object v0, p2, Llyf;->k:Lnwf;

    invoke-static {v0}, Llyc;->g(Lnwf;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_9

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_9
    iget-object v0, p2, Llyf;->l:Lnty;

    invoke-static {v0}, Llyc;->x(Lnty;)[B

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_a

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v1, v0}, Lare;->c(I[B)V

    :goto_a
    iget-boolean v0, p2, Llyf;->m:Z

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Llyf;->n:Ljava/util/List;

    invoke-static {v0}, Llyc;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    iget-object v0, p2, Llyf;->o:Ljava/lang/String;

    const/16 v1, 0x10

    if-nez v0, :cond_b

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_b
    iget-object v0, p2, Llyf;->p:Ljava/lang/String;

    const/16 v1, 0x11

    if-nez v0, :cond_c

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_c
    iget-object v0, p2, Llyf;->q:Lobo;

    invoke-static {v0}, Llyc;->p(Lobo;)[B

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_d

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p1, v1, v0}, Lare;->c(I[B)V

    :goto_d
    iget-object v0, p2, Llyf;->r:Lobn;

    invoke-static {v0}, Llyc;->o(Lobn;)[B

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_e

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p1, v1, v0}, Lare;->c(I[B)V

    :goto_e
    iget-object v0, p2, Llyf;->s:Lntv;

    invoke-static {v0}, Llyc;->j(Lntv;)[B

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_f

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_f

    :cond_f
    invoke-virtual {p1, v1, v0}, Lare;->c(I[B)V

    :goto_f
    iget-wide v0, p2, Llyf;->u:J

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object p2, p2, Llyf;->t:Llwz;

    iget-object v0, p2, Llwz;->a:Lnyy;

    invoke-static {v0}, Llyc;->u(Lnyy;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x16

    if-nez v0, :cond_10

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_10
    iget-object v0, p2, Llwz;->b:Lnyy;

    invoke-static {v0}, Llyc;->u(Lnyy;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_11

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_11

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_11
    iget-object v0, p2, Llwz;->c:Lnyy;

    invoke-static {v0}, Llyc;->u(Lnyy;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x18

    if-nez v0, :cond_12

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_12

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lare;->e(IJ)V

    :goto_12
    iget-object v0, p2, Llwz;->d:Llul;

    invoke-static {v0}, Llyc;->a(Llul;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Llwz;->e:Llvk;

    invoke-static {v0}, Llyc;->w(Llvk;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1a

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Llwz;->f:D

    const/16 p2, 0x1b

    invoke-virtual {p1, p2, v0, v1}, Lare;->d(ID)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `ResourceEntity` (`title`,`experienceId`,`queryableTags`,`queryableEpochTimestamp`,`queryableDuration`,`approximateTotalSize`,`namespaceId`,`partitionId`,`f250ResourceId`,`f250AutoUploadDelay`,`airlockExpiration`,`f250Expiration`,`wipeout`,`deleteAirlockFilesOnceUploaded`,`nonSignedInDataOwners`,`overridenObfuscatedGaiaId`,`uploadTransferHandle`,`relations`,`provenance`,`indexTokens`,`onDeviceId`,`status_addedToAirlockEpochTimestamp`,`status_uploadToF250RequestedEpochTimestamp`,`status_uploadToF250CompletedEpochTimestamp`,`status_airlockFileState`,`status_uploadState`,`status_uploadProgressPercent`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,nullif(?, 0),?,?,?,?,?,?)"

    return-object v0
.end method
