.class final Laug;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:I

.field public d:Lubo;

.field final synthetic e:Lauh;


# direct methods
.method public constructor <init>(Lauh;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Laug;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p3, p0, Laug;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Laug;->e:Lauh;

    nop

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

    :goto_4
    iput p2, p0, Laug;->c:I

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lubo;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Laug;->e:Lauh;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lbvr;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object v0, p0, Laug;->d:Lubo;

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

    :goto_6
    invoke-direct {v1, v0, p0}, Lauf;-><init>(Lauh;Laug;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v2, 0x53af4291

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    iput-object v0, p0, Laug;->d:Lubo;

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v1, 0x8

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_12
    invoke-direct {v0, v2, v3, v1}, Lbvr;-><init>(IZLjava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lauf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
