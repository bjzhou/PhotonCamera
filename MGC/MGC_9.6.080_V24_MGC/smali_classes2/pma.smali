.class public final Lpma;
.super Lpmm;
.source "PG"


# instance fields
.field public final a:Lpmk;

.field public final b:Lpck;

.field public final c:J

.field public final d:I

.field public final e:Lpic;


# direct methods
.method public constructor <init>(Lphj;Lpnx;Lpmk;IZ)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, p1}, Lpuq;->aZ(ILpck;)J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lpma;->a:Lpmk;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpma;->b:Lpck;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-direct {p1, p4}, Lpic;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p1, p0, Lpma;->e:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-wide p1, p0, Lpma;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p2, p3, Lpmk;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1, p2, p5}, Lpmm;-><init>(Lphj;Lpnx;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lphj;->d:Lpck;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iput p4, p0, Lpma;->d:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpma;->a:Lpmk;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget p0, p0, Lpmk;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lpck;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lpma;->b:Lpck;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(Landroid/view/Surface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->hPRxtf:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final g()J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p0, Lpma;->c:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const v0, 0xe

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()Landroid/view/Surface;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpma;->a:Lpmk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpmk;->b:Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()Lphm;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    sget-object p0, Lphm;->a:Lphm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final j()Lryb;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpma;->a:Lpmk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpmk;->c:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lphj;->l:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpma;->h:Lphj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
