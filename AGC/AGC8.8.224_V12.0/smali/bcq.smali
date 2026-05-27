.class final Lbcq;
.super Lapn;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Lapn;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Larf;Ljava/lang/Object;)V
    .locals 11

    check-cast p2, Lbcj;

    iget-object v0, p2, Lbcj;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    iget v0, p2, Lbcj;->r:I

    invoke-static {v0}, Ler;->o(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Lbcj;->b:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p2, Lbcj;->c:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p2, Lbcj;->d:Laxh;

    invoke-static {v0}, Laxh;->c(Laxh;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1, v0}, Lare;->c(I[B)V

    :goto_2
    iget-object v0, p2, Lbcj;->e:Laxh;

    invoke-static {v0}, Laxh;->c(Laxh;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1, v0}, Lare;->c(I[B)V

    :goto_3
    iget-wide v0, p2, Lbcj;->f:J

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Lbcj;->g:J

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Lbcj;->h:J

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget v0, p2, Lbcj;->j:I

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget v0, p2, Lbcj;->s:I

    invoke-static {v0}, Ler;->l(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Lbcj;->k:J

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Lbcj;->l:J

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Lbcj;->m:J

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Lbcj;->n:J

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-boolean v0, p2, Lbcj;->o:Z

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget v0, p2, Lbcj;->t:I

    invoke-static {v0}, Ler;->n(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget v0, p2, Lbcj;->p:I

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget v0, p2, Lbcj;->q:I

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Lbcj;->i:Laxf;

    const/16 v1, 0x1b

    const/16 v2, 0x1a

    const/16 v3, 0x19

    const/16 v4, 0x18

    const/16 v5, 0x17

    const/16 v6, 0x16

    const/16 v7, 0x15

    const/16 v8, 0x14

    if-eqz v0, :cond_4

    iget v9, v0, Laxf;->i:I

    invoke-static {v9}, Ler;->m(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {p1, v8, v9, v10}, Lare;->e(IJ)V

    iget-boolean v8, v0, Laxf;->b:Z

    int-to-long v8, v8

    invoke-virtual {p1, v7, v8, v9}, Lare;->e(IJ)V

    iget-boolean v7, v0, Laxf;->c:Z

    int-to-long v7, v7

    invoke-virtual {p1, v6, v7, v8}, Lare;->e(IJ)V

    iget-boolean v6, v0, Laxf;->d:Z

    int-to-long v6, v6

    invoke-virtual {p1, v5, v6, v7}, Lare;->e(IJ)V

    iget-boolean v5, v0, Laxf;->e:Z

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Lare;->e(IJ)V

    iget-wide v4, v0, Laxf;->f:J

    invoke-virtual {p1, v3, v4, v5}, Lare;->e(IJ)V

    iget-wide v3, v0, Laxf;->g:J

    invoke-virtual {p1, v2, v3, v4}, Lare;->e(IJ)V

    iget-object v0, v0, Laxf;->h:Ljava/util/Set;

    invoke-static {v0}, Ler;->k(Ljava/util/Set;)[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lare;->c(I[B)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v8}, Lare;->f(I)V

    invoke-virtual {p1, v7}, Lare;->f(I)V

    invoke-virtual {p1, v6}, Lare;->f(I)V

    invoke-virtual {p1, v5}, Lare;->f(I)V

    invoke-virtual {p1, v4}, Lare;->f(I)V

    invoke-virtual {p1, v3}, Lare;->f(I)V

    invoke-virtual {p1, v2}, Lare;->f(I)V

    invoke-virtual {p1, v1}, Lare;->f(I)V

    :goto_4
    iget-object p2, p2, Lbcj;->a:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-virtual {p1, v0, p2}, Lare;->g(ILjava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object v0
.end method
