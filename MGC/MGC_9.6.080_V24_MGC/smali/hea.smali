.class public final synthetic Lhea;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lhea;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lhea;->c:I

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

    nop

    :goto_3
    iput-object p1, p0, Lhea;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x16

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

    :goto_5
    invoke-static {p1, v3, v1, v2}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_6
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Left;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lhdq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "UPDATE HardwareHelpDialogCounts SET rebootCount = rebootCount+1 WHERE reason=? AND impressionsBeforeReboot > ?"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lhdm;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, p0, p1, v1}, Lhdq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, v0}, Lhdo;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lhdn;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_17
    invoke-static {p0, v1, v3, p1}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lhdm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    new-instance p1, Lhdo;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Left;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    :goto_20
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Lhea;->c:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    nop

    :goto_23
    iget v0, p0, Lhea;->a:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lhea;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    invoke-direct {p1, v0}, Lhdm;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lhea;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_28
    iget-object p1, p0, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    :goto_2a
    check-cast p1, Lfdn;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget p0, p0, Lhea;->a:I

    nop

    :try_start_0
    check-cast v0, Lhee;

    nop

    nop

    invoke-virtual {v0}, Lhee;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    int-to-long v2, v0

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1, v2, v3}, Lehv;->e(IJ)V

    const/4 v0, 0x2

    nop

    nop

    nop

    int-to-long v1, p0

    nop

    invoke-interface {p1, v0, v1, v2}, Lehv;->e(IJ)V

    invoke-interface {p1}, Lehv;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop
.end method
