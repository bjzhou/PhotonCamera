.class public final Lkqw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksk;


# instance fields
.field public final a:Llpw;

.field public final b:Lpsf;

.field public final synthetic c:Lkqx;


# direct methods
.method public constructor <init>(Lkqx;Llxa;)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Llvs;->g()Llqc;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "dng"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Llxg;->i()Lpsk;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p0, "ORIGINAL"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Llqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "Camera"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lkqw;->a:Llpw;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v2, p2, v0, v1}, Lpsk;->d(ILpti;Ljava/lang/String;Ljava/lang/String;)Lpsf;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lkqw;->b:Lpsf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    invoke-direct {p1, p2}, Llqu;-><init>(Llxa;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    sget-object p2, Lpti;->a:Lpti;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1, p0}, Lpsf;->h(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p2}, Llxa;->i()Llxg;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1}, Llqc;->a(Llqe;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Lkqw;->c:Lkqx;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Llwf;->b:Llvs;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    check-cast v0, Llwf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xe

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lsui;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const-string p1, "Should not call RawModeImageSaver.addFullSizeImage()"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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
