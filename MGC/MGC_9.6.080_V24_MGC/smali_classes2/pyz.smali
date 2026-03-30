.class public final synthetic Lpyz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:Lpzi;

.field public final synthetic b:Lpwn;

.field public final synthetic c:Lpwl;

.field public final synthetic d:Lpwz;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lpzi;ILpwn;Lpwl;Lpwz;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p4, p0, Lpyz;->c:Lpwl;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lpyz;->d:Lpwz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lpyz;->b:Lpwn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpyz;->a:Lpzi;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Lpyz;->e:I

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-object v3, p0, Lpyz;->c:Lpwl;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    goto :goto_10

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    invoke-virtual/range {v1 .. v6}, Lpzi;->p(Lpwn;Lpwl;Lpwz;J)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iget-wide v5, v2, Lpwn;->l:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lpyz;->b:Lpwn;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    goto :goto_1a

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    iget-object v4, p0, Lpyz;->d:Lpwz;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lpyz;->a:Lpzi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_17
    iget p1, p0, Lpyz;->e:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const v1, 0x16

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
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method
