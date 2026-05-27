.class public final Llwi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Llwi;->d:I

    iput-object p1, p0, Llwi;->b:Ljava/lang/Object;

    iput-object p2, p0, Llwi;->a:Ljava/lang/Object;

    iput-object p3, p0, Llwi;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llwp;Ljava/util/List;Llul;I)V
    .locals 0

    iput p4, p0, Llwi;->d:I

    iput-object p1, p0, Llwi;->c:Ljava/lang/Object;

    iput-object p2, p0, Llwi;->a:Ljava/lang/Object;

    iput-object p3, p0, Llwi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llwy;Ljava/util/List;Llvk;I)V
    .locals 0

    iput p4, p0, Llwi;->d:I

    iput-object p1, p0, Llwi;->c:Ljava/lang/Object;

    iput-object p2, p0, Llwi;->a:Ljava/lang/Object;

    iput-object p3, p0, Llwi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Llwi;->d:I

    const-string v1, ")\n    "

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE ResourceEntity SET status_uploadState = ? WHERE onDeviceId IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1, v0}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    iget-object v1, p0, Llwi;->b:Ljava/lang/Object;

    check-cast v1, Llvk;

    invoke-static {v1}, Llyc;->w(Llvk;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lare;->e(IJ)V

    iget-object v1, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto/16 :goto_6

    :pswitch_0
    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n      UPDATE AnnotachmentEntity SET status_uploadState = ?\n      WHERE onDeviceId IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    const-string v1, ") \n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1, v0}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    iget-object v1, p0, Llwi;->b:Ljava/lang/Object;

    check-cast v1, Llvk;

    invoke-static {v1}, Llyc;->w(Llvk;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lare;->e(IJ)V

    iget-object v1, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v0}, Larf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :pswitch_1
    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n      UPDATE AnnotachmentEntity SET status_airlockFileState = ?\n      WHERE onDeviceId IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1, v0}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    iget-object v1, p0, Llwi;->b:Ljava/lang/Object;

    check-cast v1, Llul;

    invoke-static {v1}, Llyc;->a(Llul;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lare;->e(IJ)V

    iget-object v1, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_1
    invoke-virtual {v0}, Larf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :pswitch_2
    iget-object v0, p0, Llwi;->b:Ljava/lang/Object;

    iget-object v1, p0, Llwi;->a:Ljava/lang/Object;

    iget-object v2, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lbgd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbgp;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n      UPDATE ResourceEntity SET status_airlockFileState = ?\n      WHERE onDeviceId IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1, v0}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    iget-object v1, p0, Llwi;->b:Ljava/lang/Object;

    check-cast v1, Llul;

    invoke-static {v1}, Llyc;->a(Llul;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lare;->e(IJ)V

    iget-object v1, p0, Llwi;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_2
    invoke-virtual {v0}, Larf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwp;

    iget-object v1, v1, Llwp;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto :goto_7

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_3
    invoke-virtual {v0}, Larf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    return-object v0

    :catchall_3
    move-exception v0

    iget-object v1, p0, Llwi;->c:Ljava/lang/Object;

    check-cast v1, Llwy;

    iget-object v1, v1, Llwy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
