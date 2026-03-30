.class public final Lkfr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjc;


# instance fields
.field public final a:Ltlk;

.field public final b:Ltlk;

.field public final c:Ltlk;

.field public final d:Ltlk;

.field private final e:Lkjc;

.field private final f:Ltlk;


# direct methods
.method public constructor <init>(Lpqk;Lkjc;)V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, v4, v0}, Lpqb;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Lpqb;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    const-string v0, "/gca/moments/hdr_finish_count"

    nop

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "/gca/moments/hdr_processing_time_ms"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    const-string v1, "/gca/moments/hdr_launch_count"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    aput-object v2, v1, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lkfr;->d:Ltlk;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lkfr;->f:Ltlk;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    iput-object v0, p0, Lkfr;->c:Ltlk;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    new-array p2, p2, [Lpqb;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0, p2}, Lpqk;->c(Ljava/lang/String;[Lpqb;)Ltlk;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iput-object v0, p0, Lkfr;->b:Ltlk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0, v2}, Lpqk;->b(Ljava/lang/String;[Lpqb;)Ltlk;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0, v2}, Lpqk;->b(Ljava/lang/String;[Lpqb;)Ltlk;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-array v0, p2, [Lpqb;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    const-class v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v3, Lpqb;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0, v1}, Lpqk;->c(Ljava/lang/String;[Lpqb;)Ltlk;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aput-object v3, v2, p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "/gca/moments/hdr_images_closed_count"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-class v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v2, v4, v0}, Lpqb;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_b

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-array v2, p2, [Lpqb;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    new-array v1, v1, [Lpqb;

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

    :goto_24
    new-array v2, v1, [Lpqb;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

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

    :goto_26
    iput-object v0, p0, Lkfr;->a:Ltlk;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_27
    const-string v0, "/gca/moments/hdr_result_open_ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v1, v0}, Lpqk;->b(Ljava/lang/String;[Lpqb;)Ltlk;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    const-string v4, "result"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object p2, p0, Lkfr;->e:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-interface {p0}, Lkjc;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkfr;->e:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpge;Lkmq;Lkjj;Lkjb;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ltlk;->f([Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-interface {p4, p1, p2, p3, v2}, Lkjc;->b(Lpge;Lkmq;Lkjj;Lkjb;)V

    goto/32 :goto_c

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lkfr;->f:Ltlk;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    new-instance v2, Lkfq;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, p0, v0, v1, p4}, Lkfq;-><init>(Lkfr;JLkjb;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iget-object p4, p0, Lkfr;->e:Lkjc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    new-array p1, p1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(Lpge;Llgc;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop
.end method
