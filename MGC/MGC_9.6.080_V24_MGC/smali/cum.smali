.class final Lcum;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcse;


# instance fields
.field public a:Lbzy;

.field public b:I

.field public c:Lbtg;

.field public d:Lbtg;

.field public e:Z

.field final synthetic f:Lcun;


# direct methods
.method public constructor <init>(Lcun;Lbzy;ILbtg;Lbtg;Z)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iput-boolean p6, p0, Lcum;->e:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lcum;->d:Lbtg;

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

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p4, p0, Lcum;->c:Lbtg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcum;->a:Lbzy;

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

    :goto_6
    iput p3, p0, Lcum;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lcum;->f:Lcun;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    iget v1, p0, Lcum;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcum;->d:Lbtg;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcum;->c:Lbtg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Lbzx;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-object p0, p0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p0}, Lcuq;->a(Lbzx;Lbzx;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    add-int/2addr p1, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

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

    :goto_15
    iget-object v0, v0, Lbtg;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    aget-object p1, v0, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lbzx;

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
