.class public final synthetic Lpyt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:Lpzi;

.field public final synthetic b:Lpwn;

.field public final synthetic c:Lpwl;

.field public final synthetic d:Lpwz;

.field public final synthetic e:J

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lpzi;ILpwn;Lpwl;Lpwz;J)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lpyt;->f:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpyt;->a:Lpzi;

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
    iput-object p4, p0, Lpyt;->c:Lpwl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lpyt;->b:Lpwn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Lpyt;->d:Lpwz;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iput-wide p6, p0, Lpyt;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Lpyt;->c:Lpwl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto :goto_14

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-virtual/range {v1 .. v6}, Lpzi;->p(Lpwn;Lpwl;Lpwz;J)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Lpyt;->d:Lpwz;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    iget p1, p0, Lpyt;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    sget-object p0, Lsue;->a:Lsui;

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    iget-wide v5, p0, Lpyt;->e:J

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_18
    iget-object v2, p0, Lpyt;->b:Lpwn;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lpyt;->a:Lpzi;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method
