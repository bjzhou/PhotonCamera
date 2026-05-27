.class final Ldlp;
.super Lapn;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Lapn;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Larf;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ldlu;

    iget-wide v0, p2, Ldlu;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Ldlu;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_0
    iget-wide v0, p2, Ldlu;->c:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Ldlu;->d:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Ldlu;->e:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Ldlu;->f:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Ldlu;->g:J

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Ldlu;->h:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p2, Ldlu;->i:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_2
    iget-wide v0, p2, Ldlu;->j:J

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-boolean v0, p2, Ldlu;->k:Z

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-boolean v0, p2, Ldlu;->l:Z

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Ldlu;->a:J

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v0, v1}, Lare;->e(IJ)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `shots` SET `shot_id` = ?,`title` = ?,`start_millis` = ?,`persisted_millis` = ?,`canceled_millis` = ?,`deleted_millis` = ?,`most_recent_event_millis` = ?,`capture_session_type` = ?,`capture_session_shot_id` = ?,`pid` = ?,`stuck` = ?,`failed` = ? WHERE `shot_id` = ?"

    return-object v0
.end method
