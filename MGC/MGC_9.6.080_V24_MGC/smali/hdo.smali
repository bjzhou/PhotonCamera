.class public final synthetic Lhdo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lhdo;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lhdo;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    int-to-long v1, p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Lehv;->e(IJ)V

    const-string p0, "errorCode"

    nop

    nop

    invoke-static {p1, p0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result p0

    nop

    nop

    const-string v0, "failuresBeforeReboot"

    nop

    nop

    nop

    invoke-static {p1, v0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v0

    nop

    const-string v1, "failuresAfterReboot"

    nop

    nop

    invoke-static {p1, v1}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    const-string v2, "rebootCount"

    nop

    nop

    nop

    nop

    invoke-static {p1, v2}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v2

    nop

    nop

    const-string v3, "lastFailureTimestamp"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v3}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lehv;->k()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    nop

    nop

    invoke-interface {p1, p0}, Lehv;->b(I)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    long-to-int p0, v4

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lhdm;

    nop

    invoke-direct {v4, p0}, Lhdm;-><init>(I)V

    invoke-interface {p1, v0}, Lehv;->b(I)J

    move-result-wide v5

    nop

    long-to-int p0, v5

    nop

    iput p0, v4, Lhdm;->b:I

    nop

    nop

    invoke-interface {p1, v1}, Lehv;->b(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    long-to-int p0, v0

    nop

    nop

    nop

    iput p0, v4, Lhdm;->c:I

    nop

    nop

    invoke-interface {p1, v2}, Lehv;->b(I)J

    move-result-wide v0

    nop

    long-to-int p0, v0

    nop

    nop

    nop

    nop

    iput p0, v4, Lhdm;->d:I

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lehv;->b(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, v4, Lhdm;->e:J

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v4

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "SELECT * FROM EnumerationErrorCounts WHERE errorCode = ?"

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
