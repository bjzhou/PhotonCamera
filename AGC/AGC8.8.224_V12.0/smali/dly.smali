.class final Ldly;
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

    check-cast p2, Ldma;

    iget v0, p2, Ldma;->a:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Ldma;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-wide v0, p2, Ldma;->c:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lare;->e(IJ)V

    iget-object v0, p2, Ldma;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lare;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    :goto_0
    iget p2, p2, Ldma;->a:I

    int-to-long v0, p2

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0, v1}, Lare;->e(IJ)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `shot_log` SET `sequence` = ?,`shot_id` = ?,`time_millis` = ?,`message` = ? WHERE `sequence` = ?"

    return-object v0
.end method
