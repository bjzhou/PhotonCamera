.class final Llyr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Enum;

.field final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Llwy;Ljava/util/List;Llvk;Lnyy;I)V
    .locals 0

    iput p5, p0, Llyr;->e:I

    iput-object p1, p0, Llyr;->b:Ljava/lang/Object;

    iput-object p2, p0, Llyr;->a:Ljava/lang/Object;

    iput-object p3, p0, Llyr;->c:Ljava/lang/Enum;

    iput-object p4, p0, Llyr;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llys;Ljava/util/Set;Ljava/util/Set;Llvk;I)V
    .locals 0

    iput p5, p0, Llyr;->e:I

    iput-object p1, p0, Llyr;->b:Ljava/lang/Object;

    iput-object p2, p0, Llyr;->d:Ljava/lang/Object;

    iput-object p3, p0, Llyr;->a:Ljava/lang/Object;

    iput-object p4, p0, Llyr;->c:Ljava/lang/Enum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llys;Ljava/util/Set;Llvk;Llul;I)V
    .locals 0

    iput p5, p0, Llyr;->e:I

    iput-object p1, p0, Llyr;->d:Ljava/lang/Object;

    iput-object p2, p0, Llyr;->a:Ljava/lang/Object;

    iput-object p3, p0, Llyr;->b:Ljava/lang/Object;

    iput-object p4, p0, Llyr;->c:Ljava/lang/Enum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Llyr;->e:I

    const-string v1, ")\n    "

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n      UPDATE AnnotachmentEntity SET status_uploadState = ?\n      WHERE\n        resourceOnDeviceId IN (\n          SELECT onDeviceId FROM ResourceEntity WHERE status_uploadState = ?\n        )\n        AND isAttachment IN ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Llyr;->d:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v0, v5}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    const-string v6, ")\n        AND status_uploadState IN ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Llyr;->a:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v0, v6}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1, v0}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    iget-object v1, p0, Llyr;->c:Ljava/lang/Enum;

    check-cast v1, Llvk;

    invoke-static {v1}, Llyc;->w(Llvk;)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v4, v6, v7}, Lare;->e(IJ)V

    iget-object v1, p0, Llyr;->c:Ljava/lang/Enum;

    check-cast v1, Llvk;

    invoke-static {v1}, Llyc;->w(Llvk;)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v3, v6, v7}, Lare;->e(IJ)V

    iget-object v1, p0, Llyr;->d:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x3

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n      UPDATE ResourceEntity\n      SET\n        status_uploadState = ?,\n        status_uploadToF250RequestedEpochTimestamp = ?\n      WHERE onDeviceId IN ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Llyr;->a:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v0, v5}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1, v0}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    iget-object v1, p0, Llyr;->c:Ljava/lang/Enum;

    check-cast v1, Llvk;

    invoke-static {v1}, Llyc;->w(Llvk;)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0, v4, v5, v6}, Lare;->e(IJ)V

    iget-object v1, p0, Llyr;->d:Ljava/lang/Object;

    check-cast v1, Lnyy;

    invoke-static {v1}, Llyc;->u(Lnyy;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Lare;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lare;->e(IJ)V

    :goto_0
    iget-object v1, p0, Llyr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v0}, Larf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :pswitch_1
    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n      UPDATE ResourceEntity SET status_uploadState = ?\n      WHERE\n        status_uploadState IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llyr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    const-string v2, ")\n        AND (\n          status_airlockFileState IS NOT ?\n          OR namespaceId IS NULL\n          OR partitionId IS NULL\n        )\n    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Llyr;->d:Ljava/lang/Object;

    check-cast v2, Llys;

    iget-object v2, v2, Llys;->a:Lapt;

    invoke-virtual {v2, v0}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    iget-object v2, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v2, Llvk;

    invoke-static {v2}, Llyc;->w(Llvk;)I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v0, v4, v5, v6}, Lare;->e(IJ)V

    iget-object v2, p0, Llyr;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llvk;

    invoke-static {v6}, Llyc;->w(Llvk;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v5, v6, v7}, Lare;->e(IJ)V

    add-int/2addr v5, v4

    goto :goto_3

    :cond_3
    add-int/2addr v1, v3

    iget-object v2, p0, Llyr;->c:Ljava/lang/Enum;

    check-cast v2, Llul;

    invoke-static {v2}, Llyc;->a(Llul;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lare;->e(IJ)V

    iget-object v1, p0, Llyr;->d:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_1
    invoke-virtual {v0}, Larf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Llyr;->d:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Llyr;->d:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Llyr;->d:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lluo;

    invoke-static {v6}, Llyc;->h(Lluo;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v3, v6, v7}, Lare;->e(IJ)V

    add-int/2addr v3, v4

    goto :goto_4

    :cond_4
    add-int/2addr v5, v2

    iget-object v1, p0, Llyr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llvk;

    invoke-static {v2}, Llyc;->w(Llvk;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v5, v2, v3}, Lare;->e(IJ)V

    add-int/2addr v5, v4

    goto :goto_5

    :cond_5
    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_2
    invoke-virtual {v0}, Larf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Llyr;->b:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
