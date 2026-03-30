.class public final Lerr;
.super Ldwx;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lese;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public e:Z

.field private final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    sput-object v0, Lerr;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "WorkContinuationImpl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>(Lese;Ljava/util/List;)V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lerr;->b:Lese;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lerr;->d:Ljava/util/List;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    :goto_a
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lerr;->c:Ljava/util/List;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    if-lt p1, v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_10
    iget-object v1, p0, Lerr;->f:Ljava/util/List;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v0}, Ldwx;-><init>([B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_20

    nop

    nop

    :goto_13
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x15

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_1e
    iput-object p1, p0, Lerr;->f:Ljava/util/List;

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

    nop

    :goto_1f
    invoke-virtual {v0}, Lhdu;->p()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p1, p0, Lerr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lhdu;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
